import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

import 'package:progresso/progresso.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sua musica',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PlayPage(),
    );
  }
}

class PlayPage extends StatefulWidget {
  const PlayPage({Key? key}) : super(key: key);

  @override
  _PlayPageState createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 75.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.expand_more_outlined,
            color: Colors.black,
            size: 45,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.list, color: Colors.black, size: 30))
        ],
      ),
      body: Padding(
          padding:
              const EdgeInsets.fromLTRB(0, 30, 0, 0), //left ,top, rigth, bottom
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: CarouselSlider.builder(
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int itemIndex,
                              int pageViewIndex) =>
                          ImagemLista(),
                      options: CarouselOptions(
                          height: 350,
                          enlargeCenterPage: true,
                          enableInfiniteScroll: false))),
              SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.favorite_border),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 250,
                      height: 20,
                      child: Marquee(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        blankSpace: 20.0,
                        startPadding: 10.0,
                        pauseAfterRound: Duration(seconds: 1),
                        decelerationDuration: Duration(milliseconds: 2000),
                        accelerationDuration: Duration(seconds: 1),
                        text: 'PEDA??O DE PECADO - Jo??o Gomes\t',
                        style: TextStyle(
                          color: Colors.red[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(Icons.more_vert_outlined)
                  ],
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Jo??o Gomes\t',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w400,
                        fontSize: 13),
                  ),
                  Container(
                    height: 15,
                    width: 15,
                    child: Image.network(
                        'https://assets.suamusica.com.br/img/perfil_icon.png'),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Container(
                color: Colors.grey.shade300,
                height: 35,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                          'https://cdn-icons-png.flaticon.com/512/124/124034.png'),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                          'https://cdn-icons-png.flaticon.com/512/2111/2111402.png'),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                          'https://cdn-icons-png.flaticon.com/512/1384/1384053.png'),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                          'https://cdn-icons-png.flaticon.com/512/179/179342.png'),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                          'https://cdn-icons-png.flaticon.com/128/1828/1828956.png'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 10, 15, 6),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('00:00'), Text('02:37')],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0, 20, 15),
                child: Progresso(
                  //progress: 0.5,
                  progressColor: Colors.red,
                  backgroundColor: Colors.grey.shade400,
                  progressStrokeCap: StrokeCap.round,
                  backgroundStrokeWidth: 1,
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.shuffle_outlined,
                          size: 20,
                        )),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 28),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.skip_previous_outlined,
                              size: 70,
                            ),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.pause_circle_outline,
                              size: 75,
                            ),
                          ),
                          SizedBox(width: 20),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.skip_next_outlined,
                              size: 70,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.repeat_outlined,
                        size: 20,
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.cast)),
                  Text('Conectar dispositivo')
                ],
              )
            ],
          )),
    );
  }
}

class ImagemLista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          'https://images.suamusica.com.br/qy2sGt-shIvwCqrMg0kIFCpLHO0=/240x240/47917586/3257450/cd_cover.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
