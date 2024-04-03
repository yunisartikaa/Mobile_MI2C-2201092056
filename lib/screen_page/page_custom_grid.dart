import 'package:flutter/material.dart';

import 'detail_grid.dart';

class PageCustomeGrid extends StatefulWidget {
  const PageCustomeGrid({super.key}) ;

  @override
  State<PageCustomeGrid> createState() => _CustomeGridState();
}

class _CustomeGridState extends State<PageCustomeGrid> {
  List<Map<String, dynamic>> listMovie = [
    {
      'title': 'Rasuk2',
      'price': 'Rp. 45000',
      'image': 'gambar/film1.jpeg', // Ubah dengan path gambar yang sesuai
    },
    {
      'title': 'Get Merried2',
      'price': 'Rp. 45000',
      'image': 'gambar/film2.jpeg', // Ubah dengan path gambar yang sesuai
    },
    {
      'title': 'Nikah Yuk',
      'price': 'Rp. 50000',
      'image': 'gambar/film3.jpeg', // Ubah dengan path gambar yang sesuai
    },
    {
      'title': 'Wonderful word',
      'price': 'Rp. 45000',
      'image': 'gambar/film4.jpeg', // Ubah dengan path gambar yang sesuai
    },
    {
      'title': 'Beauty',
      'price': 'Rp. 45000',
      'image': 'gambar/filmm5.jpeg', // Ubah dengan path gambar yang sesuai
    },
    {
      'title': 'Saranjana',
      'price': 'Rp. 40000',
      'image': 'gambar/film6.jpeg', // Ubah dengan path gambar yang sesuai
    },
    {
      'title': 'Doctor Slump',
      'price': 'Rp. 45000',
      'image': 'gambar/film7.jpeg', // Ubah dengan path gambar yang sesuai
    },
    {
      'title': 'Boboiboy',
      'price': 'Rp. 30000',
      'image': 'gambar/film8.jpeg', // Ubah dengan path gambar yang sesuai
    },

    {
      'title': 'Korea Action',
      'price': 'Rp. 35000',
      'image': 'gambar/film11.jpeg', // Ubah dengan path gambar yang sesuai
    },
    {
      'title': 'Dua Garis Biru',
      'price': 'Rp. 45000',
      'image': 'gambar/film13.jpeg', // Ubah dengan path gambar yang sesuai
    },
    {
      'title': 'Dua Garis Biru',
      'price': 'Rp. 50000',
      'image': 'gambar/film14.jpeg', // Ubah dengan path gambar yang sesuai
    },
    {
      'title': 'Hotel del luna',
      'price': 'Rp. 60000',
      'image': 'gambar/film15.jpeg', // Ubah dengan path gambar yang sesuai
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Grid"),
        backgroundColor: Colors.green,
      ),
      body: GridView.builder(
        itemCount: listMovie.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailGrid(listMovie[index]),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridTile(
                footer: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: Colors.black),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "${listMovie[index]["title"]}", // Perubahan key
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text("${listMovie[index]["price"]}"), // Perubahan key
                    ],
                  ),
                ),
                child: Image.asset(
                  listMovie[index]["image"], // Perubahan key
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
