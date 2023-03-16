import 'package:flutter/material.dart';
import 'materialpage_soalprioritas_no.1&2.dart';


class MyApp extends StatelessWidget {
  //'super.key' digunakan untuk meneruskan parameter 'key' dari kelas induk 'StatelessWidget' ke konstruktor 'MyApp'
  const MyApp({super.key});

  //Kelas 'MyApp' akan mengembalikan sebuah widget MaterialApp yang menggunakan 'HomePage' sebagai halaman awal
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //'theme: ThemeData.dark()' adalah untuk mengubah tema menjadi gelap atau dark mode
      theme: ThemeData.dark(),
      home: HomePage() ,
    );
  }
}

