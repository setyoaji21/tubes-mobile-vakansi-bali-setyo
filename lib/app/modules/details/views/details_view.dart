import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:get/get.dart';

import '../controllers/details_controller.dart';

class DetailsView extends GetView<DetailsController> {
  const DetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantai Kuta'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Hero(
                tag: 'Pantai Kuta',
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/images/pantai_kuta.jpeg'),
                )
              ),
              const Padding(padding: EdgeInsets.all(8)),
              RatingBarIndicator(
                rating: 4.5,
                itemBuilder: (context, index) {
                  return const Icon(
                    Icons.star,
                    color: Colors.amber,
                  );
                }
              ),
              const Padding(padding: EdgeInsets.all(10)),
              const Text(
                "Pantai Kuta",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15.0,
                ),
              ),
              const Padding(padding: EdgeInsets.all(8)),
              const Text(
                "Pantai Kuta adalah sebuah tempat pariwisata yang terletak di kecamatan Kuta, sebelah selatan Kota Denpasar, Bali, Indonesia. Daerah ini merupakan sebuah tujuan wisata turis mancanegara dan telah menjadi objek wisata andalan Pulau Bali sejak awal tahun 1970-an. Pantai Kuta sering pula disebut sebagai pantai matahari terbenam (sunset beach) sebagai lawan dari pantai Sanur. Selain itu, Lapangan Udara I Gusti Ngurah Rai terletak tidak jauh dari Kuta.",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.justify,
              ),
              const Padding(
                padding: EdgeInsets.all(8)
              ),
            ]
          ),
        ),
      )
    );
  }
}
