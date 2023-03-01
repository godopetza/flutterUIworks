import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'neumophic_box.dart';

class SongPage extends StatefulWidget {
  const SongPage({super.key});

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  //back button and menu button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: NeuBox(child: Icon(Icons.arrow_back)),
                      ),
                      Text('P L A Y L I S T'),
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: NeuBox(child: Icon(Icons.menu)),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  //cover art, artist name, song name
                  NeuBox(
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            'https://images.unsplash.com/photo-1584679109597-c656b19974c9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Artist',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.grey.shade700),
                                  ),
                                  const SizedBox(height: 4),
                                  const Text(
                                    'Song Title',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    ),
                                  ),
                                ],
                              ),
                              const Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 32,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  const SizedBox(height: 25),

                  //start time, shuffle button, repeat button, end time
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('2:10'),
                      Icon(Icons.shuffle),
                      Icon(Icons.repeat),
                      Text('4:20'),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  //linear bar
                  NeuBox(
                    child: LinearPercentIndicator(
                      lineHeight: 10,
                      percent: 0.5,
                      progressColor: Colors.amber[900],
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),

                  // prev song, pause/play, next song
                  SizedBox(
                    height: 80,
                    child: Row(children: const [
                      Expanded(
                        child: NeuBox(
                          child: Icon(
                            Icons.skip_previous,
                            size: 32,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: NeuBox(
                            child: Icon(
                              Icons.skip_previous,
                              size: 32,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: NeuBox(
                          child: Icon(
                            Icons.skip_previous,
                            size: 32,
                          ),
                        ),
                      ),
                    ]),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
