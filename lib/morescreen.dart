import 'package:cosmic/provider/apiprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ApiProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Consumer<ApiProvider>(
          builder: (context, value, child) {
            final users = value.users;
            print("Users is $users");
            return Scaffold(
              body: Container(
                constraints: const BoxConstraints.expand(),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/background.png"),
                      fit: BoxFit.cover),
                ),
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
/*
                      ListView.builder(
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return Card(
                              child: ListTile(
                                title: Text(
                                  "Item $index",
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                            );
                          })
*/
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                        ],
                      )
                    ],
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
