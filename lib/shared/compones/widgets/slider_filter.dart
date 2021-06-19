import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderFilter extends StatefulWidget {
  @override
  _SliderFilterState createState() => _SliderFilterState();
}

class _SliderFilterState extends State<SliderFilter> {
  // RangeLabels valueRangle = RangeLabels('1', '400');
  RangeValues values = RangeValues(10, 500);

  double value = 50;

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Text(
                  'Price',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    //Color of price namer Color(0xff4A4A4A)
                    color: Color(0xff4A4A4A),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: Colors.red[700],
              inactiveTrackColor: Colors.red[100],
              trackShape: RoundedRectSliderTrackShape(),
              rangeThumbShape:
                  RoundRangeSliderThumbShape(enabledThumbRadius: 15),
              trackHeight: 6.0,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
              thumbColor: Colors.redAccent,
              overlayColor: Colors.red.withAlpha(32),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 25.0),
              tickMarkShape: RoundSliderTickMarkShape(),
              activeTickMarkColor: Colors.transparent,
              inactiveTickMarkColor: Colors.transparent,
              valueIndicatorShape: PaddleSliderValueIndicatorShape(),
              valueIndicatorColor: Colors.redAccent,
              valueIndicatorTextStyle: TextStyle(
                color: Colors.white,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Slider(
                  value: value,
                  min: 10,
                  max: 500,
                  divisions: 100,
                  activeColor: Colors.red,
                  inactiveColor: Colors.red.shade100,
                  label: "${value.round().toString()}\$",
                  onChanged: (value) => setState(() => this.value = value),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                r'$0',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 160,
              ),
              Text(
                "${value.round().toString()}\$",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      );
}
