import 'package:flutter/material.dart';

import '../../data/dummy_data/user_json_data.dart';
import '../../model/user_model.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  SharedPreferences? prefs;
  List<UserModel> userModel = [];

  setInstance() async {
    prefs = await SharedPreferences.getInstance();
  }

  setData() {
    prefs!.setString("user_data", userModelToJson(userModel));
  }

  @override
  void initState() {
    // TODO: implement initState
    setInstance();
    userModel = userModelFromJson(userJsonData);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home View"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: userModel.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(userModel[index].name ?? ""),
                  subtitle: Text(userModel[index].company!.name ?? ""),
                ),
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: setData,
              child: const Text("Send Data"),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeSecondView(),
            ),
          );
        },
        child: const Icon(Icons.navigate_next_rounded),
      ),
    );
  }
}
