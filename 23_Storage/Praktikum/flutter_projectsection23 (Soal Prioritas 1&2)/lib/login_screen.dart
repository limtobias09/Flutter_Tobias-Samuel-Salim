import 'package:flutter/material.dart';
import 'package:flutter_projectsection17_18_19/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:email_validator/email_validator.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  
  final formKey=GlobalKey<FormState>();

  final _nameController= TextEditingController();
  final _emailController= TextEditingController();
  final _passwordController= TextEditingController();
  
  //'logindata' merupakan variabel baru untuk menyimpan SharedPreference 
  //'newUser' merupakan tipe data boolean
  late SharedPreferences logindata;
  late bool newUser;

  //'initState' artinya ini akan merupakan fungsi pertama kali yang dipanggil sebelum widget tree nya dibangun
  @override
  void initState() {
    super.initState();
    checkLogin();
  }
  
  //'checkLogin' adalah fungsi asynchronous yang memeriksa apakah user telah login sebelumnya pada aplika menggunakan SharedPreference
  //'SharedPreferences' digunakan untuk menyimpan info yang perlu diakses kembali oleh aplikasi pada waktu yang beda seperti info login, data pengaturan, atau preferensi pengguna
  //'SharedPreferences.getInstance()' adalah untuk mendapatkan objek 'SharedPreferences' yang merepresentasikan file shared preferences default pada aplikasi
  //'await' digunakan untuk menunggu hasil pengembalian dari 'getInstance()' yang merupakan sebuah future sehingga kode selanjutnya akan tunggu sampai objek 'SharedPreferences' selesai
  //'newUser= logindata.getBool('login') ?? true' gunanya untuk ambil nilai boolean dari shared preferences dengan kunci 'login' kemudian simpan ke dalam varibel 'newUser'
  //Dalam kasus ini, 'newUser' dipakai untuk cek apakah user sudah pernah login atau belum 
  //'??' adalah operator null-aware yang fungsinya untuk tahu nilai dari shared preferences null atau tidak dapat ditemukan
  //Kalau true, user akan disuruh login dulu dan kalau false maka akan diarahkan ke halaman HomePageGallery
  void checkLogin() async{
  logindata= await SharedPreferences.getInstance();
  newUser= logindata.getBool('login') ?? true;

  if(newUser==false){
    Navigator.pushAndRemoveUntil(
      context, 
      MaterialPageRoute(
        builder: (context)=> const HomePageGallery(),
        ), 

      //'(route) => false' artinya aplikasi akan menentukan semua halaman sebelumnya harus dihapus dari stack karena nilai 'false'
      (route) => false);
  }
  }

  //Method dispose() digunakan untuk menghindari kebocoran memori
  @override
  void dispose(){
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.account_circle_rounded),
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                ),
                validator: (value){

//'(value!=null && value.length<4)' artinya jika inputan user tidak kosong dan kurang dari lima karakter maka akan ada pesan error 
                  if (value!=null && value.length<4){
                    return 'Enter at least 4 characters';
                  }
                  else{
                    return null;
                  }
                },
              ),

              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email_rounded),
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                validator: (email){
                  if (email!=null && !EmailValidator.validate(email)){
                    return 'Enter a valid email';
                  }
                  else{
                    return null;
                  }
                },
              ),

              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.password_rounded),
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  if (value!=null && value.length<5){
                    return 'Enter min. 5 Characters';
                  }
                  else{
                    return null;
                  }
                },
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: (){
                  final isValidForm= formKey.currentState!.validate();
                  
//Jika 'isValidForm' bernilai true, aplikasi akan menyimpan nilai 'false' pada SharedPreferences dengan key 'login' 
//'logindata.setBool('login', false)' artinya aplikasi memanggil metode 'setBool' untuk ubah nilai key 'login' menjadi 'false'
//Arti 'false' adalah menandakan kalau user sudah melakukan login                   
//'pushAndRemoveUntil' akan menghapus semua halaman yang ada pada stack dan menambahkan halaman baru ke stack           
                  if (isValidForm){
                    logindata.setBool('login', false);
                    Navigator.pushAndRemoveUntil(
                      context, 
                      MaterialPageRoute(
                        builder: (context)=> const HomePageGallery(),
                        ), 
                      (route) => false
                      );
                  }
                }, 
                child: const Text('Login'),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

 