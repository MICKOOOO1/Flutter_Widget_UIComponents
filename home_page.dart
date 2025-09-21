import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  final List<Map<String, String>> sliderData = [
    {"image": "assets/img/Eeve.png", "text": "Eevee - The Evolution Pokémon"},
    {"image": "assets/img/Espeon.jpg", "text": "Espeon - The Sun Pokémon"},
    {"image": "assets/img/Flareon.png", "text": "Flareon - The Flame Pokémon"},
    {"image": "assets/img/Glaceon.jpg", "text": "Glaceon - The Fresh Snow Pokémon"},
    {"image": "assets/img/Jolteon.png", "text": "Jolteon - The Lightning Pokémon"},
    {"image": "assets/img/Leafeon.jpg", "text": "Leafeon - The Verdant Pokémon"},
    {"image": "assets/img/Sylveon.jpeg", "text": "Sylveon - The Intertwining Pokémon"},
    {"image": "assets/img/Umbreon.jpg", "text": "Umbreon - The Moonlight Pokémon"},
    {"image": "assets/img/Vaporeon.png", "text": "Vaporeon - The Bubble Jet Pokémon"},
  ];
// I use the code above because i think this is the easier for me to edit the description.
// instead of the code below which is you set the container each slider.
        //this is the original code
//      body: ListView(
//         children: [
//           CarouselSlider(
//               items: [
//
//                 //1st Image of Slider
//                 Container(
//                   margin: EdgeInsets.all(6.0),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8.0),
//                     image: DecorationImage(
//                       image: NetworkImage("ADD IMAGE URL HERE"),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
        title: Text("GFG Slider"),
      ),

      //i use the final list so that the container attribute can set to all instead of set each attribute
      body: ListView(
        children: [
          CarouselSlider(
            items: sliderData.map((item) {
              return SizedBox(
                height: 220,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage(item["image"]!),
                            fit: BoxFit.cover,
                          ),
                        ),
                        width: double.infinity,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      item["text"]!,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              );
            }).toList(),
            options: CarouselOptions(
              height: 220.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
        ],
      ),
    );
  }
}
