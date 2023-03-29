import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePageGallery(),
    );
  }
}


class HomePageGallery extends StatelessWidget {
  const HomePageGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Gallery'),
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
    image: Image.asset('assets/images/image1.jpg', fit: BoxFit.cover), 
    onYesPressed: (BuildContext context, ImageProvider image){
      Navigator.push(
        context, 
        //Apabila ditekan 'Yes', kita akan diarahkan ke halaman lain yaitu 'HomePagePicture' dan menampilkan gambar yang kita pilih oleh widget 'Image'
        //'image' pada parameter konstruktor 'HomePagePicture' adalah sebuah objek dari tipe 'ImageProvider' 
        //Dalam hal ini, gambar yang diteruskan dari 'GalleryItem' disediakan oleh objek 'Image.asset'
        MaterialPageRoute(builder: (context)=>HomePagePicture(image: image))
        );
    }, 
    onNoPressed:(BuildContext context){
      Navigator.pop(context);
    }),
  GalleryItem(
    image: Image.asset('assets/images/image2.jpg', fit: BoxFit.cover), 
    onYesPressed: (BuildContext context, ImageProvider image){
      Navigator.push(
        context, 
        MaterialPageRoute(builder: (context)=>HomePagePicture(image: image))
        );
    }, 
    onNoPressed:(BuildContext context){
      Navigator.pop(context);
    }),
  GalleryItem(
    image: Image.asset('assets/images/image3.jpg', fit: BoxFit.cover), 
    onYesPressed:(BuildContext context, ImageProvider image){
      Navigator.push(
        context, 
        MaterialPageRoute(builder: (context)=>HomePagePicture(image: image))
        );
    }, 
    onNoPressed:(BuildContext context){
      Navigator.pop(context);
    }),
  GalleryItem(
    image: Image.asset('assets/images/image4.jpg', fit: BoxFit.cover), 
    onYesPressed: (BuildContext context, ImageProvider image){
      Navigator.push(
        context, 
        MaterialPageRoute(builder: (context)=>HomePagePicture(image: image))
        );
    }, 
    onNoPressed:(BuildContext context){
      Navigator.pop(context);
    }),
  GalleryItem(
    image: Image.asset('assets/images/image5.jpg', fit: BoxFit.cover), 
    onYesPressed: (BuildContext context, ImageProvider image){
      Navigator.push(
        context, 
        MaterialPageRoute(builder: (context)=>HomePagePicture(image: image))
        );
    }, 
    onNoPressed:(BuildContext context){
      Navigator.pop(context);
    }),
  GalleryItem(
    image: Image.asset('assets/images/image6.jpg', fit: BoxFit.cover), 
    onYesPressed: (BuildContext context, ImageProvider image){
      Navigator.push(
        context, 
        MaterialPageRoute(builder: (context)=>HomePagePicture(image: image))
        );
    }, 
    onNoPressed:(BuildContext context){
      Navigator.pop(context);
    }),
  GalleryItem(
    image: Image.asset('assets/images/image7.jpg', fit: BoxFit.cover), 
    onYesPressed: (BuildContext context, ImageProvider image){
      Navigator.push(
        context, 
        MaterialPageRoute(builder: (context)=>HomePagePicture(image: image))
        );
    }, 
    onNoPressed:(BuildContext context){
      Navigator.pop(context);
    }),
  GalleryItem(
    image: Image.asset('assets/images/image8.jpg', fit: BoxFit.cover), 
    onYesPressed: (BuildContext context, ImageProvider image){
      Navigator.push(
        context, 
        MaterialPageRoute(builder: (context)=>HomePagePicture(image: image))
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
    );
  }
}