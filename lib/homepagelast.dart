import 'package:flutter/material.dart';
import 'package:flutter_application_market/homepage.dart';
import 'package:provider/provider.dart';

class MyWidget extends StatefulWidget {
  final int index;

  const MyWidget({
    super.key,
    required this.index,
  });

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var visible=false;

  

  

  

  @override
  Widget build(BuildContext context) {
    
    
      return Consumer<Model>(
        builder: (context, model, child) =>
      ListTile(
        leading: Container(
          width: 60,
          height: 60,
          color: model.listcolor[widget.index],
        ),
        onTap: () {
          model.changeName(widget.index);
          
          setState(() {
            visible=!visible;
          });
        },
        title: Text(model.productName[widget.index]),
        subtitle: Text('${model.pricellist[widget.index]}\$'),
        trailing:   
         
            Row(
            mainAxisSize: MainAxisSize.min,
            children: [
               visible
                  ? const Icon(Icons.assignment_turned_in_rounded)
                  :
                   // ignore: prefer_const_constructors
                   Text('add')
            ],
          ),
        ),);
      
    }
  

  

  }