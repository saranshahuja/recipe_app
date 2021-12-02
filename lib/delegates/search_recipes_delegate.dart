import 'package:flutter/material.dart';

class RecipeSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
    IconButton(
        onPressed: () {
          this.query = '';
        }
        ,icon: Icon(Icons.clear)
    )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          this.close(context, null);
        }
        ,icon: Icon(Icons.arrow_back_ios)
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return
      Text('Hi Results');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return
      Text('Hi Suggestions');
  }
}
