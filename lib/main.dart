import 'dart:io';

int penjumlahan(int a, int b) {
  return a + b;
}

int pengurangan(int a, int b) {
  return a - b;
}

int perkalian(int a, int b) {
  return a * b;
}

double pembagian(int a, int b) {
  return a / b;
}

// Function Input
int inputAngka(String pesan) {
  while (true) {
      stdout.write(pesan);
      int angka =
int.parse(stdin.readLineSync()!);

      if (angka < 0) {
        print('Error: Angka tidak boleh negatif.');
      } else {
        return angka;
      }
  }
}

void main() {
  // Ulangi menu sampai pengguna memilih keluar.
  while (true) {
    print('\n=== KALKULATOR SEDERHANA ===');
    print('1. Penjumlahan');
    print('2. Pengurangan');
    print('3. Perkalian');
    print('4. Pembagian');
    print('5. Keluar');
    stdout.write('Pilih menu: ');

    // Baca pilihan menu dari keyboard.
    var pilihan = stdin.readLineSync();
    if (pilihan == null || pilihan == '5') {
      print('Kalkulator selesai.');
      return;
    }

    // Pastikan pilihan hanya 1, 2, 3, atau 4.
    if (!['1', '2', '3', '4'].contains(pilihan)) {
      print('Pilihan tidak tersedia. Coba lagi.');
      continue;
    }

    try {
      var angkaPertama = inputAngka('Masukan angka pertama: ');

      var angkaKedua = inputAngka('Masukan angka kedua: ');

      // Jalankan perhitungan sesuai pilihan menu.
      switch (pilihan) {
        case '1':
          print('Hasil: ${penjumlahan(angkaPertama, angkaKedua)}');
          break;
        case '2':
          print('Hasil: ${pengurangan(angkaPertama, angkaKedua)}');
          break;
        case '3':
          print('Hasil: ${perkalian(angkaPertama, angkaKedua)}');
          break;
        case '4':
          // Bilangan tidak bisa dibagi dengan nol.
          if (angkaKedua == 0) {
            print('Tidak bisa membagi dengan nol.');
          } else {
            print('Hasil: ${pembagian(angkaPertama, angkaKedua)}');
          }
          break;
      }
    } on FormatException {
      print('Input harus berupa bilangan bulat.');
    }
  }
}
