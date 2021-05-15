import 'package:flutter/material.dart';
import 'package:taller_flutter_basico/theme/colors_list.dart';
import 'package:taller_flutter_basico/pages/widgets/list_dogs_widget.dart';
import 'package:taller_flutter_basico/pages/widgets/list_items_widget.dart';
import 'package:taller_flutter_basico/pages/widgets/search_bar_widget.dart';

class HomePage extends StatelessWidget {
  static final routeName = 'homePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _bodyPage(context),
      ),
    );
  }

  /// Contiene el cuerpo de la pantalla
  Widget _bodyPage(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 16.0,
            left: 16.0,
            right: 16.0,
          ),
          child: _appBar(),
        ),
        _body(),
      ],
    );
  }

  /// Contiene el AppBar personalizado
  Widget _appBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          child: Icon(Icons.menu),
          onTap: () {
            print('DrawerMenu Open');
          },
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Location',
              style: TextStyle(color: ColorList.disableColor),
            ),
            Row(
              children: [
                Icon(
                  Icons.place,
                  color: ColorList.backgroundButtom,
                ),
                Text(
                  'Delhi, ',
                  style: TextStyle(
                    color: ColorList.backgroundButtom,
                    fontWeight: FontWeight.bold,
                    fontSize: 19.0,
                  ),
                ),
                Text(
                  'india',
                  style: TextStyle(
                    color: ColorList.backgroundButtom,
                    fontSize: 19.0,
                  ),
                ),
              ],
            ),
          ],
        ),
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/profile_picture.jpg'),
          minRadius: 22.0,
        ),
      ],
    );
  }

  /// Cuerpo que contiene los elementos
  Widget _body() {
    /// Almacena el valor del borde del container
    final double _borderValue = 35.0;

    return Expanded(
      child: ListView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        padding: EdgeInsets.only(top: 40.0),
        shrinkWrap: true,
        children: [
          Container(
            height: 560.0,
            decoration: BoxDecoration(
              color: ColorList.backgroundBody,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(_borderValue),
                topRight: Radius.circular(_borderValue),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 40.0,
                    left: 30.0,
                    right: 30.0,
                  ),
                  child: SearchBarWidget(),
                ),
                SizedBox(
                  height: 30.0,
                ),
                ListItemsWidget(),
                ListDogsWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
