# 1 "text.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "text.c"
# 1 "hw03Lib.h" 1




typedef unsigned short u16;
# 25 "hw03Lib.h"
extern volatile unsigned short *videoBuffer;
# 43 "hw03Lib.h"
void setPixel(int col, int row, unsigned short color);
void drawRect(int col, int row, int width, int height, unsigned short color);
void fillScreen(unsigned short color);


void waitForVBlank();
# 68 "hw03Lib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 78 "hw03Lib.h"
int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 2 "text.c" 2
# 1 "text.h" 1

void drawChar(int col, int row, char ch, unsigned short color);
void drawString(int col, int row, char *str, unsigned short color);
# 3 "text.c" 2
# 1 "font.h" 1

extern const unsigned char fontdata_6x8[12288];
# 4 "text.c" 2


void drawChar(int col, int row, char ch, unsigned short color) {
    for (int h = 0; h < 8; h++) {
        for (int w = 0; w < 6; w++) {
            if(fontdata_6x8[48*ch + w + 6 * h]) {
                setPixel(col + w, row + h, color);
            }
        }
    }
}


void drawString(int col, int row, char *str, unsigned short color) {
    while (!*str == '\0') {
        drawChar(col, row, *str, color);
        str++;
        col += 6;
    }
}
