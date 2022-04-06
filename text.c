#include "hw03Lib.h"
#include "text.h"
#include "font.h"

// Draws the specified character at the specified location in Mode 3
void drawChar(int col, int row, char ch, unsigned short color) {
    for (int h = 0; h < 8; h++) {
        for (int w = 0; w < 6; w++) {
            if(fontdata_6x8[48*ch + w + 6 * h]) {
                setPixel(col + w, row + h, color);
            }
        }
    }
}

// Draws the specified string at the specified location in Mode 3
void drawString(int col, int row, char *str, unsigned short color) {
    while (!*str == '\0') {
        drawChar(col, row, *str, color);
        str++;
        col += 6;
    }
}