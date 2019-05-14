// loadjpeg.c

// jpeg wrapper for BlitzMax libjpeg

#include <stdio.h>
#include <stdlib.h>
#include <setjmp.h>
#include <jpeglib.h>

struct error_manager {
	struct jpeg_error_mgr mgr;
	jmp_buf jmp_env;
};

static void format_message (j_common_ptr cinfo, char * buffer) {}
static void output_message (j_common_ptr cinfo) {}
static void emit_message (j_common_ptr cinfo, int msg_level) {}

static void error_exit (j_common_ptr cinfo){
	struct error_manager * manager = (struct error_manager*) cinfo->err;

	longjmp( manager->jmp_env,-1 );
}

static void reset_error_mgr (j_common_ptr cinfo) {
	cinfo->err->num_warnings=0;cinfo->err->msg_code = 0;
}

int (*ReadStream)(void*,int,void*);
int (*WriteStream)(const void*,int,void*);

void initjerr(struct jpeg_error_mgr *jerr)
{
	jerr->error_exit = error_exit;
	jerr->emit_message = emit_message;
	jerr->output_message = output_message;
	jerr->format_message = format_message;
	jerr->reset_error_mgr = reset_error_mgr;
	jerr->trace_level = 0;		// default = no tracing 
	jerr->num_warnings = 0;	// no warnings emitted yet 
	jerr->msg_code = 0;		// may be useful as a flag for "no error" 
// Initialize message table pointers 
	jerr->jpeg_message_table = NULL;		//jpeg_std_message_table;
	jerr->last_jpeg_message = 0;		//(int) JMSG_LASTMSGCODE - 1;
//	jerr->jpeg_message_table = jpeg_std_message_table;
//	jerr->last_jpeg_message = (int) JMSG_LASTMSGCODE - 1;
	jerr->addon_message_table = NULL;
	jerr->first_addon_message = 0;	// for safety 
	jerr->last_addon_message = 0;
}

int loadjpg(void *stream,void *readfunc,int *width,int *height,int *channels,char **pix)
{
	int		size,w,h,d,span,res;
	char	*p;

	struct jpeg_decompress_struct cinfo;
	struct error_manager jerr;
	
	ReadStream=readfunc;
		
	initjerr(&jerr.mgr);
	cinfo.err=&jerr.mgr;	
	
	jpeg_create_decompress(&cinfo);
	jpeg_stdio_src(&cinfo,(FILE*)stream);
	
	if( setjmp( jerr.jmp_env ) ){
		jpeg_destroy_decompress( &cinfo );
		return -1;
	}
	
	res=jpeg_read_header(&cinfo,TRUE);
	if (res!=1){
		jpeg_destroy_decompress( &cinfo );
		return -1;
	}

	jpeg_start_decompress(&cinfo);
	
	*width=w=cinfo.output_width;
	*height=h=cinfo.output_height;
	*channels=d=cinfo.output_components;
	p=(char*)malloc(w*h*d);
	*pix=p;
	if (p)
	{
		span=w*d;
		while (h--)
		{
			jpeg_read_scanlines(&cinfo,(JSAMPARRAY)&p,1);
			p+=span;
		}
	}
	jpeg_finish_decompress(&cinfo);	
	jpeg_destroy_decompress(&cinfo);

	return 0;
}

int savejpg(void *stream,void *writefunc,int width,int height,int pitch,char *pix,int qlty){
	int y;

	struct jpeg_compress_struct	ccinfo;
	struct error_manager jerr;
	
	WriteStream=writefunc;

	initjerr(&jerr.mgr);
	ccinfo.err=&jerr.mgr;	

	jpeg_create_compress(&ccinfo);
	jpeg_stdio_dest(&ccinfo,(FILE*)stream);	//(_iobuf*)out);
	
	if( setjmp(jerr.jmp_env) ){return 1;}

	ccinfo.image_width=width;				//* image width and height, in pixels
	ccinfo.image_height=height;
	ccinfo.input_components=3;				// # of color components per pixel
	ccinfo.in_color_space=JCS_RGB;			// colorspace of input image
	jpeg_set_defaults(&ccinfo);
	jpeg_set_quality(&ccinfo,qlty,TRUE);
	jpeg_start_compress(&ccinfo,TRUE);

	for (y=0;y<height;y++){
		jpeg_write_scanlines(&ccinfo,&pix,1);
		pix+=pitch;
	}

	jpeg_finish_compress(&ccinfo);
	jpeg_destroy_compress(&ccinfo);
	return 0;
}
