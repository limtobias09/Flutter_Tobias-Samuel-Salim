# MVVM Architecture

## Apa itu MVVM Architecture?
MVVM Architecture (Model-View ViewModel) di mana kita memisahkan logic dengan tampilan (View) ke dalam ViewModel.

_Keuntungan Menggunakan MVVM_:
-Reusability: Jika ada beberapa tampilan yang memerlukan alur logic yang sama, mereka bisa menggunakan ViewModel yang sama sehingga akan meningkatkan efisiensi kode kita.
-Maintainability: Mudah dirawat karena pekerjaan terkait tampilan tidak tertumpuk bersama logic. Sehingga dapat membantu kita membedakan antara logic dengan tampilan.
-Testability: Pengujian menjadi terpisah antara pengujian tampilan dengan pengujian logic sehingga dapat meningkatkan produktivitas pada pengujian.

## Cara Melakukan MVVM

### Struktur Direktori
-Model memiliki 2 bagian, yaitu bentuk data yang akan digunakan dan sumber dari data tersebut
-Tiap screen diletakkan dalam sebuah direktori yang di dalamnya terdapat View dan ViewModel

### Model
Model adalah bentuk data yang akan digunakan, dibuat dalam bentuk class. Data-data yang dimuat, diletakkan pada property.

### ViewModel
ViewModel menyimpan data-data dan logic yang diperlukan sebuah halaman. Jika widget lain memerlukan logic yang sama, kita dapat menggunakan ViewModel yang sama.

### Mendaftarkan ViewModel
Untuk mendaftarkan ViewModel, kita dapat menggunakan MultiProvider agar dapat menggunakan banyak ViewModel. MaterialApp sebagai child utama.

### View
Untuk View kita menggunakan StatefulWidget karena ada perubahan state.

### Menampilkan Data di View
Kita letakkan pada bagian build dan menggunakan getters yang ada pada ViewModel. Data dapat langsung ditampilkan pada widgets.