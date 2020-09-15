import 'package:flutter/material.dart';
import 'http_helper.dart';

class MovieList extends StatefulWidget {
  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  String results; //Data returned from the set state method
  HttpHelper api; //Declaring properties/fields

  @override
  void initState() {
    api = HttpHelper(); //Instantiating the class
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //get the data from the api, then update the state of this widget
    api.getUpcoming().then(
            (responseData) {
          setState(() {
            results = responseData;
          });
        });

    //Widget MUST return a View. Returns the results
    return Scaffold(
      appBar: AppBar(title: Text('Movie List'),),
      body: Container(child: Text(results),),

    );
  }
}
