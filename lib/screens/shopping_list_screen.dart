import 'package:flutter/material.dart';
import 'package:shopping_list/constants.dart';

class ShoppingList extends StatelessWidget {
  const ShoppingList({Key? key}) : super(key: key);

  static const String id = 'shopping_list_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 20,
            ),
            child: Column(
              children: [
                const Text(
                  'Shopping List',
                  style: titleTextStyle,
                  textAlign: TextAlign.center,
                ),
                Container(
                  color: Colors.lightBlueAccent,
                  child: ListView(
                    shrinkWrap: true,
                    children: const [
                      ListTile(
                        title: Text('1x Carrot'),
                        trailing: Text('\$42.24'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text('1x'),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.grey),
                            ),
                          ),
                          Text('Carrot'),
                        ],
                      ),
                      // TextButton(
                      //   onPressed: () {},
                      //   child: Icon(Icons.remove),
                      // ),
                      // TextButton(
                      //   onPressed: () {},
                      //   child: Icon(Icons.add),
                      // ),
                      Text('\$42.42'),
                      Text('\$100')
                    ],
                  ),
                ),

                // List View Title
                // List View
                // Caclculate
              ],
            ),
          ),
        ),
      ),
    );
  }
}
