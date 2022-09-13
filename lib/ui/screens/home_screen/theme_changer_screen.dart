import 'package:darkmode_lightmode/ui/screens/home_screen/theme_changer_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeChangerScreen extends StatefulWidget {
  const ThemeChangerScreen({Key? key}) : super(key: key);

  @override
  State<ThemeChangerScreen> createState() => _ThemeChangerScreenState();
}

class _ThemeChangerScreenState extends State<ThemeChangerScreen> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChangerProvider>(context);

    return ChangeNotifierProvider(create: (context) {
      return ThemeChangerProvider();
    }, child: Consumer<ThemeChangerProvider>(builder: (context, model, child) {
      return Scaffold(

          ///
          ///  AppBar ===========================>>>
          ///
          appBar: AppBar(
            title: Text(
              'Theme Changer Screen',
              style: TextStyle(color: Colors.teal),
            ),
            toolbarHeight: 70,
            elevation: 1.5,
            centerTitle: true,
            leading: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 25,
                color: Colors.teal,
              ),
            ),
          ),

          ///
          ///  Body ==============================>>>
          ///

          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 50,
                      right: 50,
                      top: 25,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {
                                themeChanger.setTheme(ThemeMode.light);
                              },
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                      color: Colors.black, width: 0.5),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'White',
                              style: TextStyle(color: Colors.teal),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {
                                themeChanger.setTheme(ThemeMode.dark);
                              },
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                      color: Colors.black, width: 0.5),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Night',
                              style: TextStyle(color: Colors.teal),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Text Settings",
                    style: TextStyle(
                        //color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  ///
                  ///  Switch Buttons =========================>>>
                  ///
                  Row(
                    children: [
                      Text(
                        "Red Letter",
                        style: TextStyle(
                            //color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      Expanded(child: SizedBox()),
                      Switch(
                        value: model.isSwitched1,
                        onChanged: (value) {
                          model.setCheck1(value);
                        },
                        activeTrackColor: Colors.teal,
                        activeColor: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Layout Setting",
                    style: TextStyle(
                        //color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Book Illustration",
                        style: TextStyle(
                            // color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      Expanded(child: SizedBox()),
                      Switch(
                        value: model.isSwitched2,
                        onChanged: (value) {
                          model.setCheck2(value);
                        },
                        activeTrackColor: Colors.teal,
                        activeColor: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        "One Verse Per Line",
                        style: TextStyle(
                            //color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      Expanded(child: SizedBox()),
                      Switch(
                        value: model.isSwitched3,
                        onChanged: (value) {
                          model.setCheck3(value);
                        },
                        activeTrackColor: Colors.teal,
                        activeColor: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        "Headings",
                        style: TextStyle(
                            //color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      Expanded(child: SizedBox()),
                      Switch(
                        value: model.isSwitched4,
                        onChanged: (value) {
                          model.setCheck4(value);
                        },
                        activeTrackColor: Colors.teal,
                        activeColor: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        "Verse Numbers",
                        style: TextStyle(
                            // color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      Expanded(child: SizedBox()),
                      Switch(
                        value: model.isSwitched5,
                        onChanged: (value) {
                          model.setCheck5(value);
                        },
                        activeTrackColor: Colors.teal,
                        activeColor: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  ///
                  /// Sign in Button ===============================>>>
                  ///
                  Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(2),
                      ),
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Center(
                            child: Text(
                              "Done",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ))),
                ],
              ),
            ),
          ));
    }));
  }
}
