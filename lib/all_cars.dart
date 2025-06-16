import 'package:flutter/material.dart';
import 'package:shopping_cart/detail_page.dart';

class allCars extends StatelessWidget {
  const allCars({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> carsList = [
      {
        'brand': 'Maruti',
        'model': 'Swift',
        'price': '₹6.5 Lakh',
        'imgUrl':
            'https://www.marutiseva.com/assets/images/new-gen-swift/car-08.png',
        'brief':
            'A compact hatchback known for its mileage, agility, and low maintenance.',
        'details':
            'The Maruti Swift is powered by a 1.2L Dual Jet petrol engine delivering a peppy driving experience with 89 bhp and excellent mileage. It features a 9-inch SmartPlay Pro+ infotainment system with Android Auto and Apple CarPlay, dual airbags, ABS with EBD, and hill hold assist in AMT variants. With sporty design, agile handling, and spacious interiors, the Swift is a go-to hatchback for daily city commutes.',
      },
      {
        'brand': 'Mahindra',
        'model': 'Thar',
        'price': '₹15 Lakh',
        'imgUrl':
            'https://www.carandbike.com/_next/image?url=https%3A%2F%2Fimages.carandbike.com%2Fcar-images%2Fcolors%2Fmahindra%2Fthar%2Fmahindra-thar-blazing-bronze.png%3Fv%3D1674547897&w=640&q=75',
        'brief':
            'A rugged off-roader with iconic looks and powerful performance.',
        'details':
            'The Mahindra Thar is equipped with a 2.0L turbo petrol or 2.2L diesel engine, both offering strong low-end torque ideal for off-roading. It features a 4x4 drivetrain with low-range transfer case, removable roof panels, and washable interiors. The cabin includes touchscreen infotainment, cruise control, and dual airbags. Known for its adventure-ready stance, the Thar blends modern features with classic jeep heritage.',
      },
      {
        'brand': 'Toyota',
        'model': 'Fortuner',
        'price': '₹35 Lakh',
        'imgUrl':
            'https://www.freepnglogos.com/uploads/fortuner-png/fortuner-gxl-automatic-melville-toyota-2.png',
        'brief':
            'A premium SUV offering luxury, space, and excellent road presence.',
        'details':
            'The Toyota Fortuner comes with a 2.7L petrol or 2.8L diesel engine and is known for its rugged reliability and off-road prowess. It offers features like 4WD, traction control, ventilated seats, 8-way power driver seat, and a connected touchscreen system. With three-row seating, leather upholstery, and a commanding driving position, the Fortuner is a favorite for long journeys and rugged terrains.',
      },
      {
        'brand': 'Hyundai',
        'model': 'Creta',
        'price': '₹11 Lakh',
        'imgUrl':
            'https://cdn.cars24.com/prod/new-car-cms/Hyundai/Creta-2024/2024/04/01/f324e8a1-8466-4bc9-af54-137889a61db8-Hyundai_Creta-2024_Abyss-Black.png',
        'brief': 'A stylish and feature-rich compact SUV ideal for families.',
        'details':
            'The Hyundai Creta offers multiple engine options including 1.5L NA petrol, turbo petrol, and diesel with both manual and automatic choices. It features a panoramic sunroof, 10.25-inch digital cluster, ventilated front seats, and Level 2 ADAS in top variants. With premium styling, great safety, and a comfortable ride, the Creta is one of India’s best-selling compact SUVs.',
      },
      {
        'brand': 'Skoda',
        'model': 'Kushaq',
        'price': '₹15.5 Lakh',
        'imgUrl':
            'https://svautowheels.com/wp-content/uploads/2023/02/h1-2.png',
        'brief': 'An affordable SUV with modern tech and a purely German feel.',
        'details':
            'The Skoda Kushaq comes with 1.0L and 1.5L TSI turbo petrol engines, offering zippy performance and solid highway manners. It’s built on the MQB-A0-IN platform, promising robust safety with a 5-star Global NCAP rating. Inside, it gets a 10-inch touchscreen, wireless Android Auto/Apple CarPlay, ventilated seats, and a two-spoke steering wheel. With European styling and solid build quality, it stands out in the mid-size SUV market.',
      },
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Trending Cars',
          style: TextStyle(
            color: const Color.fromARGB(255, 255, 203, 60),
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
          itemCount: carsList.length,
          itemBuilder: (context, index) {
            final item = carsList[index];
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
                    color: Color.fromARGB(255, 255, 203, 60),
                    width: 3,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    color: Color.fromARGB(255, 32, 32, 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(item['imgUrl']!, fit: BoxFit.cover),
                        Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${item['brand']} ${item['model']}",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(
                                    255,
                                    255,
                                    203,
                                    60,
                                  ),
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
