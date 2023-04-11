  import 'package:flutter/material.dart';
  import 'package:http/http.dart' as http;

  //flutter_svg merupakan package untuk menampilkan gambar SVG
  import 'package:flutter_svg/flutter_svg.dart';

  void main() {
    runApp(const MyApp());
  }

  class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Image Fetching From DiceBear API',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      );
    }
  }

  class HomePage extends StatefulWidget {
    const HomePage({super.key});

    @override
    State<HomePage> createState() => _HomePageState();
  }

  class _HomePageState extends State<HomePage> {

    //String imageUrl='' digunakan untuk menyimpan URL gambar SVG yang diambil dari API DiceBear
    String imageUrl='';
    
    //'_fetchImage' adalah fungsi asinkron yang digunakan untuk mengambil gambar SVG dari API DiceBear
    //Fungsi '_fetchImage' menggunakan package 'http' untuk melakukan HTTP GET ke URL API yang diberikan dan mengupdate state 'imageURL'
    //Uri.parse() adalah sebuah metode untuk menguraikan (parsing) sebuah URI atau URL dari string menjadi objek 'Uri'
    //Objek 'Uri' digunakan untuk mengidentifikasi sumber daya yang akan diambil dari API DiceBear
    //Dalam kasus ini, Uri.parse() digunakan untuk menguraikan string URL "https://api.dicebear.com/6.x/lorelei/svg" menjadi objek 'Uri'
    //Setelah diuraikan, kemudian akan digunakan sebagai argumen untuk melakukan permintaan HTTP GET menggunakan package 'http'
    //'response.body' digunakan untuk mengakses isi (body) dari respons HTTP yang diterima dari API DiceBear setelah melakukan permintaan GET.
    void _fetchImage() async {
    final response = await http.get(Uri.parse("https://api.dicebear.com/6.x/lorelei/svg"));
    if (response.statusCode == 200) {
      setState(() {
        imageUrl = response.body;
      });
    } 
    else {
      setState(() {
        imageUrl = 'Gagal Mengambil Gambar';
      });
    }
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Image From DiceBear API'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if(imageUrl.isNotEmpty)

              //'SvgPicture.string' adalah widget yang digunakan untuk menampilkan gambar SVG dalam Flutter
              //Widget ini mengambil string yang berisi kode SVG sebagai input dan tampilkan dalam UI app
              SvgPicture.string(
                imageUrl,
                width: 150,
                height: 150
                ),
                ElevatedButton(
                  onPressed: _fetchImage, 
                  child: const Text('Ambil Gambar')
                  )
            ],
          ),
        ),
      );
    }
  }