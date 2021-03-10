import 'package:flutter/material.dart';
import '../../data/data.dart';

class PokemonDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Pokemon pokemon = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
