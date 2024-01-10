import 'package:cosmic/favourites.dart';
import 'package:cosmic/morescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // This widget is the root of your application.
  bool click = true;
  bool coldDrink = true;
  bool wine = true;
  int currentIndex = 0;
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp
    ]);
    const desc =
        "Mars is the fourth planet from the Sun and the second smallest planet in the Solar System, only being larger than Mercury.In the English language,Mars is named for the Roman god of war";
    const String solarText =
        "The Solar System is  the gravational bound system of the sun and the objects that orbit it.It formed 4.6 billion years ago from the gravitational collapse of a gian t";

    final SearchController controller = SearchController();
    String toolbarHeading = "Solar System";
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFEFEFEF)),
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      home: Scaffold(
        extendBody: true,
        key: _key,
        body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.png"), fit: BoxFit.cover),
          ),
          child: IndexedStack(
            index: currentIndex,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 30),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Card(
                        color: Colors.black38,
                        elevation: 20,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              child: Image.asset("images/left_menu.png"),
                              onTap: () {
                                // Scaffold.of(context).openDrawer();
                                _key.currentState?.openDrawer();
                              },
                            ),
                            const Text(
                              "Solar System",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            Image.asset("images/user_profile.png"),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const ScrollPhysics(),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FloatingActionButton.extended(
                              label: const Text(
                                'Earth',
                                style: TextStyle(color: Colors.white),
                              ), // <-- Text
                              backgroundColor: Colors.black38,
                              icon: Image.asset("images/earth.png"),
                              onPressed: () {},
                            ),
                            FloatingActionButton.extended(
                              label: const Text(
                                'Venus',
                                style: TextStyle(color: Colors.white),
                              ), // <-- Text
                              backgroundColor: Colors.black38,
                              icon: Image.asset("images/venus.png"),
                              onPressed: () {},
                            ),
                            FloatingActionButton.extended(
                              label: const Text(
                                'Mercury',
                                style: TextStyle(color: Colors.white),
                              ), // <-- Text
                              backgroundColor: Colors.black38,
                              icon: Image.asset("images/mercury.png"),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Card(
                          color: Colors.black38,
                          elevation: 20,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: SizedBox(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 15, top: 15, bottom: 15, right: 15),
                                  child: Text(
                                    "Planet of the day",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Image.asset("images/mars.png"),
                                      flex: 1,
                                    ),
                                    const Expanded(
                                      flex: 2,
                                      child: Padding(
                                        padding: EdgeInsets.only(bottom: 15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Text("Mars",
                                                style: TextStyle(
                                                    color: Colors.teal,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18),
                                                textAlign: TextAlign.left),
                                            Text(
                                              desc,
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Card(
                          color: Colors.black38,
                          elevation: 20,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child:  SizedBox(
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    toolbarHeading.toString(),
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Text(
                                    "$solarText",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const FavouritesScreen(),
              const MoreScreen()
            ],
          ),
        ),
        bottomNavigationBar: Container(
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
              switch(index){
                case 0:{
                  toolbarHeading = "Solar System";
                }
                case 1:{
                  toolbarHeading = "Favourites";
                }
                case 2:{
                  toolbarHeading = "More";
                }
              }
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black38,
            selectedItemColor: Colors.tealAccent,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.heart_broken_sharp), label: 'Like'),
              BottomNavigationBarItem(icon: Icon(Icons.more_horiz_outlined), label: 'More'),
            ],
          ),
        ),
        drawer: const Drawer(
          backgroundColor: Colors.black38,
        ),
      ),
    );
  }

}
