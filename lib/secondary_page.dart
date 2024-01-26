import 'package:flutter/material.dart';

class SecondaryPage extends StatefulWidget {
  const SecondaryPage({super.key});

  @override
  State<SecondaryPage> createState() => _SecondaryPageState();
}

class _SecondaryPageState extends State<SecondaryPage> {
  get onPressed => null;

  get child => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(30),
            width: size.width * 0.9,
            height: size.height * 0.3,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage(
                    "assets/images/istockphoto-938742222-612x612.jpg"),
                alignment: Alignment.topCenter,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                const SizedBox(
                  height: 130,
                ),
                const Text(
                  "Meety pizza with      beef",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.attach_money),
                          Text(
                            "6.30",
                            style: TextStyle(
                              fontSize: 29,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(220, 243, 79, 67),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.remove),
                          Text(
                            "01",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.add),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star,
                            color: Color.fromARGB(220, 243, 79, 67)),
                        Text(
                          "4.9",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.timer,
                            color: Color.fromARGB(220, 243, 79, 67)),
                        Text(
                          "10 min",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.local_fire_department,
                            color: Color.fromARGB(220, 243, 79, 67)),
                        Text(
                          "328 cal",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    const Text(
                      "Homemade thin crust pizza, topped of with two types of cheese, bacon, ham, pepperoni, and hot sausage. A must-make recipe with a very classic sauce and this cake.",
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.only(left: 110, right: 110, top: 10, bottom: 10),
                        primary: Colors.red, // Couleur de fond rouge
                      ),
                      child: const Text("Add to Cart", style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(223, 255, 255, 255)),),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
