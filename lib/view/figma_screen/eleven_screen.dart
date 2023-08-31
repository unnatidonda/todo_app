import 'package:flutter/material.dart';

class ElevenScreen extends StatefulWidget {
  const ElevenScreen({super.key});

  @override
  State<ElevenScreen> createState() => _ElevenScreenState();
}

class _ElevenScreenState extends State<ElevenScreen> {
  List<Map<String, dynamic>> arrayList = [
    {
      "color": const Color(0xFFF4F5F7),
      "itemname": "Ultra adidas 4D shoes",
      "image": "assets/images/shoes16.png",
      "price": "\$110",
    },
    {
      "color": const Color(0xFFF4F5F7),
      "itemname": "Stan smith shoes.",
      "image": "assets/images/shoes17.png",
      "price": "\$110",
    },
    {
      "color": const Color(0xFFF4F5F7),
      "itemname": "4DWFWD x Parley",
      "image": "assets/images/shoes18.png",
      "price": "\$110",
    },
    {
      "color": const Color(0xFFF4F5F7),
      "itemname": "Adizero adios pro 3.0",
      "image": "assets/images/shoes19.png",
      "price": "\$110",
    },
  ];
  List<Map<String, dynamic>> list = [
    {
      "color": const Color(0xFFF4F5F7),
      "itemname": "Nike ACG Mountain Fly \nLow SE",
      "image1": "assets/images/shoes20.png",
      "price": "\$110",
    },
    {
      "color": const Color(0xFFF4F5F7),
      "itemname": "Nike Air Force 1 '07 ESS",
      "image1": "assets/images/shoes21.png",
      "price": "\$110",
    },
    {
      "color": const Color(0xFFF4F5F7),
      "itemname": "Nike Air Max Dawn SE",
      "image1": "assets/images/shoes23.png",
      "price": "\$110",
    },
    {
      "color": const Color(0xFFF4F5F7),
      "itemname": "Nike Wearallday",
      "image1": "assets/images/shoes24.png",
      "price": "\$110",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 300,
              ),
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: arrayList[index]["color"],
                ),
                child: Container(
                  height: 294,
                  width: 171,
                  decoration: const BoxDecoration(
                    color: Color(0xFF000000),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              arrayList[index]["image"],
                              height: 150,
                              width: 171,
                            ),
                            Container(
                              height: 25,
                              width: 82,
                              decoration: const BoxDecoration(
                                color: Color(0xFFFFFFFF),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Row(
                                  children: [
                                    const SizedBox(width: 5),
                                    Container(
                                      height: 8,
                                      width: 8,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF1EBC24),
                                        borderRadius: BorderRadius.circular(100),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    const Text(
                                      "5,113 Sold",
                                      style: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Text(
                          arrayList[index]["itemname"],
                          style: const TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 16,
                            fontFamily: "Satoshi",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "Men’s shoes",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF92989E),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          arrayList[index]["price"],
                          style: const TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 20,
                            fontFamily: "Satoshi",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          height: 40,
                          width: 147,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Text(
                              textAlign: TextAlign.center,
                              "Place Bid",
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                fontFamily: "Satoshi",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Container(
            height: 84,
            width: 350,
            decoration: const BoxDecoration(
              color: Color(0xFF26282A),
            ),
            child: Image.asset(
              "assets/images/nike.png",
              height: 64,
              width: 64,
            ),
          ),
          // SizedBox(height: 15),
          Expanded(
            child: GridView.builder(
              itemCount: list.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 320,
              ),
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: list[index]["color"],
                ),
                child: Container(
                  height: 294,
                  width: 171,
                  decoration: const BoxDecoration(
                    color: Color(0xFF000000),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              arrayList[index]["image"],
                              height: 150,
                              width: 171,
                            ),
                            Container(
                              height: 25,
                              width: 82,
                              decoration: const BoxDecoration(
                                color: Color(0xFFFFFFFF),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Row(
                                  children: [
                                    const SizedBox(width: 5),
                                    Container(
                                      height: 8,
                                      width: 8,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF1EBC24),
                                        borderRadius: BorderRadius.circular(100),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    const Text(
                                      "5,113 Sold",
                                      style: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Text(
                          list[index]["itemname"],
                          style: const TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 13,
                            fontFamily: "Satoshi",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 3),
                        const Text(
                          "Men’s shoes",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF92989E),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          list[index]["price"],
                          style: const TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 20,
                            fontFamily: "Satoshi",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          height: 40,
                          width: 147,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Text(
                              textAlign: TextAlign.center,
                              "Place Bid",
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                fontFamily: "Satoshi",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
