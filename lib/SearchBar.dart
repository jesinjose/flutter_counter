import 'package:flutter/material.dart';
import 'DataSearch.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Search'),
          backgroundColor: Colors.black54,
          leading: Icon(Icons.menu),
          elevation: 5,
          actions: [
            IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: SearchData());
                },
                icon: Icon(Icons.search))
          ],
        ),
      );
}
