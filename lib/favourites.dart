import 'package:flutter/material.dart';

class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({super.key});

  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.png"), fit: BoxFit.cover),
        ),
        child : Container(
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
                          // _key.currentContext?.openDrawer();
                        },
                      ),
                      const Text(
                        "Favourites",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      Image.asset("images/user_profile.png"),
                    ],
                  ),
                ),
                Card(
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
                                      "As the hours pass I will let u know play car racing  games",
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
                Card(
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
                                      "As the hours pass I will let u know play car racing  games",
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
                Card(
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
                                      "As the hours pass I will let u know play car racing  games",
                                      style: TextStyle(
                                          color: Colors.white),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
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
                Card(
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
                                      "As the hours pass I will let u know play car racing  games",
                                      style: TextStyle(
                                          color: Colors.white),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
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
                Card(
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
                                      "As the hours pass I will let u know play car racing  games",
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
                Card(
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
                                      "As the hours pass I will let u know play car racing  games",
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
