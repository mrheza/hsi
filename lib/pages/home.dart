import "package:flutter/material.dart";
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'assets/images/carousel-1.jpg',
  'assets/images/carousel-2.jpg',
  'assets/images/carousel-3.jpg',
  'assets/images/carousel-4.jpg',
];
final CarouselController _controller = CarouselController();
int _current = 0;
int _selectedIndex = 0;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return PageHomeElement();
  }
}

class PageHomeElement extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF233976),
        leading: Container(
          margin: const EdgeInsets.only(left: 15),
          child: Image.asset("assets/images/hsi.png"),
        ),
        title: const Text(
          "EDU HSI",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        titleSpacing: 10,
        centerTitle: false,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Text(
              "v.2402-1601",
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Assalamualaikum,',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'AHMAD MUNDHOFA',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'ARN231-20015',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          CarouselSlider(
            carouselController: _controller,
            options: CarouselOptions(
                height: 200,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 5),
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
            items: imgList.asMap().entries.map((entry) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      color: Colors.amber,
                      image: DecorationImage(
                        image: AssetImage(entry.value),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: (_current == entry.key ? 30 : 12.0),
                  height: 12.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20),
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : const Color(0xFF233976))
                          .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Info Pendaftaran',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 225,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFF1F1F1)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: ListView(
                      children: [
                        Container(
                          height: 60,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFFF1F1F1)),
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xFFE9F0F8),
                          ),
                          child: const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(5),
                                child: Icon(
                                  Icons.info,
                                  size: 16,
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  'Pendaftaran Program Hifzul Mutun Angkatan Ke-03',
                                  style: TextStyle(
                                    color: Color(0xFF233976),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text('Bismillah'),
                        const Text(
                            'Pendaftaran Hifzhul Mutun HSI Abdullah Roy'),
                        const Text('Angkatan Ke-3 telah dibuka'),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            backgroundColor: const Color(0xFF4562F2),
                            fixedSize: const Size(120, 40),
                          ),
                          child: const Text(
                            'Selengkapnya',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Evaluasi',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
