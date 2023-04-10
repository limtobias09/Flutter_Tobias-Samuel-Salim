# REST API Client

## REST API
REST (Representational State Transfer) API (Application Programming Interface) merupakan jembatan antara server dengan client yaitu aplikasi kita client nya. Arsitektur yang dibuat memisahkan tampilan dengan proses bisnis dan bagian tampilan dengan proses bisnis berkirim data melalui HTTP Request. 
Dari sisi client (Mobile/Web/Desktop) akan merequest data dengan metode GET, POST, PUT, dan DELETE. Lalu penghubungnya adalah REST API dan meneruskan requestnya ke server. Server akan mengirim respon berupa JSON Data yang akan diterima oleh sisi client.

## HTTP
HTTP (http://) adalah protokol yang digunakan untuk berkirim data pada internet, biasanya data tersebut berbentuk media web. Flutter memiliki package yang bisa digunakan untuk melakukan tugas tersebut. 

### Pola Komunikasi
-Client mengirim request
-Server mengolah dan membalas dengan memberi response yang nantinya akan ditampilkan dalam aplikasi kita

_Struktur Request_
-URL: Alamat halaman yang akan diakses
-Method (GET, POST, PUT, DELETE): Menunjukkan aksi yang diinginkan
-Header: Informasi tambahan terkait request yang dikirimkan
-Body: Data yang disertakan bersama request

_Struktur Response_
-Status Code: Kode yang mewakili keseluruhan response, baik sukses maupun gagal
-Header: Informasi tambahan terkait response yang diberikan
-Body: Data yang disertakan bersama response

## Dio
Dio adalah sebuah package yang tersedia di pub.dev yang merupakan HTTP Client dan dimanfaatkan untuk melakukan REST API.

## Serialisasi JSON
JSON merupakan JavaScript Object Notation yang umumnya digunakan pada REST API. Cara penulisan data pada JSON biasanya dalam bentuk key dan value. 
Serialisasi JSON yaitu mengubah struktur data ke bentuk JSON. Kita menggunakan fungsi jsonEncode dari package dart:convert yang sudah ada pada Flutter.
Deserialisasi JSON merupakan kebalikan dari serialisasi JSON yaitu mengubah bentuk JSON ke struktur data.

