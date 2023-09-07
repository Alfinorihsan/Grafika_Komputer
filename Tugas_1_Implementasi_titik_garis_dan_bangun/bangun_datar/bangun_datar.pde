size(900, 600);
background(0, 150, 255);
noLoop();

// Menggambar ikan pertama  - Warna Merah
fill(255, 0, 0);
ellipse(100, 400, 100, 60);
triangle(150, 400, 200, 370, 200, 430);
fill(0);
strokeWeight(10);
point(70, 400);
strokeWeight(1);
line(52, 410, 90, 410);
line(160, 400, 180, 400);

// Menggambar ikan kedua  - Warna Hijau
fill(0, 255, 0);
ellipse(300, 300, 100, 60);
triangle(350, 300, 400, 270, 400, 330);
fill(0);
strokeWeight(10);
point(270, 300);
strokeWeight(1);
line(252, 310, 290, 310);
line(360, 300, 380, 300);

// Menggambar ikan ketiga  - Warna Biru
fill(0, 0, 255);
ellipse(500, 450, 100, 60);
triangle(550, 450, 600, 420, 600, 480);
fill(0);
strokeWeight(10);
point(470, 450);
strokeWeight(1);
line(452, 460, 490, 460);
line(560, 450, 580, 450);

// Menggambar pasir di dasar air
fill(237, 201, 175);
noStroke();
rect(0, 500, 1000, 100);

// Menggambar batu (digabungkan menjadi satu)
stroke(0);
strokeWeight(1);
fill(100);
ellipse(275, 450, 60, 60);
ellipse(250, 500, 60, 60);
ellipse(300, 500, 60, 60);

// Menggambar batu pertama
fill(100);
strokeWeight(1);
circle(100, 500, 60);

// Menggambar batu kedua
fill(100);
strokeWeight(1);
circle(140, 500, 60);

// Menggambar gelembung pertama
strokeWeight(0.5);
fill(255, 255, 255, 150);
circle(200, 250, 40);
circle(195, 245, 20);

// Menggambar gelembung kedua
strokeWeight(0.5);
fill(255, 255, 255, 150);
circle(80, 300, 40);
circle(75, 295, 20);

// Menggambar gelembung ketiga
strokeWeight(0.5);
fill(255, 255, 255, 150);
circle(400, 400, 40);
circle(395, 395, 20);

// Menggambar peti harta karun dengan square
fill(150, 75, 0); 
stroke(255, 200, 0);
strokeWeight(8);
rect(750, 400, 300, 120);

// Menggambar setengah lingkaran
fill(150, 75, 0);
arc(850, 400, 200, 200, PI, TWO_PI);
strokeWeight(0);

fill(150, 75, 0);
strokeWeight(3);
square(835, 390, 20);

// Menggambar segi enam
fill(150, 75, 0);
beginShape();
vertex(830, 410);
vertex(860, 410);
vertex(880, 440);
vertex(860, 470);
vertex(830, 470);
vertex(810, 440);
endShape(CLOSE);
