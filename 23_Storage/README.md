# Storage

## Penyimpanan Lokal
Penyimpanan lokal diperlukan untuk efisiensi penggunaan data internet. Data yang sudah pernah diambil sekali dari internet akan disimpan pada penyimpanan lokal perangkat. Ketika aplikasi membutuhkan data yang sama, aplikasi tersebut tidak perlu mengambil dari internet lagi tetapi akan mengambil data tersebut dari penyimpanan lokal perangkat. 
Terdapat beberapa cara implementasi penyimpanan lokal, contoh nya:
-Shared Preferences
-Local Database

## Shared Preference
Shared Preference digunakan untuk menyimpan data yang sederhana. Jika kita ingin menyimpan data yang lebih kompleks, kita dapat menggunakan SQLite. Shared Preference akan menyimpan data dengan format key-value dan dapat menyimpan tipe data dasar seperti teks, angka, dan boolean. Contoh penggunaaan shared preference seperti menyimpan data login dan menyimpan riwayat pencarian.

## Local Database (SQLite)
Kita dapat analogikan local database sebagai lemari arsip, di mana database itu memiliki sebuah tabel (file folders) dan data yang tersimpan (lembaran kertas). Tabel dalam database memiliki column untuke mendefinisikan data yang tersimpan pada row.
Database dapat kita gunakan untuk menyimpan dan mempertahankan data dalam jumlah besar pada local device. Database ini bersifat privat yang artinya hanya aplikasi tersebut yang dapat mengakses database nya. Kemudian menggunakan SQLite database melalui plugin sqflite. SQLite adalah database open source yang mendukung insert, read, update, dan remove data.
