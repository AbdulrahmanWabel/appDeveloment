import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen()),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Flutter 101"),
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 125,
                    width: 125,
                    child: Icon(
                      Icons.person_rounded,
                      size: 96,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  SizedBox(
                    width: 32,
                  ),
                  Column(
                    children: [
                      Text(
                        "Abdulrahman Alwabel",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Software Engineer",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Container(
                            child: Icon(
                              Icons.mail,
                              size: 32,
                              color: Colors.white,
                            ),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Icon(
                              Icons.phone,
                              size: 32,
                              color: Colors.white,
                            ),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Icon(
                              Icons.sms,
                              size: 32,
                              color: Colors.white,
                            ),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "About",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Software Engineering Student, Interested in Front-End Development & UI/UX Design",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Skills",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    child: Center(
                        child: Text(
                      "HTML",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    )),
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    child: Center(
                        child: Text(
                      "CSS",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    )),
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    child: Center(
                        child: Text(
                      "JS",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    )),
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    child: Center(
                        child: Text(
                      "UI/UX",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    )),
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Container(
                    child: Center(
                        child: Text(
                      "HTML",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    )),
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    child: Center(
                        child: Text(
                      "CSS",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    )),
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    child: Center(
                        child: Text(
                      "JS",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    )),
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    child: Center(
                        child: Text(
                      "UI/UX",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    )),
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Container(
                    child: Center(
                        child: Text(
                      "HTML",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    )),
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    child: Center(
                        child: Text(
                      "CSS",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    )),
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    child: Center(
                        child: Text(
                      "JS",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    )),
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    child: Center(
                        child: Text(
                      "UI/UX",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    )),
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
