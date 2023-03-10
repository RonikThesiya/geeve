import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geeve/screens/const.dart';
import 'package:geeve/screens/shared.dart';
import 'package:geeve/screens/signup_screen.dart';

class NonprofitScreen extends StatefulWidget {
  const NonprofitScreen({Key? key}) : super(key: key);

  @override
  State<NonprofitScreen> createState() => _NonprofitScreenState();
}

class _NonprofitScreenState extends State<NonprofitScreen> {
  Color c1 = Color(0xfffa7914);
  Color c2 = Color(0xff7d7f86);
  Color c3 = Color(0xff7d7f86);
  Color c4 = Color(0xff7d7f86);
  Color c5 = Color(0xff7d7f86);
  Color c6 = Color(0xff7d7f86);


  String uFirstname = preferences.getString(SharedPreference.userFirstname)??"";
  String uLastname = preferences.getString(SharedPreference.userLastName)??"";
  String uPhone = preferences.getString(SharedPreference.userPhone)??"";
  String uEmail = preferences.getString(SharedPreference.userEmail)??"";
  String uPassword = preferences.getString(SharedPreference.userPassword)??"";
  String uRepassword = preferences.getString(SharedPreference.userRepassword)??"";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.8,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Color(0xfff4ede9),
                        offset: Offset(0, 5),
                        blurRadius: 10)
                  ], color: Colors.white, shape: BoxShape.circle),
                  child: Image.asset("assets/homelogo.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 20),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.pencil_circle_fill,
                      size: 25,
                      color: Color(0xfffa7914),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Jesus House Toronto",
                      style: TextStyle(fontSize: 22),
                    ),
                  ],
                ),
              ),
              Text("asma@jesushouse.com"),
              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      c1 = Color(0xfffa7914);
                      c2 = Color(0xff7d7f86);
                      c3 = Color(0xff7d7f86);
                      c4 = Color(0xff7d7f86);
                      c5 = Color(0xff7d7f86);
                      c6 = Color(0xff7d7f86);
                    });
                  },
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          top: BorderSide(width: 0.5, color: Color(0xff7d7f86)),
                          bottom:
                              BorderSide(width: 0.25, color: Color(0xff7d7f86)),
                        )),
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Image.asset(
                          "assets/dashboard.png",
                          color: c1,
                          height: 18,
                          width: 18,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Dashboard",
                          style: TextStyle(fontSize: 18, color: c1),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    c1 = Color(0xff7d7f86);
                    c2 = Color(0xfffa7914);
                    c3 = Color(0xff7d7f86);
                    c4 = Color(0xff7d7f86);
                    c5 = Color(0xff7d7f86);
                    c6 = Color(0xff7d7f86);
                  });
                },
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        top: BorderSide(width: 0.5, color: Color(0xff7d7f86)),
                        bottom:
                            BorderSide(width: 0.25, color: Color(0xff7d7f86)),
                      )),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Image.asset(
                        "assets/donation.png",
                        color: c2,
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Donation Pages",
                          style: TextStyle(fontSize: 18, color: c2),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    c1 = Color(0xff7d7f86);
                    c2 = Color(0xff7d7f86);
                    c3 = Color(0xfffa7914);
                    c4 = Color(0xff7d7f86);
                    c5 = Color(0xff7d7f86);
                    c6 = Color(0xff7d7f86);
                  });
                },
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        top: BorderSide(width: 0.5, color: Color(0xff7d7f86)),
                        bottom:
                            BorderSide(width: 0.25, color: Color(0xff7d7f86)),
                      )),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Image.asset(
                        "assets/text2give.png",
                        color: c3,
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Text 2 Give",
                        style: TextStyle(fontSize: 18, color: c3),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    c1 = Color(0xff7d7f86);
                    c2 = Color(0xff7d7f86);
                    c3 = Color(0xff7d7f86);
                    c4 = Color(0xfffa7914);
                    c5 = Color(0xff7d7f86);
                    c6 = Color(0xff7d7f86);
                  });
                },
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        top: BorderSide(width: 0.5, color: Color(0xff7d7f86)),
                        bottom:
                            BorderSide(width: 0.25, color: Color(0xff7d7f86)),
                      )),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Image.asset(
                        "assets/transaction.png",
                        color: c4,
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Transactions",
                        style: TextStyle(fontSize: 18, color: c4),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    c1 = Color(0xff7d7f86);
                    c2 = Color(0xff7d7f86);
                    c3 = Color(0xff7d7f86);
                    c4 = Color(0xff7d7f86);
                    c5 = Color(0xfffa7914);
                    c6 = Color(0xff7d7f86);
                  });
                },
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        top: BorderSide(width: 0.5, color: Color(0xff7d7f86)),
                        bottom:
                            BorderSide(width: 0.25, color: Color(0xff7d7f86)),
                      )),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Image.asset(
                        "assets/analystic.png",
                        color: c5,
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Analytics",
                        style: TextStyle(fontSize: 18, color: c5),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    c1 = Color(0xff7d7f86);
                    c2 = Color(0xff7d7f86);
                    c3 = Color(0xff7d7f86);
                    c4 = Color(0xff7d7f86);
                    c5 = Color(0xff7d7f86);
                    c6 = Color(0xfffa7914);
                  });
                },
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        top: BorderSide(width: 0.5, color: Color(0xff7d7f86)),
                        bottom:
                            BorderSide(width: 0.5, color: Color(0xff7d7f86)),
                      )),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Image.asset(
                        "assets/setting.png",
                        color: c6,
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Settings",
                        style: TextStyle(fontSize: 18, color: c6),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shadowColor: Color(0xffdee1e6),
                            elevation: 10,
                            backgroundColor: Color(0xfffa7914),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        onPressed: () {
                          preferences.clearUserItem();
                          Navigator.pushReplacementNamed(context, "signup");
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Logout",
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.logout,
                              color: Colors.white,
                            )
                          ],
                        ))),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 100,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(30))),
        backgroundColor: Color(0xfffa7914),
        title: TextField(
          decoration: InputDecoration(
            hintText: "Non Profit",
            hintStyle: TextStyle(color: Color(0xff7d7f86)),
            prefixIcon: Icon(
              Icons.search,
              color: Color(0xff7d7f86),
            ),
            filled: true,
            fillColor: Color(0xfff6f6f6),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xfff6f6f6)),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 35, left: 35),
                    child: Text(
                      "Suggestions",
                      style: TextStyle(fontSize: 18, color: Color(0xfffa7914)),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 35, right: 35),
                child:
                       InkWell(
                         onDoubleTap: () {
                           showDialog(
                               context: context,
                               builder: (context) {
                                 return AlertDialog(
                                   title: Text("Are You Sure??"),
                                   actions: [
                                     TextButton(
                                         onPressed: () {
                                           Navigator.pop(context);
                                         },
                                         child: Text(
                                           "Cancle",
                                           style: TextStyle(
                                               color: Colors.red),
                                         )),
                                     ElevatedButton(
                                         style:
                                         ElevatedButton.styleFrom(
                                           backgroundColor: Colors.red,
                                         ),
                                         onPressed: () {
                                           setState(() {
                                             preferences.clearUserItem();
                                             // preferences.clearUserItem(
                                             //   firstName: uFirstname,
                                             //   lastName: uLastname,
                                             //   phone: uPhone,
                                             //   password: uPassword,
                                             //   repassword: uRepassword,
                                             // );
                                             print(uFirstname);


                                           });

                                           Navigator.pop(context);
                                         },
                                         child: Text("Delete")),
                                   ],
                                 );
                               });
                         },
                         child: Container(
                          height: 70,
                          decoration: BoxDecoration(
                              border: Border(
                            top: BorderSide(width: 0.5, color: Colors.black26),
                            bottom:
                                BorderSide(width: 0.5, color: Colors.black26),
                          )),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                // height: MediaQuery.of(context).size.height *
                                //     0.4 /
                                //     5,
                                // width: MediaQuery.of(context).size.height * 0.22,
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "${uFirstname} " "${uLastname}",
                                      // "${dataList[index].firstname} "
                                      // "${dataList[index].lastname}",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text("${uPhone}",
                                      // dataList[index].phone!,
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xff7d7f86)),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                  // height: MediaQuery.of(context).size.height * 0.4 / 5,
                                  // width:
                                  //     MediaQuery.of(context).size.height * 0.08,
                                  alignment: Alignment.centerLeft,
                                  child: Text( "${uPassword}",
                                    // dataList[index].password!,
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xff7d7f86)),
                                  )),
                              IconButton(
                                  onPressed: () {


                                    Navigator.push(context, MaterialPageRoute(builder: (context){return SignUpScreen();}));

                                    // data.add(userDetails(
                                    //   firstname: dataList[index].firstname,
                                    //   lastname: dataList[index].lastname,
                                    //   phone: dataList[index].phone,
                                    //   email: dataList[index].email,
                                    //   password: dataList[index].password,
                                    //   rePassword: dataList[index].rePassword,
                                    // ));
                                    //
                                    // print(dataList[index].firstname);
                                    // print(dataList[index].lastname);
                                    // print(dataList[index].phone);
                                    // print(dataList[index].email);
                                    // print(dataList[index].password);
                                    // print(dataList[index].rePassword);




                                    // Navigator.pushNamed(context, 'signup',);
                                    // Navigator.pushReplacementNamed(
                                    //     context, 'signup',
                                    //     arguments: dataList[index]);
                                  },
                                  icon: Icon(
                                    Icons.edit,
                                    size: 30,
                                    color: Color(0xfffa7914),
                                  ))
                            ],
                          ),
                      ),
                       )
                    ),

            ],
          ),
        ],
      ),
    ));
  }
}
