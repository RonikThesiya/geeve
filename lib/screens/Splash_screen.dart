import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  PageController controller = PageController();
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xffffffff),
            body: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset("assets/background.png"),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/logo.png",
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: MediaQuery.of(context).size.width * 0.4,
                    ),
                    Center(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.width * 0.8,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: PageView.builder(
                            controller: controller,
                            onPageChanged: (index) {
                              dotchange(index);
                            },
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return PageView(
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                        "assets/intro.png",
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.20,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.6,
                                      ),
                                      SizedBox(height: 18),
                                      Text(
                                        "Let's get started",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      SizedBox(height: 15),
                                      Text(
                                          "Nemo enim ipsam voluptatem quia voluptas sit",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xff7d7f86))),
                                      SizedBox(height: 5),
                                      Text(
                                          "aspernatur aut odit aut fugit, sed quia ",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xff7d7f86))),
                                      SizedBox(height: 5),
                                      Text("consequuntur magni dolores",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xff7d7f86))),
                                    ],
                                  ),
                                ],
                              );
                            }),
                      ),
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                        width: MediaQuery.of(context).size.width,
                        child: DotsIndicator(
                            decorator: DotsDecorator(
                              activeColor: Color(0xfffa7914),
                            ),
                            dotsCount: 3,
                            position: i.toDouble())),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.07,
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shadowColor: Color(0xffdee1e6),
                                elevation: 10,
                                backgroundColor: Color(0xfffa7914),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                                
                              ),

                              onPressed: () {
                                Navigator.pushReplacementNamed(context, "/");
                              },
                              child: Text(
                                "Create Account",
                                style: TextStyle(fontSize: 16),
                              ))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 100),
                      child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.07,
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: ElevatedButton(
                               style: ElevatedButton.styleFrom(
                              shadowColor: Color(0xffdee1e6),
                          elevation: 10,
                          backgroundColor: Color(0xffffffff),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))

                      ),
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, "sigin");
                              },

                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xfffa7914)),
                              ))),
                    ),
                  ],
                ),
              ],
            )));
  }

  void dotchange(int index) {
    setState(() {
      i = index;
    });
  }
}
