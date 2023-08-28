import 'package:flutter/material.dart';
import 'package:media_player/neu_box.dart';
import 'package:percent_indicator/percent_indicator.dart';


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
      body: SafeArea(
        child: Column(
          children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 60,
                  width: 60,
                  child: NeuBox(child: Icon(Icons.arrow_back),

                  ),

                ),
                Text('PLAYLIST',style: TextStyle(fontSize: 40,)),
                SizedBox(
                  height: 60,
                  width: 60,
                  child: NeuBox(child: Icon(Icons.menu),
                  ),
                ),




              ],
            ),
          ),
            SizedBox(
              height: 25,
            ),
           
            Padding(

              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: NeuBox(
                child: Column(
                  children: [

                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image(

                        image: AssetImage('images/cover.jpeg'),
                        fit: BoxFit.cover,
                        height: 300,

                      ),
                    ),
                    Row(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text('KOTA THE FRIEND',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[700],fontSize: 18)),
                            SizedBox(
                              height: 10,
                            ),
                            Text('BARTIE',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),

                          ],

                        ),
                        Icon(Icons.favorite,color: Colors.red,size: 32,),
                      ],
                    ),


                  ],
                ),

              ),

            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('0:00'),
                Icon(Icons.shuffle),
                Text('3:50'),
                Icon(Icons.repeat)
              ],
            ),
            SizedBox(
              height: 50,
            ),

            NeuBox(
              child: new LinearPercentIndicator(
                 percent: 0.5,
                 width: 380,
                 backgroundColor: Colors.transparent,
                 progressColor: Colors.green,
                 lineHeight: 10,

                ),
            ),
             SizedBox(
               height: 50,
             ),
           SizedBox(
             height: 80,
             child: Row(
               children: [

                 Expanded(child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 10.0),
                   child: NeuBox(
                     child: Icon(Icons.skip_previous),

                   ),
                 )),
                 Expanded(
                     flex: 2,
                     child: Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 20.0),
                       child: NeuBox(
                   child: Icon(Icons.play_arrow),
                 ),
                     )),
                 Expanded(child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal:10.0),
                   child: NeuBox(
                     child: Icon(Icons.skip_next),
                   ),
                 ))
               ],
             ),
           )
          ],
           
        ),
        

      ),

    );
  }
}
