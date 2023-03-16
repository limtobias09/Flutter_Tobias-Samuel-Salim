import 'package:flutter/material.dart';

//Dibuat class bernama Contact yang memiliki property nama dan nomorTelp
class Contact{
  final String nama;
  final String nomorTelp;

//Class Contact memiliki satu konstruktor yang mengambil 2 argumen yaitu nama dan nomorTelp
  Contact (this.nama, this.nomorTelp);
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  
  //Ini merupakan inisialisasi list bernama contacts yang isinya objek-objek 'Contact'
  //Objek2 'Contact' diinisialisasi menggunakan konstruktor 'Contact' dengan 2 argumen yaitu nama dan nomor telpon
  final List<Contact> contacts=[
  Contact('Leanne Graham', '1-770-736-8031 x56442'),
  Contact('Ervin Howell', '010-692-6593 x09125'),
  Contact('Clementine Bauch', '1-463-123-4447'),
  Contact('Patricia Lebsack', '493-170-9623 x156'),
  Contact('Chelsey Dietrich', '(254)954-1289'),
  Contact('Mrs. Dennis Schulist', '1-477-935-8478 x6430'),
  Contact('Kurtis Weissnat', '210.067.6132')
  ];
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Material App'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(title: Text('Home')),
            ListTile(title: Text('Settings')),
          ],
        ),
      ),

      //'ListView.builder(' merupakan sebuah widget untuk membangun daftar item yang besar dan kompleks secara efisien
      //Dalam 'ListView.builder(', 'itemCount' dan 'itemBuilder' adalah 2 parameter yang wajib ada
      body:ListView.builder(
      
      //'itemCount' adalah jumlah item yang akan ditampilkan pada daftar
      //Dalam kasus ini, 'itemCount' akan diambil dari 'contacts' dan ada '.length' yaitu jumlah objek pada daftar kontak
        itemCount: contacts.length,

      //'itemBuilder' akan menetapkan setiap item pada daftar menggunakan widget 'ListTile'
      //'ListTile' adalah widget untuk menampilkan item pada daftar yang terdiri dari judul, sub-judul, dan properti2 lain
      //'itemBuilder' akan menerima 2 argumen yaitu 'context' dan 'index'
      //'context' merujuk pada BuilContext dan 'index' adalah nomor indeks item yang sedang dibangun
        itemBuilder: ((context, index) {
          final contact= contacts[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Text(contact.nama.substring(0,1),
              style: TextStyle(
                color: Colors.white,
              ),
              ), 
              ),
            title: Text(contact.nama),
            subtitle: Text(contact.nomorTelp),
          );
        }
        ),
      ),

      
      bottomNavigationBar: BottomNavigationBar(
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
