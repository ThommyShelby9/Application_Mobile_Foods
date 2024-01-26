import 'package:exoflutter/secondary_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        color: Colors.white,
        child: ListView(children: [
          const Text(
            "Find                  Your Best           Food",
            style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(181, 0, 0, 0)),
          ),
          const SizedBox(
            height: 30,
          ),
          const TextField(
            decoration: InputDecoration(
              labelText: "Search",
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 60,
            width: 100, // Adjust the height as needed
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 150,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(220, 243, 79, 67),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.fastfood),
                      Spacer(),
                      Text(
                        "Fast Food",
                        style: TextStyle(fontSize: 19, color: Colors.white),
                      ),
                    ],
                  ),
                  // Add your content here
                ),
                Container(
                  width: 170,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.food_bank),
                      Spacer(),
                      Text(
                        "Health Good",
                        style: TextStyle(fontSize: 19, color: Colors.black),
                      ),
                    ],
                  ),
                  // Add your content here
                ),
                Container(
                  width: 150,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(220, 243, 79, 67),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.fastfood),
                      Spacer(),
                      Text(
                        "Fast Food",
                        style: TextStyle(fontSize: 19, color: Colors.white),
                      ),
                    ],
                  ),
                  // Add your content here
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 400,
            width: 560, // Ajustez la largeur comme nécessaire
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 270,
                  child: _buildLargeItemContainer(
                    "assets/images/istockphoto-938742222-612x612.jpg",
                    "Meety pizza                       with beef",
                    Icons.attach_money,
                    "6,30",
                    Icons.star,
                    "4,5",
                    () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecondaryPage()));
                    },
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 270,
                  child: _buildLargeItemContainer(
                    "assets/images/istockphoto-1322539970-612x612.jpg",
                    "Description here",
                    Icons.attach_money,
                    "6,30",
                    Icons.star,
                    "4,5",
                    () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecondaryPage()));
                    },
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                 SizedBox(
                  width: 270,
                  child: _buildLargeItemContainer(
                    "assets/images/istockphoto-1322539970-612x612.jpg",
                    "Description here",
                    Icons.attach_money,
                    "6,30",
                    Icons.star,
                    "4,5",
                    () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecondaryPage()));
                    },
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }

  Widget _buildLargeItemContainer(
      String backgroundImage,
      String description,
      IconData icon1,
      String text1,
      IconData icon2,
      String text2,
      VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 250,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(backgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                description,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(icon1, color: const Color.fromARGB(255, 255, 174, 0)),
                      Text(
                        text1,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 23),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        text2,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Icon(icon2, color: Colors.yellow),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
