void setup(){
size(800, 600);  // Ukuran canvas
background(0);  // Latar belakang hitam
noStroke();// Tidak ada kontur
noLoop(); // Tidak ada perulangan(agar gambar statis)

// Membuat bintang-bintang acak
for (int i = 0; i < 1000; i++) {
    float x = random(800);  // Mengubah rentang x ke 800
    float y = random(400);  // Mengubah rentang tinggi bintang
    stroke(255);  // Warna bintang putih
    point(x, y);
    }
}

void draw(){
fill(255); 
ellipse(400, 500, 500, 500);

stroke(255);      // Warna garis putih
strokeWeight(1);  // Ketebalan garis

// Gedung di sebelah kiri
line(60, 470, 60, 400);
line(0, 400, 60, 400);
line(60, 470, 170, 470);

// Gedung di sebelah kanan
line(740, 470, 650, 470);
line(740, 400, 800, 400);
line(740, 470, 740, 400);

stroke(0);      // Warna garis putih
strokeWeight(100);

//gedung 3
strokeCap(SQUARE);
line(200, 600, 200, 500);

//gedung 4
strokeCap(SQUARE);
line(600, 600, 600, 450);


//jendela gedung 1
stroke(255);
strokeWeight(15);
line(15, 430, 15, 450);
line(40, 430, 40, 450);

line(15, 470, 15, 490);
line(40, 470, 40, 490);

line(15, 510, 15, 530);
line(40, 510, 40, 530);

line(15, 550, 15, 570);
line(40, 550, 40, 570);

//jendela gedung 2
line(75, 510, 75, 530);
line(100, 510, 100, 530);
line(125, 510, 125, 530);

line(75, 550, 75, 570);
line(100, 550, 100, 570);
line(125, 550, 125, 570);

//jendela gedung 3
line(175, 510, 175, 530);
line(200, 510, 200, 530);
line(225, 510, 225, 530);

line(175, 550, 175, 570);
line(200, 550, 200, 570);
line(225, 550, 225, 570);

//jendela gedung 4
line(625, 480, 625, 500);
line(600, 480, 600, 500);
line(575, 480, 575, 500);

line(625, 520, 625, 540);
line(600, 520, 600, 540);
line(575, 520, 575, 540);

line(625, 560, 625, 580);
line(600, 560, 600, 580);
line(575, 560, 575, 580);

//jendela gedung 5
line(725, 480, 725, 500);
line(700, 480, 700, 500);
line(675, 480, 675, 500);

line(725, 520, 725, 540);
line(700, 520, 700, 540);
line(675, 520, 675, 540);

line(725, 560, 725, 580);
line(700, 560, 700, 580);
line(675, 560, 675, 580);


//jendela gedung 6
line(785, 430, 785, 450);
line(760, 430, 760, 450);

line(785, 470, 785, 490);
line(760, 470, 760, 490);

line(785, 510, 785, 530);
line(760, 510, 760, 530);

line(785, 550, 785, 570);
line(760, 550, 760, 570);
}
