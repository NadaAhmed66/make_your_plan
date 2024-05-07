import 'package:flutter/material.dart';

class buttonsheet extends StatefulWidget {
  final String title;
  final VoidCallback onClickConfirm;
  final VoidCallback onClickback;
  final List options;
  const buttonsheet({super.key, required this.title, required this.options, required this.onClickConfirm, required this.onClickback});

  @override
  State<buttonsheet> createState() => _buttonsheetState();
}

class _buttonsheetState extends State<buttonsheet> {
var selectedOption;

  @override   
  Widget build(BuildContext context) =>Container(
    padding: EdgeInsets.all(16),
child:Column(
  mainAxisSize: MainAxisSize.min,
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children:<Widget> [
    Text(widget.title,
    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
    ),
    const SizedBox(height: 16,),
    Wrap(
      alignment: WrapAlignment.center,
      spacing: 16,
      children: widget.options
      .map((option) => buildChip(option,context))
      .toList(),
    ),
    const SizedBox(height: 16,),
    buildButtons(),
       
  ],
) ,
  );
  Widget buildButtons()=>Row(
    mainAxisAlignment:MainAxisAlignment.spaceAround,
    children:[
      TextButton(
        style:TextButton.styleFrom(foregroundColor: Colors.black),
        onPressed: widget.onClickback, 
        child: Text("back"),),
ElevatedButton(
  style: ElevatedButton.styleFrom(
    shape: StadiumBorder(),
  ),
  onPressed: widget.onClickConfirm,
   child: Text("confirm"))
    ],
  );

  Widget buildChip(var option,BuildContext context){
    final iSelected = selectedOption == option;
    final foregroundColor =iSelected? Colors.white:Colors.black;
    final backgroundColor  = iSelected? Colors.orange:Colors.white;
    return GestureDetector(
      onTap: () => setState(() {
        selectedOption=option;
      }),
      child: Chip(
        shape: StadiumBorder(
          side: BorderSide(
            color: Colors.orange,
          )
        ),
        label: Text(
        option,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: foregroundColor,
        ), 
      ),
      backgroundColor: backgroundColor,
      ),
    );
  }
}