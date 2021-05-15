import 'package:flutter/material.dart';
import 'package:taller_flutter_basico/theme/colors_list.dart';

/// Widget que contiene las tarjetas de los perros.
class ListDogsWidget extends StatelessWidget {
  final double _listPadding = 30.0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: ListView.builder(
        padding: EdgeInsets.only(
          left: _listPadding,
          right: _listPadding,
          top: _listPadding,
        ),
        shrinkWrap: true,
        itemCount: _dogs.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 50.0),
            child: Stack(
              alignment: Alignment.center,
              fit: StackFit.loose,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: _infoDog(index),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: _dogImage(index),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  /// Muestra la imagen de los perros
  Widget _dogImage(int index) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 230,
          width: 170,
          decoration: BoxDecoration(
            color: ColorList.backgroundCard,
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 20.0,
                spreadRadius: 4.0,
                offset: Offset(5.0, 5.0),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 50.0,
          child: Image.asset(
            _dogs[index].image,
            height: 200,
          ),
        ),
      ],
    );
  }

  /// Metodo que contiene la informacion de los perros.
  Widget _infoDog(int index) {
    return Container(
      padding: EdgeInsets.all(16.0),
      height: 180,
      width: 185,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 20.0,
            spreadRadius: 4.0,
            offset: Offset(5.0, 5.0),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                _dogs[index].name,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: ColorList.backgroundButtom,
                ),
              ),
              Icon(
                Icons.fiber_manual_record,
                color: Colors.green,
              ),
            ],
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            _dogs[index].breed,
            style: TextStyle(
              color: ColorList.descriptionText,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            '${_dogs[index].age} years old',
            style: TextStyle(
              color: ColorList.descriptionText,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.place,
                color: ColorList.backgroundButtom,
                size: 28.0,
              ),
              Text(
                'Distance: ${_dogs[index].distance} Km',
                style: TextStyle(
                  color: ColorList.backgroundButtom,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Modelo de datos para la informacion de los perros.
class ModelDogs {
  final String name;
  final String age;
  final String distance;
  final String breed;
  final String image;

  ModelDogs({this.name, this.age, this.distance, this.breed, this.image});
}

/// Contiene la lista con la informacion de los perros.
List<ModelDogs> _dogs = [
  ModelDogs(
    name: 'Firulais',
    age: '2',
    breed: 'Beagle',
    distance: '3.8',
    image: 'assets/images/cachorro.png',
  ),
  ModelDogs(
    name: 'Sckot',
    age: '5',
    breed: 'Chihuahua',
    distance: '3.2',
    image: 'assets/images/chihuahua.png',
  ),
  ModelDogs(
    name: 'Rockie',
    age: '6',
    breed: 'German Shepherd',
    distance: '5',
    image: 'assets/images/perro_grande.png',
  ),
  ModelDogs(
    name: 'Doky',
    age: '3',
    breed: 'Terrier',
    distance: '1.8',
    image: 'assets/images/perro_mediano.png',
  ),
];
