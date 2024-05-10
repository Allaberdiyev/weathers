import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:weather_ui/utils/string_extensions.dart';
// import 'package:weather_ui/widgets/weather_item.dart';

class MainScreen extends StatelessWidget {
  List<Map<String, dynamic>> data = [
    {
      "time": "12:00",
      "icon": CupertinoIcons.cloud_fill,
      "temp": "Now",
      "isSelected": true,
      "isSun": false
    },
    {
      "time": "14:00",
      "icon": CupertinoIcons.cloud_rain_fill,
      "temp": "22°",
      "isSelected": false,
      "isSun": false
    },
    // ... other data entries
  ];

  int count = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.ellipsis,
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildLocation(),
              SizedBox(height: 20),
              _buildWeatherContainer(),
              SizedBox(height: 40),
              _buildTodayInfo(),
              SizedBox(height: 15),
            ],
          ),
        ),
        drawer: const Drawer(),
      ),
    );
  }

  Widget _buildLocation() {
    return Row(
      children: const [
        Text(
          "Bandung,",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 10),
        Text(
          "Indonesia",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ],
    );
  }

  Widget _buildWeatherContainer() {
    return Container(
      width: 350,
      height: 460,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          Icon(
            CupertinoIcons.cloud_sun_fill,
            size: 80,
            color: Colors.white,
          ),
          SizedBox(height: 10),
          Text(
            "Heavy rain",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "Sunday, 02 Oct",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "24°",
            style: TextStyle(
              fontSize: 80,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          _buildWeatherDetails(),
        ],
      ),
    );
  }

  Widget _buildWeatherDetails() {
    return Row(
      children: [
        _buildDetailItem(
          icon: CupertinoIcons.wind,
          title: "Wind",
          value: "19.2km/j",
        ),
        _buildDetailItem(
          icon: CupertinoIcons.thermometer,
          title: "feels like",
          value: "25°",
        ),
        _buildDetailItem(
          icon: CupertinoIcons.sun_max,
          title: "Index uv",
          value: "2",
        ),
        _buildDetailItem(
          icon: CupertinoIcons.graph_square,
          title: "pressure",
          value: "1014 mbar",
        ),
      ],
    );
  }

  Widget _buildDetailItem(
      {required IconData icon, String? title, String? value}) {
    return Container(
      width: 175,
      height: 60,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.white54),
          left: BorderSide(color: Colors.white54),
        ),
      ),
      child: Row(
        children: [
          SizedBox(width: 20),
          Column(
            children: [
              SizedBox(height: 18),
              Icon(
                icon,
                color: Colors.white,
              ),
            ],
          ),
          SizedBox(width: 15),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTodayInfo() {
    return Row(
      children: const [
        Text(
          "Today",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        Spacer(),
        Text(
          "Next 7 Days",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.black54,
          ),
        ),
        SizedBox(width: 10),
        Icon(CupertinoIcons.right_chevron),
      ],
    );
  }
}
