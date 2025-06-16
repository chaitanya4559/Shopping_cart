import 'package:flutter/material.dart';
import 'package:shopping_cart/all_cars.dart';
import 'package:shopping_cart/electric_cars.dart';
import 'package:shopping_cart/sport_cars.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectednumber = 0;
  final List<Widget> _pages = [allCars(), SportsCar(), ElectricCars()];
  void _onTap(int indexnumber) {
    setState(() {
      _selectednumber = indexnumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectednumber],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        unselectedItemColor: const Color.fromARGB(255, 110, 110, 110),
        currentIndex: _selectednumber,
        onTap: _onTap,
        backgroundColor: const Color.fromARGB(255, 32, 32, 32),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.car_crash),
            label: 'Trending',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_bar),
            label: 'Sports',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.electric_car),
            label: "Electric",
          ),
        ],
      ),
    );
  }
}
