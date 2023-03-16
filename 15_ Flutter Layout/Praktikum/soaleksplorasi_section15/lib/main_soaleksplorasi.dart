import 'package:flutter/material.dart';


void main(List<String> args) {
  runApp(MyApp());
}





class MyApp extends StatelessWidget {
  //'super.key' digunakan untuk meneruskan parameter 'key' dari kelas induk 'StatelessWidget' ke konstruktor 'MyApp'
  const MyApp({super.key});

  //Kelas 'MyApp' akan mengembalikan sebuah widget MaterialApp yang menggunakan 'HomePage' sebagai halaman awal
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage() ,
    );
  }
}



class HomePage extends StatelessWidget {
  HomePage({super.key});
  
  //'final' adalah untuk menjamin properti-properti tidak berubah selama proses rendering Widget
  //Dalam proses rendering Widget, Flutter akan memanggil method 'build' dari Widget tersebut
  //Akan terjadi kesalahan dalam proses rendering yang akan menyebabkan tampilan aplikasi menjadi error
  final List<String> _pelajaran=[
    'Learn Flutter', 
    'Learn ReactJs',
    'Learn VueJS',
    'Learn Tailwind CSS',
    'Learn UI/UX',
    'Learn Figma',
    'Learn Digital Marketing'
    ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff6200EE),
        title: const Text('My Flutter App'),
        centerTitle: true,
        actions: [
          IconButton(
          onPressed: (){}, 
          icon: const Icon(Icons.search),
          alignment: Alignment.centerRight,)
        ],
      ),
      

      //'ListView.separated' adalah widget untuk menambahkan daftar dengan garis pemisah tiap item
      //'itemCount' untuk menentukan jumlah item dari '_pelajaran'
      //'separatorBuilder' adalah widget untuk memisahkan antar item
      //'itemBuilder' adalah widget untuk membangun tiap item pada daftar dengan menggunakan widget 'ListTile'
      body: ListView.separated(
        itemCount: _pelajaran.length,
        separatorBuilder: (BuildContext context, index) {
          return const Divider(
            color: Colors.grey,
            thickness: 1,
            height: 1,
          );
        },
        itemBuilder: (BuildContext context, index) {
         return ListTile(
          title: Text (_pelajaran[index]),
         ); 
        }),
        

        floatingActionButton: FloatingActionButton(
          onPressed:(){},
          child: const Icon(Icons.add, color: Colors.black,),
          backgroundColor: const Color(0xff03DAC5),),


        bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff6200EE),

        //'items: const[]' artinya dalam bottomNavigationBar akan terdapat item yaitu Home dan Settings
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.favorite, color: Colors.white), label:'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.search, color: Colors.white), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.info_rounded, color: Colors.white), label: 'Information'),
        ],
         // ubah gaya teks label pada bottom navigation bar menjadi putih
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
      )
    );
  }
}

