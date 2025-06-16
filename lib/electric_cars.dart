import 'package:flutter/material.dart';
import 'package:shopping_cart/detail_page.dart';

class ElectricCars extends StatelessWidget {
  const ElectricCars({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> electricCarsList = [
      {
        'brand': 'Tata',
        'model': 'Nexon EV',
        'price': '₹15.5 Lakh',
        'imgUrl':
            'https://www.motorbeam.com/wp-content/uploads/Tata-Nexon-Dark-1200x900.jpg',
        'brief':
            'India’s most popular electric SUV with great range and safety.',
        'details':
            'The Tata Nexon EV comes equipped with a 40.5 kWh battery pack delivering an ARAI-certified range of up to 465 km. It generates 143 PS of power and 215 Nm of torque, providing a smooth and silent drive. The cabin is packed with features like a 10.25-inch touchscreen infotainment system, ventilated front seats, and wireless Android Auto and Apple CarPlay. With a 5-star Global NCAP safety rating, six airbags, electronic stability control, and hill hold, it ensures a secure ride. Fast charging capabilities enable 10% to 80% charge in just 56 minutes using a DC fast charger.',
      },
      {
        'brand': 'Mahindra',
        'model': 'BE6',
        'price': '₹23.8 Lakh',
        'imgUrl':
            'https://th-i.thgim.com/public/life-and-style/8ekapy/article68926633.ece/alternates/FREE_1200/BE%206e_Picture%2002.jpeg',
        'brief':
            'A stylish electric SUV offering long range and premium features.',
        'details':
            'The upcoming Mahindra BE6 is expected to feature a 60+ kWh battery offering a range of over 500 km, making it ideal for long-distance electric travel. Its futuristic coupe-SUV design is enhanced by dynamic LED light bars and a rugged road presence. Inside, the cabin will offer a connected and eco-conscious interior with a panoramic sunroof, large touchscreen infotainment, and Level 2 Advanced Driver Assistance Systems (ADAS). The BE6 combines style and sustainability with an expected launch scheduled for late 2025.',
      },
      {
        'brand': 'Kia',
        'model': 'EV6',
        'price': '₹23.4 Lakh',
        'imgUrl':
            'https://malikkia.in/wp-content/uploads/2024/07/electrifying-performance-1024-by-865.webp',
        'brief': 'A smart electric SUV with spacious cabin and modern tech.',
        'details':
            'The Kia EV6 boasts a large 77.4 kWh battery and delivers an impressive range of up to 528 km (WLTP). With 325 PS of power and 605 Nm of torque in the AWD version, the EV6 can sprint from 0 to 100 km/h in just 5.2 seconds. The cabin is high-tech, featuring dual 12.3-inch curved displays, a 14-speaker Meridian audio system, and ultra-fast 800V charging that powers the battery from 10% to 80% in only 18 minutes. A refined blend of performance, design, and luxury makes the EV6 one of the most advanced EVs available today.',
      },
      {
        'brand': 'BMW',
        'model': 'i4',
        'price': '₹72.5 Lakh',
        'imgUrl':
            'https://www.bmwhk.com/content/dam/bmw/common/all-models/i-series/i4/onepager/bmw-i4-edrive-40-onepager-sp-desktop.jpg',
        'brief':
            'A luxury electric sedan with thrilling performance and range.',
        'details':
            'The BMW i4 is a premium electric sedan that blends BMW’s iconic driving dynamics with cutting-edge electric technology. It features an 83.9 kWh battery delivering a range of up to 590 km (WLTP) and is powered by a 340 PS motor producing 430 Nm of torque. It accelerates from 0 to 100 km/h in just 5.7 seconds. Inside, the car features BMW’s iDrive 8 operating system, dual curved displays, and a luxurious cabin with adaptive suspension and multiple drive modes, offering comfort and sportiness in equal measure.',
      },
      {
        'brand': 'Tesla',
        'model': 'Model 3',
        'price': '₹45 Lakh',
        'imgUrl':
            'https://cdn.motor1.com/images/mgl/2NAPoK/s3/nuova-tesla-model-3-2023.jpg',
        'brief':
            'World-renowned electric car with Autopilot and fast acceleration.',
        'details':
            'The Tesla Model 3 is a benchmark in the electric vehicle market, known for its minimalist design and advanced technology. It comes in multiple variants, with battery capacities ranging from 57.5 kWh to 82 kWh, offering up to 629 km of range (WLTP) in the Long Range version. The Performance variant boasts a 0–100 km/h time of just 3.3 seconds. It features Tesla’s signature 15-inch touchscreen, full self-driving hardware, over-the-air updates, and a premium sound system. With vegan leather interiors and a sleek design, it is both futuristic and functional.',
      },
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'EV s',
          style: TextStyle(
            color: const Color.fromARGB(255, 20, 151, 0),
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
          itemCount: electricCarsList.length,
          itemBuilder: (context, index) {
            final item = electricCarsList[index];
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
                    color: const Color.fromARGB(255, 20, 151, 0),
                    width: 3,
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
                                  color: const Color.fromARGB(255, 20, 151, 0),
                                ),
                              ),
                              Text(
                                item['price'] ?? '',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 20, 151, 0),
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
