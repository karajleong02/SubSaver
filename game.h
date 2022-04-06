
// Player/Submarine Struct
typedef struct {
	int row;
	int col;
	int oldRow;
	int oldCol;
	int rdel;
	int height;
	int width;
	int bulletTimer;
} PLAYER;

// Bullet Struct
typedef struct {
	int row;
	int col;
	int oldRow;
	int oldCol;
	int cdel;
	int height;
	int width;
	unsigned short color;
	int active;
	int erased;
} BULLET;


// Bottle Struct
typedef struct {
	int row;
	int col;
	int oldRow;
	int oldCol;
	int rdel;
	int cdel;
	int height;
	int width;
	int floating;
	int active;
	int erased;
} BOTTLE;

// Fish Struct
typedef struct {
	int row;
	int col;
	int oldRow;
	int oldCol;
	int rdel;
	int cdel;
	int height;
	int width;
	int active;
	int erased;
} FISH;

// Constants
#define BULLETCOUNT 5
#define BOTTLECOUNT 6
#define FISHCOUNT 3

// Variables
extern PLAYER submarine;
extern BULLET bullets[BULLETCOUNT];
extern BOTTLE bottles[BOTTLECOUNT];
extern int bottlesRemaining;
extern int fishRemaining;

// Prototypes
void initGame();
void updateGame();
void drawGame();

void initSubmarine();
void updateSubmarine();
void drawSubmarine();

void initBullet();
void fireBullet();
void updateBullet();
void drawBullet();

void initBottles();
void updateBottles(BOTTLE*);
void drawBottles(BOTTLE*);

void initFishy();
void updateFishy();
void drawFishy();