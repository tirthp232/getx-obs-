import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Create Events'),
    );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  String title;
  MyHomePage({super.key, required this.title});

  HomeController controller = Get.put(HomeController());
  var select;

  @override
  Widget build(BuildContext context) {
    print("build method");
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text('select Icon'),
            const SizedBox(
              height: 10,
            ),
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.black,
              child: Obx(
                () => Icon(controller.icon[controller.selectIndex.value]),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                  width: 20,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: controller.icon.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      controller.selectIndex.value = index;
                      print(controller.selectIndex.value == index);
                      print(index);
                      print(controller.selectIndex);
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.teal,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        width: 50,
                        child: Obx(
                          () => CircleAvatar(
                            backgroundColor:
                                controller.selectIndex.value == index
                                    ? Colors.amber
                                    : Colors.black,
                            child: Icon(
                              controller.icon[index],
                            ),
                          ),
                        )),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
