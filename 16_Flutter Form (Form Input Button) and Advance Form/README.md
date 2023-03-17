# Flutter Form (Form Input Button) and Advance Form

## Form
'Form' digunakan untuk menerima isian data dari pengguna dan isian tersebut dapat lebih dari satu. 

### Membuat Form
Kita dapat membuat 'Form' menggunakan StatefulWidget. Untuk setiap keadaan form akan disimpan menggunakan 'GlobalKey<FormState>'

## Input
Terdapat beberapa widget untuk menerima 'Input' diantaranya yaitu:

-TextField: Dapat menerima isian data dari pengguna dan isian tersebut dapat lebih dari satu. Data diambil menggunakan 'TextEditingController'.
-Radio: Dapat memberi opsi pada pengguna dan hanya dapat memilih satu opsi. Data diambil menggunakan properti dengan tipe data sesuai value pada radio.
-Checkbox: Dapat memberi opsi pada pengguna dan dapat memilih beberapa opsi. Data diambil menggunakan properti bertipe bool.
-Dropdown Button: Dapat memberi opsi pada pengguna dan hanya memilih satu opsi. Opsi tidak ditampilkan di awal, hanya tampil jika ditekan. Data diambil menggunakan properti dengan tipe data sesuai value pada 'DropdownMenuItem'.
-Button: Bersifat seperti tombol dan dapat melakukan sesuatu saat kita tekan. Kita dapat membuat 'Button' dengan menggunakan 'ElevatedButton' yang jika ditekan akan menjalankan 'onPressed'.
-IconButton: Tombol yang hanya menampilkan icon dan jika ditekan akan menjalankan 'onPressed'.

## Advance Form Input
User input dapat digunakan sebagai interaksi antara aplikasi dan user. Widget-widget ini dibuat pada aplikasi yang bertujuan untuk mengumpulkan input dan feedback dari user.

### Date Picker
Widget 'Date Picker' dapat kita gunakan pada UI agar user bisa memasukkan tanggal yang dibutuhkan seperti tanggal kelahiran, waktu pemesanan tiket, waktu reservasi restoran, dll...

### _Cara Membuat Date Picker_
-Menggunakan fungsi bawaan flutter 'showDatePicker'
-Fungsi 'showDatePicker' memiliki tipe data future
-Menampilkan dialog material design date picker 
-Menambahkan packages 'intl' di 'pubspec.yaml'. 'intl' berguna untuk formating tanggal agar kita bisa menentukan format tanggal yang kita inginkan.
-Mempersiapkan variabel. '_dueDate' untuk menyimpan tanggal yang dipilih user. 'currentDate' untuk menyimpan tanggal hari ini.
-Menambahkan fungsi 'showDatePicker' di dalam 'onPressed'.
-Memanggil fungsi 'setState' di dalam 'onPressed'.

## Color Picker
Color picker adalah widget dimana user bisa memilih color dan dapat digunakan untuk berbagai macam kondisi.

### _Cara Membuat Color Picker_
-Menggunakan packages 'flutter_colorpicker'
-Menambahkan packages 'flutter_colorpicker' di 'pubspec.yaml'
-Mempersiapkan variabel yaitu '_currentColor'
-Membangun UI.
-Menambahkan fungsi 'showDialog' di dalam 'onPressed' dengan return widget 'AlertDialog'.
-Import packages 'flutter_colorpicker' dalam file dart.
-Membuat kode untuk penggunaan 'flutter_colorpicker'.

## File Picker
File Picker adalah kemampuan widget untuk mengakses storage di HP. Kita dapat memilih dan membuka file.

### _Cara Membuat File Picker_
-Menggunakan packages 'file_picker' dan 'open_file'. 'file_picker' dipakai untuk mengakses storage di HP dan 'open_file' untuk membuka file.
-Menambahkan packages 'file_picker' dan 'open_file' di 'pubspec.yaml'.
-Import packages 'file_picker' dan 'open_file' dalam file dart.
-Membangun UI.
-Membuat fungsi untuk mengeksplor dan memilih files dari storage.
-Memanggil fungsi '_pickFile' di dalam 'onPressed'.
-Membuat fungsi untuk membuka files yang telah dipilih.
-Mengambil file dari object result dan memanggil fungsi '_openFile' di dalam fungsi '_pickFile'.





