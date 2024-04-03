import 'package:flutter/material.dart';

class DetailGrid extends StatelessWidget {
  final Map<String, dynamic> movieDetails;

  const DetailGrid(this.movieDetails, {Key? key}) : super(key: key); // Menghapus super.key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movieDetails["title"]),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                movieDetails["image"], // Menggunakan path gambar langsung
                width: 200,
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                "Judul: ${movieDetails["title"]}",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                "Harga: ${movieDetails["price"]}",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
