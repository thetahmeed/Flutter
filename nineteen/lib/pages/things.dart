import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class LittleThings extends StatefulWidget {
  @override
  _LittleThingsState createState() => _LittleThingsState();
}

class _LittleThingsState extends State<LittleThings> {
  String _leargeText =
      'Lorem ipsum dolor sit amet\, consectetur adipiscing elit. Nullam ac arcu nec nunc condimentum porttitor eu at lorem. Donec purus lectus, hendrerit at condimentum ut, pretium vel nunc. Curabitur venenatis viverra ante, eget faucibus libero laoreet dignissim. Donec ornare efficitur sem, tincidunt ultrices mauris mattis ut. Nulla congue ullamcorper bibendum. Proin dapibus imperdiet euismod. Mauris quis nisl sit amet neque posuere gravida. \n\n' +
          'Sed ac nulla vel lacus viverra fringilla. Vestibulum vel nulla in mauris dignissim ultricies. Aenean ultrices nec turpis ac sollicitudin. Nunc eget nibh enim. Aenean eleifend ultrices libero vitae elementum. Nullam dictum orci eu vulputate fringilla. Phasellus feugiat faucibus eros. Curabitur accumsan malesuada dui. Nulla quis metus cursus, viverra quam vel, consequat magna. Nam eu quam lacinia, egestas magna at, condimentum quam. Donec at dui a justo varius interdum. Nullam sed ipsum orci. Sed rhoncus nunc non tellus faucibus, sed consectetur risus hendrerit.\n\n' +
          'Phasellus ac orci lorem. Morbi viverra placerat justo eu gravida. In viverra convallis dui at faucibus. Donec finibus luctus felis ut tincidunt. Fusce porttitor finibus placerat. Cras suscipit sapien id lectus cursus accumsan. Nulla sit amet arcu auctor, ultrices sapien eu, bibendum mi. In feugiat tristique turpis, et lacinia quam fermentum id. Etiam justo quam, mollis vitae metus a, sagittis congue est. Sed facilisis sem non eros suscipit euismod. In facilisis id mi quis interdum. Ut vulputate luctus tortor, a ultrices lectus.\n\n' +
          'Integer nec dapibus urna. Fusce nec ipsum non leo sodales dapibus. Aliquam suscipit sed turpis sed dignissim. Phasellus convallis aliquet elit, et feugiat felis pellentesque non. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum eu ante sit amet purus pulvinar dapibus sit amet et leo. Sed non dictum arcu, sed venenatis sapien. Cras feugiat, quam nec ornare efficitur, sem erat blandit eros, eget rutrum mi tellus eget ante. Fusce gravida elementum arcu vel euismod.\n\n' +
          'Praesent eget pulvinar ipsum, ut hendrerit lorem. In dapibus, mauris et sollicitudin blandit, augue purus facilisis nisi, non lacinia enim turpis et leo. Morbi ornare libero sed neque molestie pulvinar. Proin in suscipit diam, vel facilisis elit. Aliquam nunc massa, fermentum eu aliquam in, volutpat a magna. Nullam in tellus justo. Integer eget vestibulum nisi. Nullam vitae pretium justo. Duis risus purus, gravida id tortor non, volutpat volutpat orci. Duis sed pulvinar purus. Vivamus ac lacus et lacus sodales vestibulum a nec velit. Praesent feugiat velit at metus condimentum tempus.\n\n';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              //scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              children: [
                SizedBox(height: 20),
                RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    'The Title',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20),
                Text(_leargeText, textAlign: TextAlign.justify)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _theImage() {
    return Image.network(
      'https://i.pinimg.com/564x/c1/65/1f/c1651f598d212acdfe551f103548e495.jpg',
      height: 150,
      width: 150,
    );
  }
}

class BigPage extends StatefulWidget {
  @override
  _BigPageState createState() => _BigPageState();
}

class _BigPageState extends State<BigPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Image.network(
                  'https://i.pinimg.com/564x/c1/65/1f/c1651f598d212acdfe551f103548e495.jpg'),
            ),
            SizedBox(height: 10),
            Text(
              'This is a title',
              style: TextStyle(fontSize: 26),
            ),
            SizedBox(height: 10),
            Text(
              'This is a description. This is a description. This is a description. This is a description. This is a description. ',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'This is a description. This is a description. This is a description. This is a description. This is a description. ',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
