PVector positionTriangle;  // Posisi awal segitiga
PVector positionSquare;    // Posisi awal persegi
PVector velocity;          // Kecepatan pergerakan
float scaler = 1.0;        // Skala awal
float scaleSpeed = 0.02;   // Kecepatan perubahan skala
float rotationAngle = 0.02;  // Kecepatan rotasi
float rotationSpeed = 0.03;  // Kecepatan perputaran

void setup() {
  size(400, 400);  // Membuat jendela dengan ukuran 400x400 piksel
  positionTriangle = new PVector(width / 3, height / 2);  // Posisi awal segitiga
  positionSquare = new PVector(2 * width / 3, height / 2);  // Posisi awal persegi
  velocity = new PVector(2, 1);  // Kecepatan awal pergerakan
  background(255); // Mengatur latar belakang menjadi putih
}

void draw() {
  background(255); // Menggambar latar belakang putih

  // Perhitungan pergerakan
  positionTriangle.add(velocity);
  positionSquare.add(velocity);

  // Perhitungan skala
  scaler += scaleSpeed;

  // Perhitungan rotasi
  rotationAngle += rotationSpeed;

  // Menerapkan transformasi matriks untuk segitiga
  pushMatrix();  // Menyimpan matriks transformasi saat ini
  translate(positionTriangle.x, positionTriangle.y);  // Memindahkan pusat koordinat ke posisi segitiga
  rotate(rotationAngle);  // Memutar segitiga
  scale(scaler);  // Mengubah skala segitiga

  // Menggambar segitiga dengan warna pink
  fill(255, 105, 180);  // Mengatur warna fill menjadi pink
  triangle(0, -50, -40, 50, 40, 50);  // Menggambar segitiga

  popMatrix();  // Mengembalikan matriks ke keadaan sebelumnya

  // Menerapkan transformasi matriks untuk persegi
  pushMatrix();  // Menyimpan matriks transformasi saat ini
  translate(positionSquare.x, positionSquare.y);  // Memindahkan pusat koordinat ke posisi persegi
  rotate(rotationAngle);  // Memutar persegi
  scale(scaler);  // Mengubah skala persegi

  // Menggambar persegi dengan warna hijau
  fill(0, 128, 0);  // Mengatur warna fill menjadi hijau
  rect(-30, -30, 60, 60);  // Menggambar persegi

  popMatrix();  // Mengembalikan matriks ke keadaan sebelumnya

  // Logika untuk memantul kembali ketika mencapai batas skala
  if (scaler >= 2.0 || scaler <= 0.5) {
    scaleSpeed *= -1;  // Membalik arah perubahan skala
    velocity.mult(-1);  // Membalik arah pergerakan
  }
}
