import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class list_view extends StatelessWidget {
  List<String> cu_list;

  list_view({required this.cu_list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: cu_list.length,
        itemBuilder: (context,index){
      return Padding(
        padding: EdgeInsets.only(right: 20,left: 20,top: 10),
        child: Card(
          margin: EdgeInsets.all(5),
          child: ListTile(
            title: Text(cu_list[index],style: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.bold),),
            onTap: (){
              final snackbar= SnackBar(content: Text(' ${cu_list[index]}'),duration: Duration(seconds: 3));
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
          )
        ),
      );
    });
  }
}
