import 'dart:convert';

class Contact{
  final int id;
  final String name;
  final String phone;

  Contact({required this.id, required this.name, required this.phone});

  //'factory' adalah constructor yang mengembalikan objek yang sudah ada 
  //'factory' constructor 'fromJson' digunakan untuk membuat objek 'Contact' dari data JSON
  //Bedanya 'factory' dan 'regular' constructor adalah 'regular' selalu mengembalikan objek baru dan 'factory' tidak
  //Pentingnya penggunaan 'factory' adalah agar tidak perlu membuat objek baru tiap kali ada data JSON yang diterima
  factory Contact.fromJson(Map<String, dynamic>json){
    return Contact(
      id: json['id'], 
      name: json['name'], 
      phone: json['phone']
      );
  }
}

void main(List<String> args) {
  String jsonString= '{"id": 2, "name": "John Thor", "phone": "0857676565688"}';

  //'jsonDecode' fungsinya untuk mengubah 'jsonString' yang berisi data JSON menjadi 'Map<String, dynamic>'
  Map<String, dynamic>jsonMap= jsonDecode(jsonString);


  Contact contact= Contact.fromJson(jsonMap);

  print('ID: ${contact.id}');
  print('Name: ${contact.name}');
  print('Phone: ${contact.phone}');

}