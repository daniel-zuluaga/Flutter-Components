import 'package:components_flutter_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sliders && Checks"),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            value: _sliderValue, 
            onChanged: _sliderEnabled
              ? (value) {
                _sliderValue = value;
                setState(() {});
              }
            : null
           ),

          // Checkbox(
          //   value: _sliderEnabled, 
          //   onChanged: (value) {
          //     _sliderEnabled = value ?? true;
          //     setState(() {});
          //   }
          // ),

          // Switch(
          //   value: _sliderEnabled, 
          //   onChanged: (value) => setState(() {_sliderEnabled = value ?? true; }),
          // ),

          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text("Habilitar Slider"),
            value: _sliderEnabled, 
            onChanged: (value) => setState(() {_sliderEnabled = value ?? true; }),
          ),

          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text("Habilitar Slider"),
            value: _sliderEnabled, 
            onChanged: (value) => setState(() {_sliderEnabled = value; }),
        ),

        const AboutListTile(),

          Expanded(
            child: SingleChildScrollView(
              child: Image(
              image: const NetworkImage("https://1.bp.blogspot.com/-iRoMZNQ0Y-s/XZ6ySeCljwI/AAAAAAAAXC8/xcC4c-mn8psTULKfEmzDyQJ458KOsyaAwCLcBGAsYHQ/s1600/Picture29.jpg"),
              fit: BoxFit.contain,
              width: _sliderValue,
              ),
            ),
          ),

        ],
      )
    );
  }
}