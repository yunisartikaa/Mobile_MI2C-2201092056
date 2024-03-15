import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'detail_grid.dart';

class PageCustomGrid extends StatefulWidget {
  const PageCustomGrid({Key? key}) : super(key: key);

  @override
  State<PageCustomGrid> createState() => _PageCustomGridState();
}

class _PageCustomGridState extends State<PageCustomGrid> {
  List<Map<String, dynamic>> items = [
    {
      'title': 'Rasuk2',
      'price': 'Rp. 45000',
      'image': 'gambar/film1.jpeg',
    },
    {
      'title': 'Get Merried2',
      'price': 'Rp. 45000',
      'image': 'gambar/film2.jpeg',
    },
    {
      'title': 'Nikah Yuk',
      'price': 'Rp. 50000',
      'image': 'gambar/film3.jpeg',
    },
    {
      'title': 'Wonderful word',
      'price': 'Rp. 45000',
      'image': 'gambar/film4.jpeg',
    },
    {
      'title': 'Beauty',
      'price': 'Rp. 45000',
      'image': 'gambar/film5.jpeg',
    },
    {
      'title': 'Saranjana',
      'price': 'Rp. 40000',
      'image': 'gambar/film6.jpeg',
    },
    {
      'title': 'Doctor Slump',
      'price': 'Rp. 45000',
      'image': 'gambar/film7.jpeg',
    },
    {
      'title': 'Boboiboy',
      'price': 'Rp. 30000',
      'image': 'gambar/film8.jpeg',
    },

    {
      'title': 'Korea Action',
      'price': 'Rp. 35000',
      'image': 'gambar/film11.jpeg',
    },
    {
      'title': 'Dua Garis Biru',
      'price': 'Rp. 45000',
      'image': 'gambar/film13.jpeg',
    },
    {
      'title': 'Dua Garis Biru',
      'price': 'Rp. 50000',
      'image': 'gambar/film14.jpeg',
    },
    {
      'title': 'Hotel del luna',
      'price': 'Rp. 60000',
      'image': 'gambar/film15.jpeg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Custom Grid'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0), // Menambahkan padding 8.0 ke semua sisi
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Jumlah kolom dalam grid
            crossAxisSpacing: 8.0, // Jarak antara kolom
            mainAxisSpacing: 8.0, // Jarak antara baris
          ),
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                // Tambahkan logika untuk menangani ketika item diklik
                showToast(
                  'Anda memilih ${items[index]['title']} dengan harga ${items[index]['price']}',
                  context: context,
                  axis: Axis.horizontal,
                  alignment: Alignment.center,
                  position: StyledToastPosition.bottom,
                  toastHorizontalMargin: 28,
                  fullWidth: true,
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 3,
                      child: ClipRRect(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)),
                        child: Image.asset(
                          items[index]['image'], // Path gambar dari data item
                          fit: BoxFit.none, // Sesuaikan dengan ukuran asli
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        onPressed: () {
                          // Tambahkan logika untuk menangani ketika tombol ditekan
                          showToast(
                            'Anda memilih ${items[index]['title']} dengan harga ${items[index]['price']}',
                            context: context,
                            axis: Axis.horizontal,
                            alignment: Alignment.center,
                            position: StyledToastPosition.bottom,
                            toastHorizontalMargin: 28,
                            fullWidth: true,
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green, // Warna tombol hijau
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20), // Melengkungkan sudut
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              items[index]['title'], // Judul dari data item
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black, // Warna teks hitam
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              items[index]['price'], // Harga dari data item
                              style: TextStyle(
                                color: Colors.black, // Warna teks hitam
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}