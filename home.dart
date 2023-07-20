import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  dynamic data = {};

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context)!.settings.arguments;
    print(data);

    String bgImage = data['isDaytime'] ? 'day.png' : 'night.png';
    Color? bgColor = data['isDaytime'] ? Colors.blue : Colors.indigo[700];


    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/$bgImage"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 80.0),
          child: Column(
            children: [
              Center(
                child: ElevatedButton(
                      onPressed: () async {
                        dynamic result = await Navigator.pushNamed(context, '/location');
                          setState(() {
                            data = {
                              'time': result['time'],
                              'location': result['location'],
                              'isDaytime': result['isDaytime'],
                              'flag': result['flag']
                            };
                          });
                      },
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    child: Text(
                      "Edit Location",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    )),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data['location'],
                    style: TextStyle(
                      fontSize: 32,
                      letterSpacing: 2.0,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                data['time'],
                style: TextStyle(
                  fontSize: 64,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
