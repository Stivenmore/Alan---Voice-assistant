import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                'https://thumbs.dreamstime.com/z/feliz-a%C3%B1o-nuevo-ilustraci%C3%B3n-de-tarjetas-felicitaci%C3%B3n-gran-tama%C3%B1o-223102019.jpg'),
          ],
        ),
      ),
    );
  }
}
