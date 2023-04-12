# UI Testing

## Apa itu UI Testing?
Dalamn pengembangan aplikasi, testing merupakan hal yang penting. Dari testing kita dapat menemukan bugs atau masalah yang terjadi pada aplikasi kita. UI testing sendiri merupakan pengujian yang dilakukan pada tampilan suatu aplikasi untuk memastikan aplikasi dapat menerima interaksi dan memberi respon kepada pengguna.
UI testing di Flutter dapat disebut juga widget testing sehigga pengujian dilakukan pada widgets dengan menuliskan script yang dapat dijalankan secara otomatis.

### Keuntungan UI Testing
-Memastikan seluruh widget memberi tampilan yang sesuai
-Memastikan seluruh interaksi dapat diterima dengan baik
-Menjadi ketentuan yang harus diikuti saat diperlukan perubahan pada widget

## Cara Melakukan UI Testing
-Instalasi package testing: Pada umumnya, package testing sudah ter-install sejak project pertama kali dibuat. Tetapi, cara ini dapat dilakukan, jika ingin meng-install secara manual.
-Penulisan script testing: Dilakukan pada folder test dan nama file harus diikuti '_test.dart'. Contohnya 'contact_test.dart'. Tiap file berisi fungsi main() yang di dalamnya dapat dituliskan script testing. Tiap skenario pengujian disebut test case.

### Script Testing
-Test case diawali dengan testWidgets dan diberi judul
-Simulasi proses mengaktifkan halaman AboutScreen
-Memeriksa apakah di halaman tersebut terdapat teks 'About Screen'

### Menjalankan Testing
-Perintah flutter test akan menjalankan seluruh file test yang dibuat
-Hasil dari perintah ini adalah lamanya waktu pengujian, total pengujian yang dilakukan, dan pesan bahwa pengujian berhasil
-Kalau gagal akan ditampilkan penyebab gagalnya pengujian

