import 'package:flutter/material.dart';
import 'package:flutter_application_coffee_app/additives.dart';
import 'package:flutter_application_coffee_app/barista.dart';

class coffee extends StatefulWidget {
  const coffee({Key? key}) : super(key: key);

  @override
  State<coffee> createState() => _coffeeState();
}

class _coffeeState extends State<coffee> {
  String _selectedcoffeeType = 'Espresso'; // Default coffee type

  String _selectedMilk = 'Cow';
  String _selectedSyrup = 'Coconut';
  String _selectedVolume = 'medium';
  String _selectedGrinding = 'medium';
  String _selectedIce = 'medium';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Coffee Lover Assemblage',
            style: TextStyle(color: Colors.black87, fontSize: 20),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Select a barista',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 25,
                      color: Colors.black87,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => barista(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Coffee Type',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(width: 10), // Space between text and dropdown
                  DropdownButton<String>(
                    value: _selectedcoffeeType,
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        setState(() {
                          _selectedcoffeeType = newValue;
                        });
                      }
                    },
                    items: <String>[
                      'Espresso',
                      'Cappuccino',
                      'Latte',
                      'Americano',
                      'Macchiato',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Coffee Sort',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 20,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Roasting',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(width: 10), // Space between text and icons
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedVolume = 'small';
                          });
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.local_fire_department,
                              size: 30,
                              color: _selectedVolume == 'small'
                                  ? Colors.red
                                  : Colors.black,
                            ),
                            Text('Low'),
                          ],
                        ),
                      ),
                      SizedBox(width: 10), // Space between icons
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedVolume = 'medium';
                          });
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.local_fire_department,
                              size: 40,
                              color: _selectedVolume == 'medium'
                                  ? Colors.red
                                  : Colors.black,
                            ),
                            Text('High'),
                          ],
                        ),
                      ),
                      SizedBox(width: 10), // Space between icons
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedVolume = 'large';
                          });
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.local_fire_department,
                              size: 50,
                              color: _selectedVolume == 'large'
                                  ? Colors.red
                                  : Colors.black,
                            ),
                            Text('Too-High'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Grinding',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(width: 10), // Space between text and icons
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedGrinding = 'small';
                          });
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.sports_rugby,
                              size: 30,
                              color: _selectedGrinding == 'small'
                                  ? Colors.brown
                                  : Colors.black,
                            ),
                            Text('Low'),
                          ],
                        ),
                      ),
                      SizedBox(width: 10), // Space between icons
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedGrinding = 'medium';
                          });
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.sports_rugby,
                              size: 40,
                              color: _selectedGrinding == 'medium'
                                  ? Colors.brown
                                  : Colors.black,
                            ),
                            Text('High'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Milk',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(width: 10), // Space between text and dropdown
                  DropdownButton<String>(
                    value: _selectedMilk,
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        setState(() {
                          _selectedMilk = newValue;
                        });
                      }
                    },
                    items: <String>[
                      'None',
                      'Cow',
                      'Lactose-Free',
                      'Skimmed',
                      'Vegetable'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Syrup',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(width: 10), // Space between text and dropdown
                  DropdownButton<String>(
                    value: _selectedSyrup,
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        setState(() {
                          _selectedSyrup = newValue;
                        });
                      }
                    },
                    items: <String>[
                      'None',
                      'Amaretto',
                      'Coconut',
                      'Vanilla',
                      'Caramel'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Additives',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 25,
                      color: Colors.black87,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => additives(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ice',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedIce = 'small';
                          });
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.ac_unit,
                              size: 30,
                              color: _selectedIce == 'small'
                                  ? Colors.blue
                                  : Colors.black,
                            ),
                            Text('Low'),
                          ],
                        ),
                      ),
                      SizedBox(width: 10), // Space between icons
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedIce = 'medium';
                          });
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.ac_unit,
                              size: 40,
                              color: _selectedIce == 'medium'
                                  ? Colors.blue
                                  : Colors.black,
                            ),
                            Text('High'),
                          ],
                        ),
                      ),
                      SizedBox(width: 10), // Space between icons
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedIce = 'large';
                          });
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.ac_unit,
                              size: 50,
                              color: _selectedIce == 'large'
                                  ? Colors.blue
                                  : Colors.black,
                            ),
                            Text('Too-High'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
