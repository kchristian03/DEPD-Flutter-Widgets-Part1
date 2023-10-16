import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _homeState();
}

class _homeState extends State<Home> {
  //var
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Mission 1",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.lightBlue.shade100, Colors.white],
                ),
              ),
              clipBehavior: Clip.antiAlias,
            ),
          ),
          Column(
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Image.asset(
                    'assets/images/image0.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          roundedImage('assets/images/image1.jpg'),
                          const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4)),
                          roundedImage('assets/images/image2.jpg'),
                          const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4)),
                          roundedImage('assets/images/image3.jpg'),
                          const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4)),
                          roundedImage('assets/images/image4.jpg'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Flexible(
                  flex: 4,
                  child: Column(children: [
                    Text(
                      "Welcome to Golden Tulip Holland Batu",
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Expanded(
                        child: SingleChildScrollView(
                      clipBehavior: Clip.antiAlias,
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "SkyDome Batu merupakan lounge dan bar ikonik dari Golden Tulip Holland Resort Batu. SkyDome Lounge & Bar menyajikan Masakan Steamboat otentik, Makanan Cina A’La Carte, Minuman Beralkohol & Non-alkohol. Dari makan siang terbaik, teh sore hari, minuman beralkohol dan santapan mewah di saat makan malam Anda. Gabungan pemandangan panorama kelas dunia dengan 3600 dan nikmati suasana malam di Kota Batu dengan instrumen Biola & Saksofon setiap akhir pekan.\n\n"
                        "Dengan konsep interior design yang luxury dan exclusive berbentuk kubah, membuat instalasi AC yang di desain pada sisi samping berbentuk trox agar mendukung interior desain yang ada. Menggunakan unit Daikin VRV floor standing duct yang dapat diberdirikan di bawah dinding sehingga memudahkan untuk proses service & maintenance. kedepannya\n\n"
                        "Selain itu, unit indoor floor standing Daikin VRV yang dapat disembunyikan tentunya mempermudah proses instalasi karena diperlukan fleksibilitas dalam penempatan unit nya. VRV HS juga salah satu unit Daikin VRV yang memiliki bentuk slim dan ringkas untuk tempat outdoor yang terbatas.",
                        style: TextStyle(fontSize: 18.0),
                        textAlign: TextAlign.justify,
                      ),
                    ))
                  ])),
            ],
          ),
          Positioned(
            top: 20,
            right: 20,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
                border: Border.all(
                  color: Colors.grey,
                  width: 2.0,
                ),
              ),
              child: InkWell(
                onTap: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite,
                    color: isFavorite ? Colors.red : Colors.grey[800],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget roundedImage(String imagePath) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Image.asset(
        imagePath,
        width: 100.0,
        height: 100.0,
        fit: BoxFit.fill,
      ),
    );
  }
}
