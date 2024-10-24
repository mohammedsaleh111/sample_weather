import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_icons/weather_icons.dart';

class WeatherHome extends StatelessWidget {
  const WeatherHome({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    DateTime time = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Weather'),
        centerTitle: true,
        leading: const Icon(Icons.menu),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Color.fromARGB(255, 93, 174, 240),
              Color.fromARGB(255, 93, 174, 240),
              Color.fromARGB(255, 93, 174, 240),
              Colors.white,
              Colors.white,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
              width: size.width * 0.5,
              padding: const EdgeInsets.all(4),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blueGrey[900],
              ),
              child: Text(
                DateFormat('EEE, yy MMMM').format(time),
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: size.height * 0.25,
                  width: size.width * 0.65,
                  padding: const EdgeInsets.all(4.0),
                  alignment: Alignment.topLeft,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '30',
                        style: TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.circle_outlined, size: 40),
                          Text(
                            'sunny',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.topLeft,
              child: const Text(
                'now it feel like 25 °C actually 30 °C',
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
              height: size.height * 0.15,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              margin: const EdgeInsets.all(12),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.blueGrey[900],
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BoxedIcon(
                        WeatherIcons.humidity,
                        color: Colors.white,
                      ),
                      Column(
                        children: [
                          Text(
                            '78%',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Humidity',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.wind_power,
                        color: Colors.white,
                      ),
                      Column(
                        children: [
                          Text(
                            '8 m/s',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'wind',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.visibility_outlined,
                        color: Colors.white,
                      ),
                      Column(
                        children: [
                          Text(
                            '3.5 km',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Visibility',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Divider(
                color: Colors.blueGrey[700],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        DateFormat('EEE m').format(time),
                      ),
                      Row(
                        children: [
                          Icon(Icons.sunny,
                              color: Colors.blueGrey[700], size: 16),
                          const SizedBox(width: 4),
                          const Text('Sunny'),
                        ],
                      ),
                      const Text('25/30°'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        DateFormat('EEE m').format(time),
                      ),
                      Row(
                        children: [
                          Icon(Icons.sunny,
                              color: Colors.blueGrey[700], size: 16),
                          const SizedBox(width: 4),
                          const Text('Sunny'),
                        ],
                      ),
                      const Text('25/30°'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        DateFormat('EEE m').format(time),
                      ),
                      Row(
                        children: [
                          Icon(Icons.sunny,
                              color: Colors.blueGrey[700], size: 16),
                          const SizedBox(width: 4),
                          const Text('Sunny'),
                        ],
                      ),
                      const Text('25/30°'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
