import 'package:flutter/material.dart';
import 'package:shopping_cart/detail_page.dart';

class SportsCar extends StatelessWidget {
  const SportsCar({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> SportscarsList = [
      {
        'brand': 'BMW',
        'model': 'M5 Competition',
        'price': '₹1.8 Crore',
        'imgUrl':
            'https://wallpapercat.com/w/full/0/7/5/933872-3840x2160-desktop-4k-m5-background-photo.jpg',
        'brief':
            'A high-performance luxury sedan with a 4.4L V8 twin-turbo engine producing 625 hp.',
      },
      {
        'brand': 'Lamborghini',
        'model': 'Huracán EVO',
        'price': '₹3.73 Crore',
        'imgUrl':
            'https://i.pinimg.com/736x/30/e3/b1/30e3b19b9dda123febdb93baf85cb6d6.jpg',
        'brief':
            'An iconic supercar with razor-sharp design and a V10 engine pushing 640 hp.',
      },
      {
        'brand': 'Ferrari',
        'model': 'F8 Tributo',
        'price': '₹4 Crore',
        'imgUrl':
            'https://preview.redd.it/f8-tributo-has-the-most-beautiful-back-of-any-cars-v0-npku2f0xqvpa1.jpg?width=640&crop=smart&auto=webp&s=4a5b6cab9a32b239007a4c69f11184ec9e6debb4',
        'brief':
            'A mid-engine V8 masterpiece offering blistering speed and precise handling.',
      },
      {
        'brand': 'Porsche',
        'model': '911 Turbo S',
        'price': '₹3.2 Crore',
        'imgUrl':
            'https://cdn-4.motorsport.com/images/mgl/254xpAn0/s8/porsche-911-gt3-r-1.jpg',
        'brief':
            'A legendary sports car blending luxury with incredible 0-100 in under 3 seconds.',
      },
      {
        'brand': 'McLaren',
        'model': '720S',
        'price': '₹4.65 Crore',
        'imgUrl':
            'https://www.evoindia.com/h-upload/uid/Cf9uGblpmFXNbvzEHiaOmjxhc5PkDTVY.jpg',
        'brief':
            'A lightweight beast with futuristic design and 710 hp, made for track and street.',
      },
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Sports',
          style: TextStyle(
            color: const Color.fromARGB(255, 255, 0, 0),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/f704b3f5b054fbb63a40fc688f6b96ec.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: SportscarsList.length,
          itemBuilder: (context, index) {
            final item = SportscarsList[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(car: item),
                  ),
                );
              },
              child: Card(
                margin: const EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                    color: const Color.fromARGB(255, 255, 0, 0),
                    width: 4,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: const Color.fromARGB(255, 32, 32, 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(item['imgUrl']!, fit: BoxFit.cover),
                        Padding(
                          padding: const EdgeInsets.all(19.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${item['brand']} ${item['model']}",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(255, 255, 0, 0),
                                ),
                              ),
                              Text(
                                item['price'] ?? '',
                                style: TextStyle(
                                  color: const Color.fromARGB(
                                    255,
                                    252,
                                    252,
                                    252,
                                  ),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "${item['brief']}",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
