Star[] stars = new Star[300]; // Jumlah bintang
int period = 80000; // Periode pergerakan planet (milidetik)

void setup() {
  size(1080, 945);
  background(16, 32, 55);

  // Menginisialisasi bintang-bintang
  for (int i = 0; i < stars.length; i++) {
    float x = random(width); // Posisi X acak
    float y = random(height); // Posisi Y acak
    float scale = 1.0; // Skala awal bintang menjadi 1.0
    stars[i] = new Star(x, y, scale); //membuat objek bintang baru dan menyimpannya
  }
}

void draw() {
  int m = millis() % period; //menghitung waktu dan mengambil sisa pembagian waktu tersebut dengan nilai period

  for (int i = 0; i < stars.length; i++) { //mengiterasi melalui elemen-elemen dalam array stars
    stars[i].update(); // Update ukuran bintang
  }

  background(16, 32, 55);

  for (int i = 0; i < stars.length; i++) {
    strokeWeight(1);
    stars[i].display(); // Tampilkan bintang

    // Membuat planet dengan cincin
    noStroke();
    fill(209, 161, 141);
    pushMatrix();
    translate(700, 400); // Pindahkan pusat koordinat ke (700, 400)
    rotate(radians(165)); // Putar elips 

    //cincin
    ellipse(0 + 0.01 * m, 0, 230, 80); // Gambar elips

    fill(235, 134, 88);
    ellipse(0 + 0.01 * m, 5, 230, 80);

    // planet
    strokeWeight(5);
    stroke(23, 169, 146);
    fill(44, 196, 173);
    circle(0 + 0.01 * m, 10, 150);
    
    // jarak antar cincin dan planet
    noStroke();
    fill(16, 32, 55);
    ellipse(60 + 0.01 * m, 6, 70, 40);
    ellipse(-60 + 0.01 * m, 1, 70, 40);

    fill(44, 196, 173);
    ellipse(51 + 0.01 * m, 2, 52, 75);
    ellipse(-50 + 0.01 * m, 1, 50, 75);

    stroke(235, 134, 88);
    strokeWeight(20);
    line(62 + 0.01 * m, -25, -60 + 0.01 * m, -25);

    noStroke();
    fill(235, 134, 88);
    circle(70 + 0.01 * m, -20, 15);
    circle(-70 + 0.01 * m, -23, 15);
    
    //Kawah planet
    fill(23, 169, 146);
    ellipse(50 + 0.01 * m, 30, 20, 30);
    ellipse(20 + 0.01 * m, 30, 30, 60);
    popMatrix(); //bagian akhir dari planet cincin bergerak
    
    // mwmbuat planet merah pink
    fill(241, 127, 161);
    
    strokeWeight(10);
    stroke(199, 104, 134);
    circle(1000, 800, 500); //planet 
    
    // corak pada planet pink
    strokeWeight(30);
    line(820, 750, 1000, 750);
    line(950, 780, 1400, 780);
    line(990, 810, 1030, 810);
    line(880, 910, 1030, 910);
    line(940, 940, 1070, 940);
    
    stroke(223, 118, 151);
    line(970, 640, 1080, 640);
    line(930, 670, 1080, 670);
    line(1040, 700, 1070, 700);
    line(1040, 860, 1070, 860); //bagian akhir dari planet pink

    // Membuat planet abu-abu
    
    fill(198, 198, 198);
    stroke(149, 150, 168);
    strokeWeight(10);
    circle(-10, 0, 500); //planet
    
    //corak pada planet abu-abu
    
    fill(149, 150, 168);
    circle(50, 27, 40);
    circle(35, 45, 70);
    
    circle(110, 40, 40);
    circle(80, 100, 40); //bagian akhir dari planet abu-abu
   
  }
}

//  untuk menciptakan objek bintang
class Star {
  float x, y; // Posisi bintang (Atribut untuk menyimpan posisi (koordinat X dan Y) dari bintang)
  float scale; // Skala bintang 
  float growthRate; // Laju pertumbuhan

  Star(float x, float y, float scale) { //Konstruktor untuk membuat objek bintang
    this.x = x;
    this.y = y;
    this.scale = 1.0; // Skala awal bintang menjadi 1.0
    this.growthRate = random(0.1, 0.5); // Ubah nilai batas atas (0.5) untuk percepatan
  }

  void update() {
    // Pertumbuhan dan berkedip
    scale += growthRate;
    if (scale > 5.0 || scale < 1.0) {  //Jika nilai scale melebihi 5.0 atau kurang dari 1.0, maka nilai growthRate akan dibalik arahnya.
      growthRate *= -1; // Ubah arah pertumbuhan saat mencapai batas ukuran dan mengecil
    }
  }

  void display() {
    // Menggambar bintang
    pushMatrix();
    translate(x, y);
    scale(scale); // Terapkan scaling
    stroke(255); // Warna putih
    point(0, 0); // Gambar titik (bintang)
    popMatrix();
  }
}
