
#include <ft2build.h>
#include FT_FREETYPE_H

int bmx_freetype_Face_numglyphs(FT_Face ft_face) {
	return ft_face->num_glyphs;
}

FT_GlyphSlot bmx_freetype_Face_glyph(FT_Face ft_face) {
	return ft_face->glyph;
}

FT_Size bmx_freetype_Face_size(FT_Face ft_face) {
	return ft_face->size;
}

int bmx_freetype_Size_height(FT_Size size) {
	return size->metrics.height;
}

int bmx_freetype_Size_ascend(FT_Size size) {
	return size->metrics.ascender;
}

int bmx_freetype_Size_descend(FT_Size size) {
	return size->metrics.descender;
}

int bmx_freetype_Slot_bitmapleft(FT_GlyphSlot slot) {
	return slot->bitmap_left;
}

int bmx_freetype_Slot_bitmaptop(FT_GlyphSlot slot) {
	return slot->bitmap_top;
}

int bmx_freetype_Slot_bitmap_width(FT_GlyphSlot slot) {
	return slot->bitmap.width;
}

int bmx_freetype_Slot_bitmap_rows(FT_GlyphSlot slot) {
	return slot->bitmap.rows;
}

int bmx_freetype_Slot_bitmap_pitch(FT_GlyphSlot slot) {
	return slot->bitmap.pitch;
}

int bmx_freetype_Slot_bitmap_numgreys(FT_GlyphSlot slot) {
	return slot->bitmap.num_grays;
}

int bmx_freetype_Slot_advance_x(FT_GlyphSlot slot) {
	return slot->advance.x;
}

unsigned char * bmx_freetype_Slot_bitmap_buffer(FT_GlyphSlot slot) {
	return slot->bitmap.buffer;
}

