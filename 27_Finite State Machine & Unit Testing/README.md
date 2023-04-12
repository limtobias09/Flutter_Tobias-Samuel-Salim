# Finite State Machine & Unit Testing

## Finite State Machine
Finite state machine adalah mesin yang memiliki sejumlah state. Tiap state yang dimiliki tersebut akan menunjukkan apa yang terjadi sebelumnya.
Contohnya terdapat 3 state yang menunjukkan kejadian dalam suatu proses. IDDLE saat tidak terjadi proses, RUNNING saat proses sedang berjalan, ERROR saat proses gagal diselesaikan. IDDLE akan berubah menjadi RUNNING saat proses berjalan kemudian kembali menjadi IDDLE saat proses selesai merupakan contoh sukses. Jika gagal, saat proses RUNNING akan berubah menjadi ERROR dan kemudian kembali menjadi IDDLE.

### Implementasi Pada Widget
Informasi finite state dapat berguna untuk menentukan seperti apa tampilan yang dimunculkan. 

# Unit Test
Unit test merupakan salah satu jenis pengujian pada perangkat lunak. Pengujian dilakukan pada unit dalam perangkat lunak. Unit yang dimaksud umumnya adalah fungsi atau method. 
Tujuan dari unit test adalah memastikan fungsi dapat mengolah berbagai jenis input, memastikan hasil dari suatu fungsi atau method sudah sesuai, dan menjadi dokumentasi.
Terdapat 2 cara untuk melakukan unit test yaitu secara manual atau automated. Kalau secara manual, unit akan dijalankan dan dicek hasilnya secara manual. Sedangkan kalau secara automated, kita harus menuliskan script yang dapat dijalankan berkali-kali menggunakan test-runner. Di dalam script, kita akan mensimulasikan kode untuk dijalankan lalu kita bisa cek apakah hasilnya sudah benar atau belum.

## Mocking
Terkadang terdapat proses yang terikat dengan sistem eksternal yang dapat memengaruhi berjalannya pengujian. Pengaruh tersebut dapat mengganggu proses pengujian. Oleh sebab itu, mocking dilakukan untuk menghindari masalah-masalah tersebut.

### Cara Kerja Mocking
-Suatu object dibuat bentuk tiruannya
-Bentuk tiruan tersebut memiliki input dan output yang sama dengan yang asli
-Bentuk tiruan menghilangkan ketergantungan pada sistem eksternal