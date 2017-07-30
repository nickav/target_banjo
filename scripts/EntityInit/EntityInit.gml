// movement
vx = 0;
vy = 0;
// for sub-pixel movement
cx = 0;
cy = 0;

// direction
enum Facing {
	LEFT = -1,
	RIGHT = 1,
	UP = -2,
	DOWN = 2
}
dir = Facing.DOWN;