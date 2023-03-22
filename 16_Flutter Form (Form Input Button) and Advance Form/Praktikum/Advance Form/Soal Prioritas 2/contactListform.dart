//Pertama kita harus import 'package:flutter/material.dart' 
//Hal tersebut agar dapat mengakses code dari file tersebut yang isinya ada kelas2 dan fungsi2 yang dibutuhkan program utama/main.dart


import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:open_file/open_file.dart';

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
      home: HomePage1() ,
    );
  }
}




class HomePage1 extends StatelessWidget {
  HomePage1({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Material App'),
      ),
      
      
      drawer: Drawer(

        //Maksud 'child: ListView' adalah dalam Drawer tersebut terdapat list yang memiliki text Home dan Settings
        child: ListView(
          children: [
            ListTile(title: Text('Home')), 
            ListTile(title: Text('Settings')),
          ],
        ),
      ),

      //Maksud 'body: const Center' adalah apapun yang ada di body tersebut akan berposisi di tengah2 body dan dalam kasus ini text 'This is Material App' akan berada di tengah body
      body: const Center(
        child: Text('This is Material App'),
      ),

      
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context)=>HomePage2()),
          );
        },
        child: const Icon(Icons.perm_contact_cal_rounded),
      ),
      
      
      bottomNavigationBar: BottomNavigationBar(

        //'items: const[]' artinya dalam bottomNavigationBar akan terdapat item yaitu Home dan Settings
        items: const[
          
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),

    );
  }
}



 class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
        leading: const Icon (Icons.perm_contact_cal_rounded),
        backgroundColor: Colors.blueAccent,

        //'PreferredSize' digunakan untuk menentukan ukuran yang diinginkan untuk deskripsi
        //'bottom' merupakan properti yang digunakan untuk menambahkan deskripsi ke 'AppBar'
        //'Size.fromHeight' akan membuat objek 'Size' dengan lebar default dan tinggi sesuai yang diinginkan
        //Dalam kasus ini, 'PreferredSize' digunakan untuk menentukan ukuran yang diinginkan untuk deskripsi di bawah judul 'AppBar'
        //Karena  deskripsi yang relatif kecil di bawah judul, kita mengatur tinggi objek Size menjadi 20 piksel saja.
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(20.0),
          
        //'Align' digunakan untuk mengatur posisi dan penempatan child widget di dalamnya
        //'Alignment.centerLeft' adalah agar child widget berada di sebelah kiri dari 'Align'
        //'Padding' adalah widget untuk menambahkan jarak antara child widget (dalam kasus ini teks) dan tepi 'Align'
        //Diberikan padding atau jarak hanya pada sebelah kiri sebesar 16 piksel 
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
            'Halaman Baru Yang Berisi Contacts',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
         ),
        ),
      ), 
      ),

  //'EdgeInsets.fromLTRB' adalah widget agar kita dapat custom mau kasih jarak berapa untuk kiri, atas, kanan, dan bawah dari child widget
  //'MainAxisAlignment.start' merupakan sebuah widget yang dalam kasus ini children nya akan mulai dari atas AppBar
  //Ada juga 'MainAxisAlignment.end' yang merupakan kebalikan dari 'MainAxisAlignment.start'
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [


          const Icon(
          Icons.perm_contact_calendar_rounded,
            ),

            //'SizedBox' merupakan sebuah widget kotak kosong dengan lebar yang sama dengan widget sebelumnya
            //Fungsi 'SizedBox' adalah untuk memberikan jarak, dalam kasus ini antara icon dan text 'Create New Contacts'
            //Meskipun tidak satu kurung dengan text, penempatan SizedBox tetap sangat berpengaruh dan menentukan apa yang diberi jarak
            const SizedBox(height: 10.0),

            const Text(
              'Create New Contacts',
              style: TextStyle(
                fontSize: 20.0,
              ),
             ),

            const SizedBox(height: 10.0),

            //Widget 'Container' digunakan untuk mengatur tampilan atau layout widget lainnya
            //'Container' bisa atur ukuran, warna, margin dan padding, dekorasi, transformasi
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
               ),
              
              //'child' adalah properti dari widget 'Dialog'untuk menentukan konten yang akan ditampilkan
              //Dalam kasus ini, 'child' diisi dengan widget 'Padding'
              //'EdgeInsets.symmetric' adalah objek dari kelas 'EdgeInsets' untuk atur ukuran padding/jarak
              //'EdgeInsets.symmetric(horizontal:' artinya text dalam Padding akan memiliki jarak yang sama untuk kiri dan kanan nya
              child: const Padding(
                padding: EdgeInsets.fromLTRB(10,10,10,10), 
                child: Text(
                  'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made.',
                 style: TextStyle(
                  fontSize: 16.0,
                 ),
                ),
              ),

             ),

      //Diperlukan widget 'Expanded' karena ada tambahan child dalam body nya yaitu form input nama dan nomor telpon yang sifatnya stateful
             const Expanded(
              child: ContactList(),
              ),
            ],
          ),
         ),
        floatingActionButton: FloatingActionButton(
        onPressed:(){
          Navigator.pop(
            context
          );
        },

        child: const Icon(Icons.home),
      ),
    );
  }
}




class ContactList extends StatefulWidget {
  
  const ContactList({super.key});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  DateTime _dueDate=DateTime.now();
  final currentDate=DateTime.now();
  Color _currentColor=Colors.black;

  final _formkey= GlobalKey<FormState>();
  
  //'TextEditingController' akan mengontrol nilai yang diinputkan ke dalam 'TextField'
  // Dengan menggunakan objek 'TextEditingController', kita dapat membaca, update, dan delete nilai yang diinputkan pada 'TextField'
  //'_nameController' akan mengontrol nilai yang diinput dengan label 'Name' dan '_phoneController' pada 'Nomor'
  final TextEditingController _nameController=TextEditingController();
  final TextEditingController _phoneController=TextEditingController();
  
  //Disini '_contacts' di deklarasikan dengan nilai kosong '[]' dan dengan tipe data String
  //'Map' akan digunakan untuk menyimpan informasi kontak yaitu name dan nomor telepon
  final List<Map<String, String>>_contacts=[];

  
@override
void dispose(){
  //Mengosongkan nilai yang sudah diisi dan berhasil ditambahkan ke dalam list menggunakan '.dispose()'
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
}

  //Fungsi 'addContact' adalah untuk menerima nilai yang diinput dalam '_nameController' dan '_phoneController' yang berupa text
  void addContact(){
    String name=_nameController.text;
    String phone=_phoneController.text;
  
  //Setelah menerima nilai yang diinput, nilai tersebut akan ditambahkan ke dalam list '_contacts[]' menggunakan '.add()'
    setState(() {
      _contacts.add({
        'name': name, 
        'phone': phone,
        });
    });
    _nameController.clear();
    _phoneController.clear();
  }

void addColor(){

}
  
  //Fungsi 'getFirstLetter' adalah untuk mengambil huruf pertama dari sebuah String dan mengubah menjadi huruf kapital
  //Jika String nya kosong 'text.isEmpty', maka akan mengembalikan string kosong
  String getFirstLetter(String text){
    if (text.isEmpty){
      return'';


    }

    //'text[0]' adalah kode untuk mengambil karakter pertama dari string
    //'.toUpperCase()' adalah untuk mengubah karakter pertama menjadi huruf kapital
    else{
      return text [0].toUpperCase();
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //'SingleChildScrollView(' adalah widget untuk membuat semua yang ada dalam kurungnya scroll bersama-sama bukan terpisah
      body: SingleChildScrollView(
        child: Form(
        key: _formkey,
        child: Container(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
        
          TextField(

            //'controller' digunakan untuk dapat membaca teks yang diinput user pada 'TextField'
            //Selain itu, juga dapat memperbarui atau menghapus teks yang diinput
            //'controller' dapat digunakan untuk mengatur teks default atau mengosongkan teks pada 'TextField'
            controller:_nameController,
            decoration: const InputDecoration(
              labelText: 'Name',
              labelStyle: TextStyle(color: Colors.black),
              hintText: 'Insert Your Name',
              hintStyle: TextStyle(color: Colors.black),

              //'filled' gunanya adalah agar dapat memiliki background color pada TextField nya
              filled: true,
              fillColor:  Color.fromARGB(255, 225, 213, 227),

              //'FloatingLabelBehavior.always' digunakan untuk 'hintText' selalu tampil di 'TextField' meskipun kita tidak klik 'TextField'
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
          ),
          
          const SizedBox(height: 20.0),
        
          TextField(
            controller: _phoneController,
                decoration: const InputDecoration(
                  labelText: 'Nomor',
                  labelStyle: TextStyle(color: Colors.black),
                  hintText: '+62...',
                  hintStyle: TextStyle(color: Colors.black),
                  filled: true,
                  fillColor: Color.fromARGB(255, 225, 213, 227),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
               ),

          const SizedBox(height: 20.0),

          buildDatePicker(context),

          buildColorPicker(context),
          const SizedBox(height: 20),

          buildFilePicker(context),
        
          Align(
            alignment: Alignment.bottomRight,
            child: ElevatedButton(
              onPressed: (){
              addContact();
               }, 
              child: const Text('Submit'),
              style: ElevatedButton.styleFrom(
                 backgroundColor:const Color.fromARGB(255, 127, 39, 143),
                 shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                 )
              ),
             ),
          ),
        
          const Text(
            'List Contacts',
            style: TextStyle(
              fontSize: 20.0,
            ),
            ),
        
          Container(

            //'height: MediaQuery.of(context).size.height' adalah untuk mengambil height dari layar pada saat aplikasi dijalankan
            //'height: MediaQuery.of(context).size.height' membuat tampilan yang responsif dan menyesuaikan ukurannya dengan layar perangkat
            height: MediaQuery.of(context).size.height,
            child: ListView.separated(
              itemBuilder:(context, index){
                return ListTile(
                 trailing: SizedBox(
                  width: 96,
                  child: Row(

                   //Dalam children yang diposisikan bersampingan ('Row') terdapat 2 IconButton yaitu 'Edit' dan 'Delete' 
                   children: [

                    IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: (){
                        
                        //Saat di klik tombol 'Edit' kita dapat mengedit nama dan nomor telepon karena ada controller
                        TextEditingController _nameController=TextEditingController(text: _contacts[index]['name']);
                        TextEditingController _phoneController=TextEditingController(text: _contacts[index]['phone']);
                        
                        //Dan saat di klik tombol 'Edit' akan muncul dialog
                        showDialog(

                          //'context: context' adalah objek dari BuildContext untuk identifikasi (penanda) widget mana yang memanggil dialog
                          context: context, 
                          builder: (context){
                            return AlertDialog(
                            title: const Text('Edit Contact'),
                            content: Column(


                              //'mainAxisSize: MainAxisSize.min' digunakan untuk menentukan ukuran utama dari widget Column
                              //Artinya ukuran utama dari widget Column akan menyesuaikan dengan isi konten di dalamnya
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TextField(
                                  controller: _nameController,
                                  decoration: const InputDecoration(
                                    labelText: 'Name',
                                  ),
                                ),
                                TextField(
                                  controller: _phoneController,
                                  decoration: const InputDecoration(
                                    labelText: 'Phone',
                                  ),
                                ),
                              ],
                            ),

                            //Di dalam AlertDialog terdapat beberapa actions yang terdiri dari TextButton dan ElevatedButton
                            //TextButton untuk tombol Cancel, dimana saat di klik tombol tersebut akan kembali ke 'context' dari builder
                            actions: [
                              TextButton(
                                onPressed: ()=>Navigator.pop(context), 
                                child: const Text('Cancel'),
                                ),

                                //ElevatedButton untuk tombol save, dimana saat di klik tombol tersebut akan menampilkan nama atau nomor yang diedit
                                //Kemudian dilanjutkan dengan kembali ke 'context' builder
                                ElevatedButton(
                                  onPressed: (){
                                    String newName=_nameController.text;
                                    String newPhone= _phoneController.text;
        
                                    setState(() {
                                      _contacts[index]['name']=newName;
                                      _contacts[index]['phone']=newPhone;
                                    });
                                    Navigator.pop(context);
                                  }, 
                                  child: const Text('Save'),
                                  ),
                            ],
                            );
                          },
                          );
                      }, 
                      ),
        
                      
                    IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: (){
        
                        TextEditingController _nameController=TextEditingController(text: _contacts[index]['name']);
                        TextEditingController _phoneController=TextEditingController(text: _contacts[index]['phone']); 
        
                        showDialog(
                          context: context, 
                          builder: (context){
                            return AlertDialog(
                              title: Text('Delete Contact'),
                              content: Text('Are you sure you want to delete ${_contacts[index]['name']}\'s contact?'),
                              actions: [
                                  TextButton(
                                    onPressed: ()=>Navigator.pop(context), 
                                    child: const Text('Cancel'),
                                    ),
                                    ElevatedButton(
                                      onPressed: (){

                                        //Saat kita klik tombol 'Delete', contact tersebut akan hilang menggunakan '_contacts.removeAt(index)'
                                        setState(() {
                                          _contacts.removeAt(index);
                                        });
                                        Navigator.pop(context);
                                      }, 
                                      child:const Text('Delete'),
                                      ),
                                ],
                              );
                            }
                            );
                        }, 
                        ),
                   ],
                 ),
                ),

                //Tiap 'ListTile' akan ada lingkaran/'CircleAvatar' yang dalamnya adalah huruf awal dari 'name'
                //'_contacts[index]['name']' fungsinya untuk mengambil nilai yang berhubungan dengan 'name' dalam Map
                //Ada tanda seru '!' dibelakang '['name]' menunjukkan bahwa nilai yang diambil dari '_contacts[index]' tidak null
                 leading: CircleAvatar(
                 child: Text(getFirstLetter(_contacts[index]['name']!)),                
                 ),
                 title: Text(_contacts[index]['name']!),
                 subtitle: Text(_contacts[index]['phone']!),
                );
              }, 

              //'separatorBuilder' untuk menambahkan widget pemisah antara setiap item dalam daftar
              //'const Divider()' sebagai pemisah antara setiap item dalam daftar
              //'itemCount' untuk menentukan jumlah item dalam daftar, dalam kasus ini semua list '_contacts'
              separatorBuilder: (context,index)=>const Divider(), 
              itemCount: _contacts.length,
              ),
             ),
          ],
        ),
         ),
        ),
      ),
    );
   }

   Widget buildDatePicker(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Date'),
          TextButton(
            onPressed: () async{
             final selectDate= await showDatePicker(
              context: context, 
              initialDate: currentDate, 
              firstDate: DateTime(1990), 
              lastDate: DateTime(currentDate.year+5),
              ); 

              setState(() {
                if(selectDate!= null){
                  _dueDate=selectDate;
                }
              });
            log(_dueDate.toString());
            }, 
            child: const Text('Select'),
          ),
        ],
        ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text ('Date'),
          Text(
            _dueDate!=null?
            DateFormat('dd-MM-yyyy').format(_dueDate):'Not selected'
            ),
        ],
      ),
      ],
    );
  }



  Widget buildColorPicker(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text('Color'),
      const SizedBox(height: 10,),
      Container(height: 100, width: double.infinity,
      color: _currentColor,
      ),
      const SizedBox(height: 10,),
      Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(_currentColor),
            ),
        onPressed: (){
          showDialog(
            context: context, 
            builder: (context){
              return AlertDialog(
                title: const Text('Pick Your Color'),
                content:BlockPicker( //Ada Widget ColorPicker, BlockPicker, dan SlidePicker
                  pickerColor: _currentColor, 
                  onColorChanged: (color){
                    setState(() {
                       _currentColor=color;
                    });
                   log(_currentColor.toString());
                  },
                  ),
                actions: [
                  TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                    }, 
                    child: const Text('Save'),
                  ),
                ],
              );
            },
            );
        },
        child: const Text('Pick Color'),
        ),
      ),
    ],
    );
  }


  Widget buildFilePicker(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      const Text('Pick Files'),
      const SizedBox(
        height: 10,
        ),
      Center(
        child: ElevatedButton(
          onPressed: (){
            _pickFile();
            log(_pickFile.toString());
          }, 
          child: const Text('Pick and Open Files'),
          ),
      ),
      ],
    );
  }

  void _pickFile() async{
    final result=await FilePicker.platform.pickFiles();
    if (result==null)return;
   
   final file=result.files.first;

   _openFile(file);
  }
  
  
  
  void _openFile(PlatformFile file){
   OpenFile.open(file.path);
  
  }
  }

