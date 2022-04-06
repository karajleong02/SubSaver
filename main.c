#include <stdlib.h>
#include "hw03Lib.h"
#include "game.h"
#include "text.h"
#include "draw.h"

// Prototypes
void initialize();

// State Prototypes
// TODO 1.2: Add your state and state transition function prototypes here
void goToStart();
void start();
void goToGame();
void game();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();

// States
enum {START, GAME, PAUSE, WIN, LOSE};
int state;


// Button Variables
unsigned short buttons;
unsigned short oldButtons;

// Random Seed
int seed;

int main() {

    initialize();

    while(1) {

        // Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;
                
        // State Machine
        switch (state) {
        case START:
            start();
            break;
        case GAME:
            game();
            break;
        case PAUSE:
            pause();
            break;
        case WIN:
            win();
            break;
        case LOSE:
            lose();
            break;
        }
    }
}

// Sets up GBA
void initialize() {

    REG_DISPCTL = MODE3 | BG2_ENABLE;
    goToStart();
}

void goToStart() {
    drawStartScreen();
    state = START;
}

void start() {
    seed++;
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToGame();
        srand(seed);
        initGame();
    }
}

void goToGame() {
    drawGameScreen();
    state = GAME;
}

void game() {
    updateGame();
    waitForVBlank();
    drawGame();
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToPause();
    }
    if (fishRemaining == 0) {
        goToLose();
    } else if (bottlesRemaining == 0) {
		goToWin();
	}
}

void goToPause() {
    drawPauseScreen();
    state = PAUSE;
}

void pause() {
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToGame();
    }
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}

void goToWin() {
    drawWinScreen();
    state = WIN;
}

void win() {
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    }
}

void goToLose() {
    drawLoseScreen();
    state = LOSE;
}

void lose() {
    if(BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    }
} 



