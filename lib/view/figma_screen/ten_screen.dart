import 'package:flutter/material.dart';

class TenScreen extends StatefulWidget {
  const TenScreen({super.key});

  @override
  State<TenScreen> createState() => _TenScreenState();
}

class _TenScreenState extends State<TenScreen> {
  Map mapdata = {
    "text": "",
  };

  List<Map<String, dynamic>> historyList = [
    {
      "text": "",
      "image": "assets/images/wash_history_image.png",
      "price": "\$5.43",
      "time": "4:54 Min",
      "map_image": "assets/images/map_pin.png",
      "place": "1234 Barclay St, New York",
    },
    {
      "text": "",
      "image": "assets/images/wash_history_image.png",
      "price": "\$5.43",
      "time": "4:54 Min",
      "map_image": "assets/images/map_pin.png",
      "place": "1234 Barclay St, New York",
    },
    {
      "text": "white color",
      "image": "assets/images/wash_history_image.png",
      "price": "\$5.43",
      "time": "4:54 Min",
      "map_image": "assets/images/map_pin.png",
      "place": "1234 Barclay St, New York",
    },
    {
      "text": "white color",
      "map_image": "assets/images/map_pin.png",
      "image": "assets/images/wash_history_image.png",
      "price": "\$5.43",
      "time": "4:54 Min",
      "place": "1234 Barclay St, New York",
    },
    {
      "text": "",
      "image": "assets/images/wash_history_image.png",
      "price": "\$5.43",
      "map_image": "assets/images/map_pin.png",
      "time": "4:54 Min",
      "place": "1234 Barclay St, New York",
    },
    {
      "text": "",
      "image": "assets/images/wash_history_image.png",
      "price": "\$5.43",
      "time": "4:54 Min",
      "map_image": "assets/images/map_pin.png",
      "place": "1234 Barclay St, New York",
    },
    {
      "text": "",
      "image": "assets/images/wash_history_image.png",
      "price": "\$5.43",
      "time": "4:54 Min",
      "map_image": "assets/images/map_pin.png",
      "place": "1234 Barclay St, New York",
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: const Color(0xFF00AB6C),
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          SizedBox(width: screenWidth / 20),
                          const Text(
                            "13 September, 2022 - 08:00 AM",
                            style: TextStyle(
                              color: Color(0xFF898989),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight / 50),
                      Container(
                        width: 351,
                        height: 94,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFFEAEAEA),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    historyList[index]["image"],
                                    width: screenWidth / 5.6,
                                    height: screenHeight / 18,
                                  ),
                                  Text(
                                    historyList[index]["time"],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 17,
                                      color: Color(0xFF212121),
                                    ),
                                  ),
                                  SizedBox(width: screenWidth / 3.5),
                                  Text(
                                    historyList[index]["price"],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 17,
                                      color: Color(0xFF00AB6C),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(width: screenWidth / 5.5),
                                  Image.asset(
                                    historyList[index]["map_image"],
                                    width: screenWidth / 20,
                                    height: 30,
                                  ),
                                  SizedBox(width: screenWidth / 50),
                                  Text(
                                    historyList[index]["place"],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: Color(0xFF898989),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
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
