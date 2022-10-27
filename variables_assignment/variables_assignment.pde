int gray= 0;
int hi= 1000;
void setup() { //called once and before draw
size(1000, 1000);
}

void draw() { //repeats
background(#8986CF);
fill(#86A4CF);
square (gray, 0, 200);
gray= gray + 1;
circle (300, hi,  300);
hi= hi-1;
}
