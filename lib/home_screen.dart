import 'package:counterapplication/controller/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Builder(builder: (context) {
              var provider = context.watch<HomeProvider>();
              return Text(
                provider.count.toString(),
                style: TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              );
            }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    var provider = context.read<HomeProvider>();
                    provider.remove();
                  },
                  child: Icon(Icons.remove)),
              SizedBox(
                width: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    var provider = context.read<HomeProvider>();
                    provider.reset();
                  },
                  child: Icon(Icons.restore)),
              SizedBox(
                width: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    var provider = context.read<HomeProvider>();
                    provider.add();
                  },
                  child: Icon(Icons.add))
            ],
          )
        ],
      ),
    );
  }
}
