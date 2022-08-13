
PFont font;
int margin = 20;
int gap = 50;
int counter = 33;
int y = 0;
int x = 0;

/**
 Method setup
 Method ini akan dipanggil pertama kali saat project dirun, dipanggil hanya sekali.
 method ini berisi 
 1. perintah untuk setup awal screen / canvas
 2. default background black
 3. Mencetak daftar font yang ada di OS
 4. Membuat object font
 5. set font untuk text
 6. Mengatur posisi text
 */
void setup() {
  fullScreen();
  background(0);
  printArray(PFont.list());
  font = createFont("FreeSans", 35);
  textFont(font);
  textAlign(CENTER, CENTER);
}

/*
Method Draw
Method ini akan dipanggil setelah method setup, 
semua logic dalam method ini akan dipanggil terus menerus
method ini seperti halnya perulangan. 
*/
void draw() {
  translate(margin*2, margin*2);
  char letter = char(counter);
  /*
  Create text 
  parameter letter = karakter yang diambil dari font
  parameter x = koordinate sumbu x
  parameter y = koordinate sumbu y
  */
  text(letter, x, y+5);

  counter++;

  x += gap;
  /*
  Kondisi ini digunakan untuk mereset sumbu x dan 
  menjumlahkan value sumbu y.
  sehingga ketika karakter sudah mentok dikanan layar
  akan kembali ke kiri layar karane x = 0 dan y kan untuk pindah baris.
  */
  if (x >= width - gap ) {
    x = 0;
    y += gap;
  }
}
