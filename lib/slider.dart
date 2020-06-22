import 'package:flutter/material.dart';


class Emotion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                  
                height:200,
                    child: SliderContainer(
                     
                    ),
                  ),
            ],
          ),
        ));
  }
} 

class SliderContainer extends StatefulWidget {
  @override
  _SliderContainerState createState() => _SliderContainerState();
}

class _SliderContainerState extends State<SliderContainer> {
  static double _lowervalue = 0.0;
  static double _uppervalue = 10.0;
  double brightness = 0.0;
  List<String> questions=[
      'Are you overthinking?',
      'Have you been thinking same thoughts since past few days?',
      'How happy have you felt lately?',
      'Are you anxious?',
      'Are you stressed?'
  ];
  var index =0;
  
 
  
  RangeValues values = RangeValues(_lowervalue, _uppervalue);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
      children: <Widget>[
        Text('${questions[index]}'),
        
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackHeight: 15,
            overlayColor: Colors.transparent,
            minThumbSeparation: 100,
            rangeThumbShape: RoundRangeSliderThumbShape(
              enabledThumbRadius: 10,
              disabledThumbRadius: 10,
              
            ),
          ),
         
          child: Container(
            child: Slider(
              
                label: brightness.abs().toString(),
                min: _lowervalue,
                max: _uppervalue,
                value: brightness,
                onChanged: (val) {
                  print(val);
                  setState(() {
                    brightness = val;
                  });
                }),
                height: 50,
                width: 400,
          ),
        ),
      ],
    ));
  }
}
