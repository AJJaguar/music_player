import 'package:flutter/material.dart';
import 'package:music_player/neu_box.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SongPage extends StatefulWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  _SongPageState createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                // back and menu   buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                        height: 60,
                        width: 60,
                        child: NeuBox(child: Icon(Icons.arrow_back))),
                    const Text('P L A Y L I S T'),
                    const SizedBox(
                        height: 60,
                        width: 60,
                        child: NeuBox(child: Icon(Icons.menu))),
                  ],
                ),

                // cover art
                const SizedBox(height: 25),

                NeuBox(
                    child: Column(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset('lib/images/cover_art.png')),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Platonic',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(height: 3),
                              const Text(
                                'RQ',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.red,
                            size: 35,
                          )
                        ],
                      ),
                    )
                  ],
                )),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    NeuBox(child: const Text('0:00')),
                    NeuBox(child: const Icon(Icons.shuffle)),
                    NeuBox(child: const Icon(Icons.repeat)),
                    NeuBox(child: const Text('2:42')),
                  ],
                ),
                // repeat, skip button
                const SizedBox(height: 25),

                // percentage played indicatoiinr bar
                NeuBox(
                  child: LinearPercentIndicator(
                    percent: 0.6,
                    progressColor: Colors.green,
                    lineHeight: 10,
                    barRadius: const Radius.circular(5),
                    backgroundColor: Colors.transparent,
                  ),
                ),

                SizedBox(height: 25),

                // prev, play next button
                SizedBox(
                  height: 80,
                  child: Row(
                    children: [
                      Expanded(child: NeuBox(child: Icon(Icons.skip_previous))),
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: NeuBox(child: Icon(Icons.play_arrow)),
                          )),
                      Expanded(
                          child: NeuBox(
                        child: Icon(Icons.skip_next),
                      )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
