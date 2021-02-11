#include <stdint.h>

void PRINTSTRING_EX(uint8_t** character, uint8_t attrib, uint32_t loc) {
	
	uint16_t* VIDEOMEM = (uint16_t*) 0xB8000;
	
    uint32_t i, j;
    
	while ( character[i] != (uint8_t)'\0') {
		j = loc;
		j = j*2;
        VIDEOMEM[j+i*2] = (uint16_t) character[i] | (uint16_t) attrib << 8;
		i++;
	}
}