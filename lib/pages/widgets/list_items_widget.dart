import 'package:flutter/material.dart';
import 'package:taller_flutter_basico/theme/colors_list.dart';

class ListItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ListView.builder(
        padding: EdgeInsets.only(
          left: 25.0,
          right: 25.0,
        ),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: _list.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(
              left: 10.0,
              right: 10.0,
              top: 13.0,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  height: 65.0,
                  width: 65.0,
                  child: Image.asset('assets/images/Recurso_${index + 1}.png'),
                  decoration: BoxDecoration(
                    color: _list[index].color,
                    borderRadius: BorderRadius.circular(18.0),
                    boxShadow: _list[index].boxShadow,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  _list[index].text,
                  style: TextStyle(
                    color: ColorList.descriptionText,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

List<StyleModel> _list = [
  StyleModel(
    id: 1,
    color: ColorList.backgroundButtom,
    boxShadow: [
      BoxShadow(
        color: ColorList.backgroundCard.withOpacity(0.7),
        blurRadius: 10.0,
        spreadRadius: 9.0,
        offset: Offset(3.0, 5.0),
      ),
    ],
    text: 'Dogs',
  ),
  StyleModel(
    id: 2,
    color: Colors.white,
    boxShadow: [],
    text: 'Raccoons',
  ),
  StyleModel(
    id: 3,
    color: Colors.white,
    boxShadow: [],
    text: 'Rabbits',
  ),
  StyleModel(
    id: 4,
    color: Colors.white,
    boxShadow: [],
    text: 'Cats',
  ),
  StyleModel(
    id: 5,
    color: Colors.white,
    boxShadow: [],
    text: 'Hamster',
  ),
  StyleModel(
    id: 6,
    color: Colors.white,
    boxShadow: [],
    text: 'Koala',
  ),
];

class StyleModel {
  final int id;
  final Color color;
  final List<BoxShadow> boxShadow;
  final String text;

  StyleModel({this.id, this.color, this.boxShadow, this.text});
}
