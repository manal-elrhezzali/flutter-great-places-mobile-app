import 'package:flutter/material.dart';

import '../widgets/image_input.dart';

class AddPlaceScreen extends StatefulWidget {
  static const routeName = "/add-place";
  @override
  _AddPlaceScreenState createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  final _titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add a new Place"),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //wrapped it with expanded so that it takes all the height available
          //which will leave the Raised button only as much height as it needs
          Expanded(
            //User Inputs......    
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(labelText: "Title"),
                      controller: _titleController,
                    ),
                    SizedBox(height: 10,),
                    ImageInput(),
                  ],
                ),
              ),
            ),
          ),
          RaisedButton.icon(
            icon: Icon(Icons.add),
            textColor: Colors.white,
            label: Text(
              "Add Place",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {},
            elevation: 0, //removes the drop shadow
            materialTapTargetSize: MaterialTapTargetSize
                .shrinkWrap, //gets ride of the extra margin around the button
            color: Theme.of(context).accentColor,
          ),
        ],
      ),
    );
  }
}
