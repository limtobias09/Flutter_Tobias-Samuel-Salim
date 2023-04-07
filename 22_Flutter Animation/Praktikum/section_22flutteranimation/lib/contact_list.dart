import 'package:flutter/material.dart';


class ContactList extends StatefulWidget {
  const ContactList({super.key});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {

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
      _contacts.add({'name': name, 'phone': phone});
    });
    _nameController.clear();
    _phoneController.clear();
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
    return Form(
      //Tidak usah pake Scaffold, langsung 'Form' saja karena hanya tambah di body yang Scaffoldnya di HomePage2
     //Kalau pake Scaffold nanti bentrok dengan body 'SingleScrollChildView' di HomePage2
        key: _formkey,
        child: Container(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
        
          //Jika mau tambahkan validator harus pakai TextFormField jangan TextField
          TextFormField(

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

            validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Nama harus diisi, tidak boleh kosong';
    }
    if(value.length<2){
      return 'Nama harus lebih dari 1 kata';
    
    }
  
  //RegExp (regular expression) kita pakai untuk menerima berbagai parameter
  //'!' adalah operator negasi untuk membalikkan nilai hasil dari '.hasMatch(value)'
  //'^' artinya string akan mulai dari apa dulu, dalam kasus ini huruf kapital
  //'+' artinya kumpulan karakter sebelumnya harus muncul satu atau lebih kali secara berurutan
  //'$' artinya akhir dari string yang ingin diuji
  //'.hasMatch(value)' adalah fungsi yang digunakan untuk periksa apakah string 'value' cocok dengan RegExp
    if (!RegExp(r'^[A-Z][A-Za-z ]+$').hasMatch(value)){
      return 'Huruf awal adalah kapital dan tidak boleh ada angka atau simbol';
      
    }
    return null;
  },
          ),
          
          const SizedBox(height: 20.0),
        
          TextFormField(
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
              validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Nomor harus diisi, tidak boleh kosong';
    }
    if(value.length<8){
      return 'Nomor harus minimal 8 digit';
    }
    if(value.length>15){
      return 'Nomor tidak boleh lebih dari 15 digit';
    }
    if (!RegExp(r'^0').hasMatch(value)){
      return 'Nomor harus mulai dari angka 0';
    }

    return null;
  },
          ),
        
          Padding(
            padding: const EdgeInsets.only(left: 283.0, top: 10.0),
            child: ElevatedButton(
              onPressed:(){
                if (_formkey.currentState!.validate()){
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
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
        );
   }
  }