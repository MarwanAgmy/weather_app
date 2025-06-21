import 'package:flutter/material.dart';
import 'package:weather_app/widgets/text_field.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.blue,
        title: const Text(
          'Search City',
          //style: TextStyle(color: Colors.white),
        ),
      ),
      body: const SearchTextField(),
    );
  }
}
