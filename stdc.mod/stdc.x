int getchar_()
int puts_( BBSTRING )
int putenv_( BBSTRING )
BBSTRING getenv_( BBSTRING )
FILE* fopen_( BBSTRING, BBSTRING )
int fclose( FILE* ) !
int fread( void* , size_t, int, FILE* ) !
int fwrite( void* ,size_t, int, FILE* ) !
int fflush( FILE* ) !
int fseek( FILE*, int , int ) !
int ftell( FILE* ) !
int feof( FILE* ) !
int fgetc( FILE* ) !
int ungetc( int,FILE* ) !
int fputs_( BBSTRING,FILE* )

int chdir_( BBSTRING )
BBSTRING getcwd_()
int chmod_( BBSTRING,int )
int mkdir_( BBSTRING,int )
int rmdir_( BBSTRING )
int rename_( BBSTRING, BBSTRING )
void remove_( BBSTRING )
int opendir_( BBSTRING )
int closedir_( int )
BBSTRING readdir_( int )
int stat_( BBSTRING,int *,int *,int *,int * )
int system_( BBSTRING )

void abort() !
void * malloc( size_t ) !
void * realloc( void * , size_t ) !
void free( void * ) !
void exit( int ) !
int atexit(void (*)() ) !

void * memset( void * , int ,size_t ) !
int memcmp( void * , void * , size_t ) !
void * memcpy( void * , void * , size_t ) !
void * memmove( void * , void * , size_t ) !

int htons_( int )
int ntohs_( int )
int htonl_( int )
int ntohl_( int )
int socket_( int ,int ,int  )
void closesocket_( int )
int bind_( int ,int ,int )
char * gethostbyaddr_( void *,int ,int )

char ** gethostbyname_( BBSTRING *,int *,int * )

int connect_( int ,const char *,int ,int ,int  )
int listen_( int ,int  )
int accept_( int ,const char *,unsigned int * )
int select_( int ,int *,int ,int *,int ,int *,int )
int send_( int ,const char *,int ,int  )
int sendto_( int ,const char *,int ,int ,int ,int )
int recv_( int ,char *,int ,int  )
int recvfrom_( int ,char *,int ,int ,int *,int *)
int setsockopt_( int ,int ,int ,const void *,int )
int getsockopt_( int ,int ,int ,void *,int *)
int shutdown_( int ,int  )
int getsockname_( int ,void *,int * )
int getpeername_( int ,void *,int * )

void time_( void * )
void *localtime_( void * )
int strftime_( char *,int ,BBSTRING ,void * )
