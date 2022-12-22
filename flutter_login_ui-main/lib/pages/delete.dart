
import 'package:flutter/material.dart';

class CardNotes extends StatelessWidget {
  final void Function() ontap;
 final String  nameexercise;
 final String durationexercise;
  final void Function()? onDelete;
  const CardNotes(
      {Key? key,
      required this.ontap,
      required this.durationexercise , 
       required this.nameexercise , 
      required this. onDelete, required Center child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           
            Expanded(
                flex: 2,
                child: ListTile(
                  title: Text("$nameexercise"),
                  subtitle: Text("$durationexercise"),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: onDelete,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
