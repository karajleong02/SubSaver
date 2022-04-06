#include "draw.h"
#include <stdlib.h>
#include "hw03Lib.h"
#include "text.h"


//draws submarine
void drawSub(int x, int y) {
    //body
    drawRect(x+2, y+11, 1, 2, YELLOW);
    drawRect(x+3, y+10, 1, 3, YELLOW);
    drawRect(x+4, y+8, 3, 7, YELLOW);
    drawRect(x+7, y+7, 2, 9, YELLOW);
    drawRect(x+9, y+5, 14, 13, YELLOW);
    drawRect(x+23, y+6, 2, 11, YELLOW);
    drawRect(x+25, y+7, 1, 9, YELLOW);
    //windows
    drawRect(x+9, y+10, 3, 3, CYAN);
    drawRect(x+15, y+10, 3, 3, CYAN);
    drawRect(x+21, y+10, 3, 3, CYAN);
    //propeller
    setPixel(x, y+8, GRAY);
    setPixel(x, y+15, GRAY);
    drawRect(x, y+9, 2, 2, GRAY);
    drawRect(x, y+13, 2, 2, GRAY);
    //top
    drawRect(x+14, y+4, 7, 1, YELLOW);
    drawRect(x+18, y+2, 2, 2, YELLOW);
    drawRect(x+18, y, 3, 2, YELLOW);
    drawRect(x+21, y, 1, 2, CYAN);
    //head
    drawRect(x+26, y+7, 1, 9, RED);
    drawRect(x+27, y+8, 2, 7, RED);
    drawRect(x+29, y+9, 1, 5, RED);
}

//draws water bottle
void drawBottle(int x, int y) {
    drawRect(x+2, y, 2, 2, RED);
    drawRect(x+1, y+2, 4, 1, CLEAR);
    drawRect(x, y+3, 6, 12, CLEAR);
    drawRect(x, y+6, 6, 3, RED);
}

//draws fish
void drawFish(int x, int y) {
    //body
    drawRect(x, y+3, 1, 2, PURPLE);
    drawRect(x+1, y+2, 1, 4, PURPLE);
    drawRect(x+2, y+1, 2, 6, PURPLE);
    drawRect(x+4, y, 3, 8, PURPLE);
    drawRect(x+7, y+1, 2, 6, PURPLE);
    drawRect(x+9, y+2, 1, 4, PURPLE);
    drawRect(x+10, y+1, 1, 6, PURPLE);
    drawRect(x+11, y, 1, 8, PURPLE);
    //eye
    drawRect(x+2, y+3, 2, 2, WHITE);
    setPixel(x+2, y+3, BLACK);
}

//erases submarine
void eraseSub(int x, int y) {
    //body
    drawRect(x+2, y+11, 1, 2, BLUE);
    drawRect(x+3, y+10, 1, 3, BLUE);
    drawRect(x+4, y+8, 3, 7, BLUE);
    drawRect(x+7, y+7, 2, 9, BLUE);
    drawRect(x+9, y+5, 14, 13, BLUE);
    drawRect(x+23, y+6, 2, 11, BLUE);
    drawRect(x+25, y+7, 1, 9, BLUE);

    //propeller
    setPixel(x, y+8, BLUE);
    setPixel(x, y+15, BLUE);
    drawRect(x, y+9, 2, 2, BLUE);
    drawRect(x, y+13, 2, 2, BLUE);
    //top
    drawRect(x+14, y+4, 7, 1, BLUE);
    drawRect(x+18, y+2, 2, 2, BLUE);
    drawRect(x+18, y, 3, 2, BLUE);
    drawRect(x+21, y, 1, 2, BLUE);
    //head
    drawRect(x+26, y+7, 1, 9, BLUE);
    drawRect(x+27, y+8, 2, 7, BLUE);
    drawRect(x+29, y+9, 1, 5, BLUE);
}

//erases water bottle
void eraseBottle(int x, int y) {
    drawRect(x+2, y, 2, 2, BLUE);
    drawRect(x+1, y+2, 4, 1, BLUE);
    drawRect(x, y+3, 6, 12, BLUE);
    drawRect(x, y+6, 6, 3, BLUE);
}
//erases fish
void eraseFish(int x, int y) {
    drawRect(x, y+3, 1, 2, BLUE);
    drawRect(x+1, y+2, 1, 4, BLUE);
    drawRect(x+2, y+1, 2, 6, BLUE);
    drawRect(x+4, y, 3, 8, BLUE);
    drawRect(x+7, y+1, 2, 6, BLUE);
    drawRect(x+9, y+2, 1, 4, BLUE);
    drawRect(x+10, y+1, 1, 6, BLUE);
    drawRect(x+11, y, 1, 8, BLUE);

}
//draws coral for screens
void drawCoral(int x, int y, unsigned short color) {
    drawRect(x, y, 2, 23, color);
    drawRect(x+2, y-1, 3, 24, color);
    drawRect(x+5, y+5, 1, 18, color);
    drawRect(x+6, y+3, 1, 20, color);
    drawRect(x+7, y-17, 6, 40, color);
    drawRect(x+13, y-3, 1, 26, color);
    drawRect(x+14, y+9, 1, 14, color);
    drawRect(x+15, y+6, 2, 17, color);
    drawRect(x+17, y-6, 5, 29, color);
    drawRect(x+22, y+1, 2, 22, color);
}
//draws reef for screens
void drawReef(int x, int y) {
    drawRect(x, y, 11, 25, PINK);
    drawRect(x+11, y+2, 6, 23, PINK);
    drawRect(x+14, y+3, 3, 22, PINK);
    drawRect(x+17, y+5, 2, 20, PINK);
    drawRect(x+19, y+6, 3, 19, PINK);
    drawRect(x+22, y+7, 2, 18, PINK);
    drawRect(x+24, y+8, 2, 17, PINK);
    drawRect(x+26, y+10, 1, 15, PINK);
    drawRect(x+27, y+11, 3, 14, PINK);
    drawRect(x+30, y+13, 2, 12, PINK);
    drawRect(x+32, y+14, 2, 11, PINK);
    drawRect(x+34, y+16, 1, 9, PINK);
    drawRect(x+32, y+18, 2, 7, PINK);
    drawRect(x+34, y+18, 3, 7, PINK);
    drawRect(x+37, y+20, 2, 5, PINK);
}
//draws start screen
void drawStartScreen() {
    fillScreen(BLUE);
    drawRect(0, 130, 240, 30, SAND);
    drawReef(0, 105);
    drawCoral(210, 107, ORANGE);
    drawString(96, 55, "SUBSAVER", WHITE);
    drawString(60, 138, "press select to play", WHITE);
    drawSub(105, 70);
}
//draws game screen
void drawGameScreen() {
    fillScreen(BLUE);
    drawRect(0, 145, 240, 20, SAND);
}
//draws pause screen
void drawPauseScreen() {
    fillScreen(BLUE);
    drawCoral(15, 130, ORANGE);
    drawCoral(205, 125, ORANGE);
    drawRect(0, 140, 240, 20, SAND);
    drawString(102, 80, "PAUSED", WHITE);
}
//draws lose screen
void drawLoseScreen() {
    fillScreen(BLUE);
    drawCoral(15, 130, MAGENTA);
    drawCoral(205, 125, MAGENTA);
    drawRect(0, 140, 240, 20, SAND);
    drawString(87, 80, "You Lost :(", WHITE);
    drawBottle(117, 95);
}
//draws win screen
void drawWinScreen() {
    fillScreen(BLUE);
    drawCoral(15, 130, GREEN);
    drawCoral(205, 125, GREEN);
    drawRect(0, 140, 240, 20, SAND);
    drawString(100, 80, "You Won!", WHITE);
    drawFish(114,95);
}