import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  final List<String> names = <String>
  final List<int> msgCount = <int>

  TextEditingController nameController = TextEditingController();

  void addItemToList(){
    setState(() {
      names.insert(0,nameController.text);
      msgCount.insert(0, 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Assignment'),
    ),
    body: Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(20),
          child: TextField(
            controller: nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Contact Name',
            ),
          ),
    ),
    RaisedButton(
    child: Text('Add'),
    onPressed: () {
    addItemToList();
    },
    ),
        Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: names.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    margin: EdgeInsets.all(2),
                    color: msgCount[index]>=10? Colors.blue[400]:
                    msgCount[index]>3? Colors.blue[100]: Colors.grey,
                    child: Center(
                        child: Text('${names[index]} (${msgCount[index]})',
                          style: TextStyle(fontSize: 18),
                        )
                    ),
                  );
                }
            )
        )
      ]
    )
    );
  }
}



/*
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Alert Dialog",
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {

  Future createAlertDialog(BuildContext context){

    TextEditingController customController = TextEditingController();

    return showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text("your name"),
        content : TextField(
         controller: customController,
       ),
       actions: <Widget>[
         MaterialButton(
           elevation: 5.0,
           child : Text('Submit'),
           onPressed: (){
             Navigator.of(context).pop(customController.text.toString());
           },
         )
       ],
     );
   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog'),
      ),
      body : Builder(builder :(context) {
        return Container(
          child : Center(
            child : FlatButton(
              padding : EdgeInsets.fromLTRB(20.0 , 10.0 , 20.0, 10.0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
              color: Colors.deepOrange,
              textColor: Colors.white,
              onPressed: (){
                createAlertDialog(context).then((onValue){
                 SnackBar mySnackbar = SnackBar(content: Text("Hello $onValue"));
                 // ignore: deprecated_member_use
                 Scaffold.of(context).showSnackBar(mySnackbar);

                });
              },
              child: Text(
                'Alert',
                style: TextStyle(fontSize: 20.0),
              ),
            ),

          ),
        );


     }));
  }

}

*/





/*import 'package:flutter/material.dart';

void main(){
  runApp(Example());
}

class Example extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ExampleState();
  }
}


class ExampleState extends State<Example>{
  List<String> item = List();
  String temp;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ADD TO THE LIST'),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
                TextField(
                  onChanged: (str){
                    temp = str;
                  },
                  maxLength: 20,
                ),
                RaisedButton(
                  child: Text('SUBMIT'),
                  onPressed: (){
                    setState(() {
                      item.add(temp);
                    });
                  },

                ),
                ListView(
                  shrinkWrap: true,
                  children: item.map((element))=> Text(element)).toList(),
                )
              ],
            ),
          ],
        ),
      );

  }
}
*/
