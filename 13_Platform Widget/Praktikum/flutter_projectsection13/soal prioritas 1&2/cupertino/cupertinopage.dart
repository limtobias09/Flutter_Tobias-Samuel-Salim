import 'package:flutter/cupertino.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //Di bagian 'navigationBar' hanya terdapat text yaitu 'CupertinoApp' sehingga tidak akan menampilkan navigation bar
    //Dalam 'CupertinoPageScaffold' terdapat 3 bagian yaitu navigationBar, child, dan backgroundColor
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('CupertinoApp'),
      ),
 
      //Terdapat 'child' di dalam bagian 'child: Center(' karena hanya membutuhkan satu widget anak tunggal yaitu 'Text' dalam kasus ini
      //'Children' digunakan hanya pada widget untuk menambahkan beberapa widget anak dalam bentuk daftar seperti 'ListView' dan 'GridView'
      child: Center(
        child: Text('This is CupertinoApp'),
      ),
    );
  }
}



