import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String titulo;
  int imageIndex;

  DetailPage({this.titulo, this.imageIndex});

  @override
  Widget build(BuildContext context) {
    print("imagen que llega ${this.imageIndex}");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRect(
              child: Hero(
                tag: 'mac${this.imageIndex}',
                child: Image.network(
                  'https://picsum.photos/250?image=${this.imageIndex}',
                  height: 360,
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ListTile(
              title: Text('Mackbook ${this.imageIndex}'),
            ),
          ],
        ),
      ),
    );
  }
}
