#include <stdlib.h>
#include "hw03Lib.h"
#include "game.h"
#include "draw.h"

// Variables
PLAYER submarine;
BULLET bullets[BULLETCOUNT];
BOTTLE bottles[BOTTLECOUNT];
FISH fishy;
int bottlesRemaining;
int fishRemaining;

// Initialize the game
void initGame() {
	initSubmarine();
	initBullet();
	initBottles();
	initFishy();
	bottlesRemaining = BOTTLECOUNT;
	fishRemaining = FISHCOUNT;
}

// Updates the game each frame
void updateGame() {
	updateSubmarine();
	for (int i = 0; i < BULLETCOUNT; i++) {
		updateBullet(&bullets[i]);
	}
	for (int i = 0; i < BOTTLECOUNT; i++) {
		updateBottles(&bottles[i]);
	}
	updateFishy();
}

// Draws the game each frame
void drawGame() {
	drawSubmarine();
	drawFishy();
	for (int i = 0; i < BULLETCOUNT; i++) {
		drawBullet(&bullets[i]);
	}
	for (int i = 0; i < BOTTLECOUNT; i++) {
		drawBottles(&bottles[i]);
	}
}
//Initialize the submarine
void initSubmarine() {
	submarine.row = 71;
	submarine.col = 15;
	submarine.oldRow = submarine.row;
	submarine.oldCol = submarine.col;
	submarine.rdel = 1;
	submarine.height = 18;
	submarine.width = 30;
	submarine.bulletTimer = 20;
}

//Handle the frame-changes of the submarine
void updateSubmarine() {
	//move submarine
	if (BUTTON_HELD(BUTTON_UP) && submarine.row >= submarine.rdel) {
		submarine.row -= submarine.rdel;
	} else if (BUTTON_HELD(BUTTON_DOWN) && submarine.row + submarine.height - 1 < SCREENHEIGHT - submarine.rdel) {
		submarine.row += submarine.rdel;
	}
	//shoot bullets
	if (BUTTON_PRESSED(BUTTON_B) && submarine.bulletTimer >= 20) {
 		fireBullet();
		submarine.bulletTimer = 0;
	}

	submarine.bulletTimer++;
}


//Draw submarine
void drawSubmarine() {
	eraseSub(submarine.oldCol, submarine.oldRow);
	drawSub(submarine.col, submarine.row);

	submarine.oldCol = submarine.col;
	submarine.oldRow = submarine.row;
}

// Initialize the pool of bullets
void initBullet() {
	for(int i = 0; i < BULLETCOUNT; i++) {
		bullets[i].height = 1;
		bullets[i].width = 2;
		bullets[i].row = 0 - bullets[i].height;
		bullets[i].col = 0;
		bullets[i].oldRow = submarine.row;
		bullets[i].oldCol = submarine.col;
		bullets[i].cdel = 3;
		bullets[i].color = WHITE;
		bullets[i].active = 0;
	}
}

// Spawn a bullet
void fireBullet() {
	for(int i = 0; i < BULLETCOUNT; i++) {
		if(!bullets[i].active) {
			bullets[i].row = submarine.row + (submarine.height / 2) + (bullets[i].height / 2);
			bullets[i].col = submarine.col+30;
			bullets[i].active = 1;
			bullets[i].erased = 0;
			break;
		}
	}
}

// Handle every-frame actions of a bullet
void updateBullet(BULLET* b) {
	if (b->active) {
		if (b->col + b->width <= 235) {
			b->col += b->cdel;
		} else {
			b->active = 0;
		}	
	}
}

// Draw a bullet
void drawBullet(BULLET* b) {
	if(b->active) {
		drawRect(b->oldCol, b->oldRow, b->width, b->height, BLUE);
		drawRect(b->col, b->row, b->width, b->height, b->color);
	} else if (!b->erased) {
		drawRect(b->oldCol, b->oldRow, b->width, b->height, BLUE);
		b->erased = 1;
	}
	b->oldRow = b->row;
	b->oldCol = b->col;
}

// Initialize all the bottles
void initBottles() {
	for (int i = 0; i < BOTTLECOUNT; i++) {
		bottles[i].row = rand() % 105+25;
		bottles[i].col = rand() % 180 + 50;
		bottles[i].oldRow = bottles[i].row;
		bottles[i].oldCol = bottles[i].col;
		bottles[i].floating = bottles[i].row;
		bottles[i].rdel = 1;
		bottles[i].cdel = 1;
		bottles[i].height = 15;
		bottles[i].width = 6;
		bottles[i].active = 1;
		bottles[i].erased = 0;
	}
}

// Handle every-frame actions of bottles
void updateBottles(BOTTLE* b) {
	if (b->active) {
		//changes position of bottle
		if (b->row - b->floating <= -30 || b->row - b->floating >= 0 || b->row <= 0 || b->row + b->height-1 >= 145)
			b->rdel *= -1;
		b->row += b->rdel;

		//checks for collisions with bullets
		for (int i = 0; i < BULLETCOUNT; i++) {
			if (bullets[i].active && collision(bullets[i].col, bullets[i].row, bullets[i].width, bullets[i].height, b->col, b->row, b->width, b->height)) {
				bullets[i].active = 0;
				b->active = 0;
				bottlesRemaining--;
			}
		}
	}
}

// Draws bottle
void drawBottles(BOTTLE* b) {
	if(b->active) {
		eraseBottle(b->oldCol, b->oldRow);
		drawBottle(b->col, b->row);
	} else if (!b->erased) {
		eraseBottle(b->oldCol, b->oldRow);
		b->erased = 1;
	}
	b->oldRow = b->row;
	b->oldCol = b->col;
}

// Initialize the fish
void initFishy() {
	fishy.row = rand() % 120;
	fishy.col = rand() % 170 + 60;
	fishy.oldRow = fishy.row;
	fishy.oldCol = fishy.col;
	fishy.rdel = 1;
	fishy.cdel = 1;
	fishy.height = 15;
	fishy.width = 6;
	fishy.active = 1;
	fishy.erased = 0;
}

// Handle every-frame actions of fish
void updateFishy() {
	if (fishy.active) {
		//changes position of fish
		if (fishy.row <= 0 || fishy.row + fishy.height-1 >= 140)
			fishy.rdel *= -1;
		if (fishy.col <= 50 || fishy.col + fishy.width >= SCREENWIDTH - 5)
			fishy.cdel *= -1;

		fishy.row += fishy.rdel;
		fishy.col += fishy.cdel;

		//checks for collisions with bullets
		for (int i = 0; i < BULLETCOUNT; i++) {
			if (bullets[i].active && collision(bullets[i].col, bullets[i].row, bullets[i].width, bullets[i].height, fishy.col, fishy.row, fishy.width, fishy.height)) {
				bullets[i].active = 0;
				fishRemaining--;
			}
		}
	}
}

// Draws fish
void drawFishy() {
	if(fishy.active) {
		eraseFish(fishy.oldCol, fishy.oldRow);
		drawFish(fishy.col, fishy.row);
	} 
	fishy.oldRow = fishy.row;
	fishy.oldCol = fishy.col;
}
