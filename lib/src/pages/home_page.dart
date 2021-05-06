import 'package:flutter/material.dart';
import 'package:hero_animation/src/pages/detail_page.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Animation'),
      ),
      body: _ListadoItems(),
    );
  }
}

class _ListadoItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, i) {
          // print(i);
          return _CrearCard(
            i: i,
          );
        },
      ),
      // child: ListView(
      //   children: [
      //     _CrearCard(),
      //     _CrearCard(),
      //     _CrearCard(),
      //   ],
      // ),
    );
  }
}

class _CrearCard extends StatelessWidget {
  int i;

  _CrearCard({@required this.i});

  @override
  Widget build(BuildContext context) {
    // print(this.i);
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        print('javi $i');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              imageIndex: i,
              titulo: 'Macbook $i',
            ),
          ),
        );
      },
      child: Container(
        // width: size.width * 0.9,
        height: size.height * 0.41,
        padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 10.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Stack(
                children: [
                  Container(
                    height: size.height * 0.23,
                    child: Hero(
                      tag: 'mac$i',
                      child: Image.network(
                        'https://picsum.photos/250?image=${i}',
                        fit: BoxFit.fill,
                        width: size.width,
                      ),
                    ),
                    // child: Image.asset(
                    //   imgUrl,
                    //   fit: BoxFit.fill,
                    //   width: size.width,
                    // ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          // borderRadius: BorderRadius.only(
                          //   bottomLeft: const Radius.circular(10.0),
                          //   bottomRight: const Radius.circular(10.0),
                          // ),
                        ),
                        width: size.width,
                        padding: EdgeInsets.only(
                          top: 7.0,
                          bottom: 7.0,
                        ),
                        child: Text(
                          'Macbook ${i + 1}',
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.clip,
                          maxLines: 3,
                          style: TextStyle(
                              shadows: [
                                Shadow(
                                    blurRadius: 10.0,
                                    color: Colors.black,
                                    offset: Offset(-5.0, 5.0))
                              ],
                              color: Colors.white,
                              fontSize: 23.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Frutiger Lt Std'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: size.width * 0.9,
                // height: 200.0,
                padding: EdgeInsets.only(left: 20.0, top: 10.0, right: 10.0),
                child: Text(
                  '${i + 1}. Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto.',
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  maxLines: 3,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontFamily: 'Frutiger Lt Std'),
                ),
              ),
              SizedBox(
                height: 10.0,
              )
            ],
          ),
        ),
      ),
    );

    // return Container(
    //   color: Colors.transparent,
    //   child: Card(
    //       semanticContainer: true,
    //       clipBehavior: Clip.antiAliasWithSaveLayer,
    //       elevation: 7,
    //       shape: RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(9.0),
    //       ),
    //       margin: EdgeInsets.all(10),
    //       child: Stack(
    //         children: [
    //           Positioned.fill(
    //             child: Image.network(
    //               'https://picsum.photos/250?image=9',
    //               fit: BoxFit.fill,
    //               // width: MediaQuery.of(context).size.width,
    //             ),
    //           ),
    //         ],
    //       )),
    // );
  }
}
