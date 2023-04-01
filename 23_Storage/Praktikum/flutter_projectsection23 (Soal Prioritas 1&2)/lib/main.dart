import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      //'initialRoute:'/'' artinya adalah aplikasi akan mulai pada rute '/'
      //routes adalah map yang menunjukkan daftar rute yang akan digunakan dalam aplikasi
      //'ModalRoute.of(context)!.settings.arguments as ImageProvider' akan ambil objek 'ModalRoute' dari konteks 
      //Setelah itu akan mengakses 'arguments' dari rute tersebut sebagai 'ImageProvider'
      initialRoute: '/',
      routes: {
        '/': (context)=> const LogInScreen(),
        '/2':(context)=> const HomePageGallery(),
        '/3':(context) => HomePagePicture(image: ModalRoute.of(context)!.settings.arguments as ImageProvider),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}


class HomePageGallery extends StatefulWidget {
  const HomePageGallery({super.key});

  @override
  State<HomePageGallery> createState() => _HomePageGalleryState();
}

class _HomePageGalleryState extends State<HomePageGallery> {
  
  //'late' fungsinya untuk menunda inisialisasi sebuah variabel sampai benar-benar dibutuhkan agar hemat memori
  late SharedPreferences logindata;

  //'initState' artinya merupakan sebuah metode yang pertama kali diinisialisasi
  //Dalam kasus ini 'initial()' akan pertama kali diinisialisasi
  @override
  void initState() {
    super.initState();
    initial();
  }

  //'initial' akan menjalankan metode 'getInstance' dari 'SharedPreferences' dan mengembalikan hasil sebagai 'Future'
  //Artinya akan ditunggu sampai hasil Future diterima sebelum lanjut ke kode selanjutnya
  void initial() async{
    logindata= await SharedPreferences.getInstance();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Gallery'),
      ),
      drawer: Drawer(
        child: ListView(     
          children: [
            TextButton(
              onPressed: (){
                logindata.setBool('login', true);
                Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(
                    builder: (context)=> const LogInScreen(),
                    ),
                  );
              }, 
              child: const Text('Log Out', style: TextStyle(fontSize: 20),),
              ),
          ],   
        ),
      ),
      body: Gallery(),
    );
  }
}

//Dibuat kelas GalleryItem dan memiliki 3 properti yaitu image, onYesPressed, dan onNoPressed
//image merupakan objek dari kelas Image dan properti ini akan simpan info tentang gambar yang ditampilkan pada 'GalleryItem'
//onYesPressed merupakan sebuah fungsi yang akan dipanggil saat tombol 'Yes' ditekan dan begitu juga untuk onNoPressed
class GalleryItem{
  final Image image;
  final Function onYesPressed;
  final Function onNoPressed;

  GalleryItem({required this.image, required this.onYesPressed, required this.onNoPressed});

}


class Gallery extends StatefulWidget {
   Gallery({super.key});
   
  //Dibuat objek baru yaitu 'myGallerItems' yang bertipe List yang isinya adalah objek-objek dari kelas 'GalleryItem'
  //Objek dari kelas 'GalleryItem' memiliki 3 parameter yaitu item, onYesPressed, dan onNoPressed
  final List<GalleryItem> myGalleryItems=[
  GalleryItem(
    
    //'arguments:image' fungsinya adalah untuk mengirim parameter 'image' ke halaman yang akan ditampilkan dengan rute '/2'
    image: Image.asset('assets/images/image1.jpg', fit: BoxFit.cover), 
    onYesPressed: (BuildContext context, ImageProvider image){
      Navigator.pushNamed(
        context, 
        '/2', arguments: image
        );
    }, 
    onNoPressed:(BuildContext context){
      Navigator.pop(context);
    }),
  GalleryItem(
    image: Image.asset('assets/images/image2.jpg', fit: BoxFit.cover), 
    onYesPressed: (BuildContext context, ImageProvider image){
      Navigator.pushNamed(
        context, 
        '/3', arguments: image
        );
    }, 
    onNoPressed:(BuildContext context){
      Navigator.pop(context);
    }),
  GalleryItem(
    image: Image.asset('assets/images/image3.jpg', fit: BoxFit.cover), 
    onYesPressed: (BuildContext context, ImageProvider image){
      Navigator.pushNamed(
        context, 
        '/3', arguments: image
        );
    }, 
    onNoPressed:(BuildContext context){
      Navigator.pop(context);
    }),
  GalleryItem(
    image: Image.asset('assets/images/image4.jpg', fit: BoxFit.cover), 
    onYesPressed: (BuildContext context, ImageProvider image){
      Navigator.pushNamed(
        context, 
        '/3', arguments: image
        );
    }, 
    onNoPressed:(BuildContext context){
      Navigator.pop(context);
    }),
  GalleryItem(
    image: Image.asset('assets/images/image5.jpg', fit: BoxFit.cover), 
    onYesPressed: (BuildContext context, ImageProvider image){
      Navigator.pushNamed(
        context, 
        '/3', arguments: image
        );
    }, 
    onNoPressed:(BuildContext context){
      Navigator.pop(context);
    }),
  GalleryItem(
    image: Image.asset('assets/images/image6.jpg', fit: BoxFit.cover), 
    onYesPressed: (BuildContext context, ImageProvider image){
      Navigator.pushNamed(
        context, 
        '/3', arguments: image
        );
    }, 
    onNoPressed:(BuildContext context){
      Navigator.pop(context);
    }),
  GalleryItem(
    image: Image.asset('assets/images/image7.jpg', fit: BoxFit.cover), 
    onYesPressed: (BuildContext context, ImageProvider image){
      Navigator.pushNamed(
        context, 
        '/3', arguments: image
        );
    }, 
    onNoPressed:(BuildContext context){
      Navigator.pop(context);
    }),
  GalleryItem(
    image: Image.asset('assets/images/image8.jpg', fit: BoxFit.cover), 
    onYesPressed: (BuildContext context, ImageProvider image){
      Navigator.pushNamed(
        context, 
        '/3', arguments: image
        );
    }, 
    onNoPressed:(BuildContext context){
      Navigator.pop(context);
    }),
  
  
  ];

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
Widget build(BuildContext context) {
  return GridView.count(
    crossAxisCount: 3,
    
    //Setiap item pada 'myGalleryItems' akan dirender menggunakan widget 'Inkwell'
    //'Inkwell' adalah widget yang mengimplementasikan sebuah tindakan ketika pengguna menyentuh widget tersebut
    //Setiap 'Inkwell' akan menerima sebuah tindakan ketika diklik oleh pengguna menggunakan properti 'onTap'
    //'widget.' digunakan untuk mengakses properti 'myGalleryItems'
    //'map()' adalah metode pada List untuk ubah tiap item di dalam List 'myGalleryItems' ke bentuk widget yang akan dirender di dalam GridView
    children: widget.myGalleryItems.map((item) => InkWell(
      onTap: () {
        showModalBottomSheet(
         shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20)
                )
                ),
          context: context,
          builder: (context) {
            return SingleChildScrollView(
                child: Column(
                  children: [
              
                    Padding(
                      padding: const EdgeInsets.all(50),
                      child: item.image,
                    ),
              
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                  //'item.image' adalah objek dari 'Image.asset' yang bertipe 'AssetImage'
                  //Kita perlu menggunakan properti 'image' dari 'AssetImage' untuk mendapatkan objek 'ImageProvider'
                  //Karena itu ada '.image' lagi dibelakang 'item.image'
                          onPressed: (){
                            item.onYesPressed(context, 
                            item.image.image);
                            },
                          child: const Text('Yes'),
                        ),
                        TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          child: const Text('No'),
                          ),
                      ],
                    ),
                  ],
                ),
              );
            
          }
        );
      },
      child: item.image,
    )
    )
    .toList(),
  );
}
}



class HomePagePicture extends StatelessWidget {

  final ImageProvider image;

  const HomePagePicture({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(image: image, height: 400),
      ),

      //Disini 'floatingActionButton' ditambahkan pada halaman HomePagePicture untuk kembali ke halaman sebelumnya yaitu HomePageGallery
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          Navigator.pop(
            context
          );
        },

        child: const Icon(Icons.home),
        )
    );
  }
}