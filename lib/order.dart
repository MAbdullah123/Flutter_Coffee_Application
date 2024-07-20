import 'package:flutter/material.dart';
import 'package:flutter_application_coffee_app/coffee.dart';
import 'package:flutter_application_coffee_app/my_order.dart';

class order extends StatefulWidget {
  const order({Key? key}) : super(key: key);

  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {
  int _cappuccinoQuantity = 1; // Default quantity for Cappuccino
  String _risrettoQuantity = 'one'; // Default quantity for Risretto
  String _selectedVolume = 'medium'; // Default volume
  bool _prepareByTime = false; // Default state for the switch

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Order',
          style: TextStyle(color: Colors.black87, fontSize: 20),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black87),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20), // Adjust as needed
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 200.0, // Adjusted width of the image container
              height: 200.0, // Adjusted height of the image container
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white12,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/c2.png',
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cappuccino',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(width: 10), // Space between text and quantity

                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (_cappuccinoQuantity > 1) _cappuccinoQuantity--;
                    });
                  },
                ),
                Text('$_cappuccinoQuantity'),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      _cappuccinoQuantity++;
                    });
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
                  'Risretto',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(width: 10), // Space between text and quantity
                DropdownButton<String>(
                  value: _risrettoQuantity,
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      setState(() {
                        _risrettoQuantity = newValue;
                      });
                    }
                  },
                  items: <String>['one', 'two']
                      .map<DropdownMenuItem<String>>((String value) {
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
                  'Onsite/Takeaway',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(width: 10), // Space between text and icons
                Row(
                  children: [
                    Icon(
                      Icons.icecream,
                      size: 33,
                    ),
                    SizedBox(width: 10), // Space between icons
                    Icon(
                      Icons.local_cafe,
                      size: 33,
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
                  'Volume ml',
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
                            Icons.local_drink,
                            size: 30,
                            color: _selectedVolume == 'small'
                                ? Colors.blue
                                : Colors.black,
                          ),
                          Text('250'),
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
                            Icons.local_drink,
                            size: 40,
                            color: _selectedVolume == 'medium'
                                ? Colors.blue
                                : Colors.black,
                          ),
                          Text('350'),
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
                            Icons.local_drink,
                            size: 50,
                            color: _selectedVolume == 'large'
                                ? Colors.blue
                                : Colors.black,
                          ),
                          Text('450'),
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
                  'Prepare by a certain time today?',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Switch(
                  value: _prepareByTime,
                  onChanged: (bool value) {
                    setState(() {
                      _prepareByTime = value;
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const coffee()),
                );
              },
              icon: Icon(Icons.local_cafe),
              // Change to appropriate coffee-related icon
              label: Text(
                'Coffee lover Assemblage',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),

              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 113, 68, 97),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 50.0,
                  vertical: 8.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const my_order()),
                );
              },
              icon: Icon(Icons.arrow_forward), // Change to appropriate icon
              label: Text(
                'Next',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(50, 74, 89, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 145.0,
                  vertical: 8.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
