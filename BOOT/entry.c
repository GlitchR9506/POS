#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
/*
uint16_t* VIDEOMEMORY = (uint16_t*) 0xB8000;

void terminal_putentryat(char c, uint8_t color, size_t x, size_t y, int TERM_WIDTH) 
{
	VIDEOMEMORY[y * TERM_WIDTH + x] = (uint16_t) c | (uint16_t) color << 8;
}
 
void terminal_putchar(char c, uint8_t attrib, size_t x, size_t y, int TERM_WIDTH) 
{
	terminal_putentryat(c, attrib, x, y, TERM_WIDTH);
	//if (++terminal_column == VGA_WIDTH) {
	//	terminal_column = 0;
	//	if (++terminal_row == VGA_HEIGHT)
	//		terminal_row = 0;
	//}
}*/
void terminal_putchar(char* character, uint8_t attrib, uint32_t x, uint32_t y, uint32_t TERM_WIDTH) {
	
	uint16_t* VIDEOMEM = (uint16_t*) 0xB8000;
	
    uint32_t i = 0, j;
    
	while ( character[i] != '\0') {
		j = y*TERM_WIDTH+x;
		j = j;
        VIDEOMEM[j+i] = (uint16_t) character[i] | (uint16_t) attrib << 8;
		i++;
	}
	
}
void kernel_entry() {
	char* text = "This is a Test";
	terminal_putchar(text,57,1,0,80);
	
}