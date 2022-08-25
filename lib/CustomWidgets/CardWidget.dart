import 'package:flutter/material.dart';
import 'package:flutter_counter/Models/ItemModels.dart';

class CardWidget extends StatelessWidget {
  ItemModels data;
  Function() function;

  CardWidget(this.data, this.function);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.cyanAccent),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(child: Text(data.name)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      data.place,
                      style: (TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      )),
                    ),
                  )
                ],
              ),
              ElevatedButton.icon(
                onPressed: function,
                icon: Icon(Icons.delete),
                label: Text('Delete'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
