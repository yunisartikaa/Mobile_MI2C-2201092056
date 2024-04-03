import 'package:flutter/material.dart';
import '../model/model_berita.dart';

class DetailBeritaPage extends StatelessWidget {
  final Datum? berita; // Menggunakan tipe Datum dari ModelBerita

  const DetailBeritaPage(this.berita, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(berita?.judul ?? "Detail Berita"),
      ),
      body: SingleChildScrollView( // Gunakan SingleChildScrollView untuk menghindari overflow pada layar kecil atau konten yang panjang
        child: Column(
          children: [
            if (berita?.gambarBerita != null) // Tampilkan gambar jika URL tersedia
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'http://192.168.43.124/beritaDb/gambar_berita/${berita!.gambarBerita}',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                berita?.judul ?? "",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                berita?.isiBerita ?? "",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}