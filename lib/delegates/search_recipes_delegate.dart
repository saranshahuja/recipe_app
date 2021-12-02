import 'package:flutter/material.dart';

class RecipeSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      Text('Hi Actions')
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return
      Text('Hi Leading');
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
