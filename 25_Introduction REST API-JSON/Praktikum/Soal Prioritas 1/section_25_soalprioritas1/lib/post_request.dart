import 'dart:convert';
import 'package:dio/dio.dart';

//Deklarasi class Contact yang memerlukan 2 parameter yaitu name dan phone
class Contact{
  final String name;
  final String phone;

  Contact({required this.name, required this.phone});
  
  //'toJson' merupakan sebuah metode untuk mengonversi objek 'Contact' ke bentuk Map yang berisi data 'name' dan 'phone'
  Map<String, dynamic> toJson(){
    return{
      'name': name,
      'phone': phone,
    };
  }
}

//Membuat objek Dio
Dio dio= Dio();

//Endpoint URL
String url= 'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/';

//Metode untuk mengirim data contact melalui POST request
//Dideklarasikan fungsi 'postData' dengan menggunakan tipe data 'Future<void>' yang artinya fungsi ini mengembalikan objek Future void
//Dalam fungsi 'postData' terdapat pemanggilan metode 'post()' dari objek 'dio' untuk melakukan HTTP POST request ke URL ('url')
//Pada parameter 'data' di metode 'post()', objek 'contact' diubah menjadi format JSON menggunakan fungsi 'jsonEncode()' 
//'try' dan 'catch' adalah blok yang digunakan untuk menangani error yang terjadi selama eksekusi program
//'try' digunakan untuk mengelompokkan kode yang berpotensi menghasilkan kesalahan
//'catch' digunakan untuk menangkap (catch) dan mengelola kesalahan yang dihasilkan dari blok 'try'
Future <void> postData(Contact contact) async{
  try {
    final response= await dio.post(
      url,
      data: jsonEncode(contact.toJson()),
    );

    print('Response: ${response.statusCode}');
    print('Data: ${response.data}');
  }
  catch (error){
    print('Error: $error');
  }
}

void main(List<String> args) async{

  //Pembuatan objek 'newContact' dari kelas 'Contact' dengan menggunakan constructor yang telah didefinisikan sebelumnya
  //Terdapat pemanggilan fungsi 'postData' dengan argumen 'newContact' sebagai data yang akan dikirim dalam POST request
  //'postData' akan mengirimkan objek 'newContact' dalam bentuk data JSON melalui metode POST menggunakan DIO ke URL yang telah didefinisikan
  Contact newContact= Contact(
    name: 'John Smith', 
    phone: '123456789'
    );
    await postData(newContact);
}


