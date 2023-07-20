import 'package:flutter/material.dart';
import 'package:third_practice/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setUpWorldTime() async {
    WorldTime instance =
    WorldTime(location: 'Riyadh', flag: 'saudi.png', url: 'Asia/Riyadh', isDaytime: true);
    await instance.getTime();

    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytime': instance.isDaytime,
    });
  }

  @override
  void initState() {
    super.initState();
    setUpWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(80.0),
        child: Center(
          child: SpinKitThreeBounce(
            color: Colors.white,
            size: 50.0,
          ),
        ),
      )),
    );
  }
}
