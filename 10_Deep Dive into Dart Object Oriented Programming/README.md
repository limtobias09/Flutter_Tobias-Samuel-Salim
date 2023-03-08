# Dart Object Oriented Programming 2

## Constructor
Constructor digunakan untuk konstruksi objek baru dan merupakan fungsi atau method yang dijalankan saat pembuatan objek. Constructor dapat menerima parameter tetapi tidak return value. Constructor juga akan memiliki nama yang sama dengan nama class nya.

## Inheritance
Inheritance atau pewarisan adalah sebuah kemampuan suatu program untuk membuat class baru dengan memanfaatkan class yang sudah ada. Kita dapat membayangkan inheritance sebagai seorang anak yang mewarisi sifat orang tua nya atau dalam kata lain anak adalah class anak yang mewarisi class induk. Tujuan dari inheritance adalah agar kemampuan class induk dapat dimiliki class anak.

## Method Overriding
Method overriding merupakan sebuah kemampuan untuk menulis ulang method yang ada pada super-class/class induk dan bertujuan agar class memiliki method yang sama dengan proses yang berbeda.
Terdapat beberapa hal yang harus kita perhatikan saat melakukan overriding yaitu:
-Dilakukan pada class yang melakukan inheritance
-Kita dapat menggunakan method yang sudah ada pada class induk
-Method ditulis ulang seperti membuat method baru pada class anak
-Ditambahkan tanda @override di baris sebelum method dibuat

## Interface
Interface adalah class yang menunjukkan method apa saja yang ada pada suatu class dan seluruh method yang ada wajib di-override. Interface digunakan dengan menggunakan implements.
Beberapa hal yang harus kita perhatikan saat melakukan interface yaitu:
-Sekilas mirip inheritance
-Pada class yang melakukan implements, wajib melakukan override semua method yang ada pada class induk

## Abstract Class
Abstract class merupakan class abstrak atau dalam kata lain class yang hanya gambaran umum dari sebuah class dan tidak bisa dibuat sebagai objek secara langsung. Namun, class ini dapat menurunkan properti dan method yang dimiliki class abstrak tersebut. Kita dapat menggunakan class abstrak dengan menggunakan extends dan tidak semua method harus di-override.

## Polymorphism
Polymorphism merupakan kemampuan suatu data objek berubah menjadi bentuk lain. Tipe data yang dapat digunakan adalah super class dan dapat dilakukan pada class dengan extends atau implements.

## Generics
Generics merupakan kemampuan menambahkan parameter tipe pada class atau fungsi. Parameter tipe akan memberikan kemampuan agar dapat menerima data dengan tipe yang berbeda atau yang kita inginkan yang ditentukan saat membuat class atau menjalankan fungsi. 



