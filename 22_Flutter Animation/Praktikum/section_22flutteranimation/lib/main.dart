    //Pertama kita harus import 'package:flutter/material.dart' 
    //Hal tersebut agar dapat mengakses code dari file tersebut yang isinya ada kelas2 dan fungsi2 yang dibutuhkan program utama/main.dart


    import 'package:flutter/material.dart';
    import 'contact_list.dart';


    void main(List<String> args) {
      runApp(MyApp());
    }



    class MyApp extends StatelessWidget {
      //'super.key' digunakan untuk meneruskan parameter 'key' dari kelas induk 'StatelessWidget' ke konstruktor 'MyApp'
      const MyApp({super.key});

      //Kelas 'MyApp' akan mengembalikan sebuah widget MaterialApp yang menggunakan 'HomePage' sebagai halaman awal
      @override
      Widget build(BuildContext context) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage1() ,
        );
      }
    }



    class HomePage1 extends StatelessWidget {
      const HomePage1({super.key});

        Route _createRoute(){
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation)=> const HomePage2(),
          transitionsBuilder: (context, animation, secondaryAnimation, child){
          return FadeTransition(
          
          //'opacity' adalah properti dari 'FadeTransition' yang mengatur tingkat opasitas
          opacity: animation,
            child: child,
            );
          }
          );
      }

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Contacts'),
            leading: const Icon (Icons.perm_contact_cal_rounded),
            backgroundColor: Colors.blueAccent,
          ),

            floatingActionButton: FloatingActionButton(
            onPressed:(){
              Navigator.push(
                context,
                _createRoute(),
              );
            },

            child: const Icon(Icons.navigate_next_sharp),
          ),
        );
      }
    }




    class HomePage2 extends StatelessWidget {
      const HomePage2({super.key});

      Route _createRoute(){
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation)=> const HomePage3(),
        transitionsBuilder: (context, animation, secondaryAnimation, child){
        const begin=Offset(0, 2);
        const end=Offset.zero;
        const curve=Curves.ease;

        var tween=Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
          );
        }
        );
    }


      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Create Contacts'),
          ),

          //'EdgeInsets.fromLTRB' adalah widget agar kita dapat custom mau kasih jarak berapa untuk kiri, atas, kanan, dan bawah dari child widget
      //'MainAxisAlignment.start' merupakan sebuah widget yang dalam kasus ini children nya akan mulai dari atas AppBar
      //Ada juga 'MainAxisAlignment.end' yang merupakan kebalikan dari 'MainAxisAlignment.start'
          body: SingleChildScrollView(
            child: Padding(
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
            
                  const ContactList(),
          
          
                  ],
                ),
              ),
          ),

          floatingActionButton: FloatingActionButton(
            onPressed:(){
              Navigator.push(
                context,
                _createRoute(),
              );
            },

            child: const Icon(Icons.navigate_next_rounded),
          ),
        );
      }
    }


    class HomePage3 extends StatelessWidget {
      const HomePage3 ({super.key});

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Update Contacts'),
          ),
        );
      }
    }