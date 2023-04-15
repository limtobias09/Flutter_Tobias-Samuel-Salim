import 'package:dio/dio.dart';

void updatePost() async {
  try {
    //Membuat objek Dio
    Dio dio = Dio();

    //Menyiapkan data untuk dikirimkan dalam body request
    Map<String, dynamic> data = {
      "id": 1,
      "title": "foo",
      "body": "bar",
      "userId": 1,
    };

    //Melakukan PUT request
    //response yang merupakan objek dari class Response (Response respone) akan simpan respons yang diterima dari permintaan HTTP PUT
    //'await dio.put' adalah permintaan HTTP PUT yang dikirimkan menggunakan paket DIO 
    //put digunakan untuk mengirim permintaan HTTP PUT ke endpoint url yang ditentukan
    Response response = await dio.put(
      "https://jsonplaceholder.typicode.com/posts/1",
      data: data,
    );

    //Mengecek respon dari server
    if (response.statusCode == 200) {
      print("Data berhasil update");
      print("Response: ${response.data}");
    } 
    else {
      print("Gagal update data");
    }
  } 
  catch (error) {
    print("Error: $error");
  }
}

void main(List<String> args) {
  updatePost();
}