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
        home: const WelcomePage(),
      );
    }
  }


  class WelcomePage extends StatelessWidget {
    const WelcomePage({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Welcome To Mother's Recipe!!", selectionColor: Colors.white,)),
          backgroundColor: const Color.fromARGB(255, 223, 119, 112),
        ),
        drawer:  Drawer(
          child: ListView(
              children: [
                  TextButton(
                    onPressed: (){}, 
                    child: const Text('Contact Us')
                    ),
                  TextButton(
                    onPressed: (){}, 
                    child: const Text('About Us')
                    ),
                  TextButton(
                    onPressed: (){}, 
                    child: const Text('Login')
                    ),  
            ],
          ),
        ),

        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 16),

              SizedBox(
                height: 250,
                child: Image.asset('assets/icons/icons1.png')
                ),
              
              const SizedBox(height: 16),

              const Center(child: 
              Text(
                "Discover Delicious Foods and Beverages With Mother's Recipe",
                style: TextStyle(fontSize: 14),
              ),
              ),

              const SizedBox(height: 40),

              const Padding(
                padding: EdgeInsets.fromLTRB(8, 8, 300, 8),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    ),
                  ),
              ),

              Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 16),
              child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your username',
                filled: true,
                fillColor: Color.fromARGB(255, 244, 214, 227),
            ),
            ),
          ),

              Padding(
              padding: const EdgeInsets.fromLTRB(30, 16, 30, 16),
              child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your email',
                filled: true,
                fillColor: Color.fromARGB(255, 244, 214, 227),
            ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(300, 0, 30, 0),
            child: ElevatedButton(
              onPressed: (){}, 
              child: const Text('Submit'),
              ),
          ),

          const SizedBox(height: 20),

          const Padding(
                padding: EdgeInsets.only(right: 300, left: 16),
                child: Text(
                  'Contact Us',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                    ),
                  ),
              ),


          const Padding(
                padding: EdgeInsets.only(left:16.0, right: 16.0),
                child: Text("Need to get in touch with us? Either fill out the form with your inquiry or find the department email you'd like to contact below"),
              ),

              const SizedBox(height: 10),

            Column(
            children: [
            Row(
              children: [

                //Rows dibungkus dengan 'Expanded' karena TextFormFields dalam Rows akan berkembang tanpa batas 
                //Sehingga saat meletakkan TextFormFields dalam baris akan dapat kesalahan renderflex karena memakan sebanyak ruang yang diperlukan kontennya
                Expanded(
                  child: ListTile(
                  title: const Text('First Name*'),
                  subtitle: TextFormField(
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 244, 214, 227),
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                    ),
                  ),),
                ),

                Expanded(
                  child:ListTile(
                  title: const Text('Last Name'),
                  subtitle:  TextFormField(
                    decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 244, 214, 227),
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                  ),
                  ),
                ),
                ),
              ],
            ),

            ListTile(
            title: const Text('Email'),
            subtitle:  TextFormField(
              decoration: const InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(255, 244, 214, 227),
              border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8))),
            ),
            ),
          ),

          ListTile(
            title: const Text('What Can We Help You With?'),
            subtitle:  TextFormField(
              decoration: const InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(255, 244, 214, 227),
              border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8))),
            ),
            ),
          ),

          ],
        ),

          Padding(
              padding: const EdgeInsets.fromLTRB(300, 0, 30, 0),
              child: ElevatedButton(
                onPressed: (){}, 
                child: const Text('Submit'),
                ),
            ),

          const SizedBox(height: 16),

          Title(
            color: Colors.black, 
            child: const Text(
              'About Us',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
              )
            ),

            const SizedBox(height: 16),
          
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Container(
                  width: 170,
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 9,
                      )
                    ]
                  ),
                  child: Card(
                    color: const Color.fromARGB(255, 244, 214, 227),
                    elevation: 10,
                    child: Column(

                      //'mainAxisSize: MainAxisSize.min' diterapkan pada 'Column' 
                      //Artinya 'Column' akan mengambil ruang yang cukup untuk menampilkan semua child widget di dalamnya yaitu ListTile 
                      //tanpa mengambil ruang lebih pada sumbu utama (vertikal). 
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        ListTile(
                          title: Center(child: Text('Food')),
                          subtitle: Text('Here, we offer Chinese cuisine with distinctive flavors that are certified halal.'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Container(
              width: 170,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 9,
                  offset: const Offset(0, 4)
                )
              ]
            ),
            child: Card(
              color: const Color.fromARGB(255, 244, 214, 227),
              elevation: 10,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  ListTile(
                    title: Center(child: Text('Beverages')),
                    subtitle: Text("In addition to our delicious Chinese cuisine, we also provide a wide selection of beverages to accompany our customers' meals."),
                  ),
                ],
              ),
            ),
          ),
            ],
          ), 
        ]
        )
        )
      );
    }
  }