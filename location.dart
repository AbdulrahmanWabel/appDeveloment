import 'package:flutter/material.dart';
import 'package:third_practice/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime(url: 'Asia/Riyadh', location: 'Riyadh', flag: 'saudi.webp', isDaytime: true),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png', isDaytime: true),
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png', isDaytime: true),
    WorldTime(url: 'Europe/Athens', location: 'Athens', flag: 'greece.png', isDaytime: true),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png', isDaytime: true),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png', isDaytime: true),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png', isDaytime: true),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png', isDaytime: true),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png', isDaytime: true),
  ];


  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    Navigator.pop(context, {
      'location': instance.location,
      'time': instance.time,
      'flag': instance.flag,
      'isDaytime': instance.isDaytime,
    });
  }

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Choose a Location'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: ListView.builder(
            itemCount: locations.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
                child: Card(
                  child: ListTile(
                    onTap: () {
                      updateTime(index);
                    },
                    title: Text(locations[index].location),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/${locations[index].flag}'),
                    ),
                  ),
                ),
              );
            }
        ),
      ),
    );
  }
}

