import 'package:flutter/material.dart';

class CityView extends StatefulWidget {
  const CityView({Key? key}) : super(key: key);

  @override
  _CityViewState createState() => _CityViewState();
}

class _CityViewState extends State<CityView> {
  final List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "name": "Cairo"},
    {"id": 2, "name": "Alexandria"},
    {"id": 3, "name": "Luxor"},
    {"id": 4, "name": "Aswan"},
  ];

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers = [];

  // Track the selected item index
  int _selectedIndex = -1;

  @override
  void initState() {
    _foundUsers = _allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // If the search field is empty or only contains white-space, display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // Use the toLowerCase() method to make it case-insensitive
    }

    setState(() {
      _foundUsers =
          results; // Update the state variable with the filtered results
    });
  }

  // Handle item selection
  void _onItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('', style: TextStyle(color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose your city',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFF027A9C),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[200],
                border:
                    Border.all(color: Color(0xFF027A9C)), // Set border color
              ),
              child: TextField(
                onChanged: (value) => _runFilter(value),
                decoration: const InputDecoration(
                  hintText: 'Search',
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                      itemCount: _foundUsers.length,
                      itemBuilder: (context, index) => Card(
                        key: ValueKey(_foundUsers[index]["id"]),
                        color: _selectedIndex == index
                            ? Color(0xFF027A9C)
                            : const Color.fromARGB(255, 255, 255, 255),
                        elevation: 4,
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: ListTile(
                          title: Text(
                            _foundUsers[index]['name'],
                            style: TextStyle(
                              color: _selectedIndex == index
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          onTap: () => _onItemSelected(index),
                        ),
                      ),
                    )
                  : const Text(
                      'No results found',
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    ),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 357,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/HobbiesView');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF027A9C), // Set background color
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10), // Set border radius
                    ),
                  ),
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
