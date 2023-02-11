
import 'package:flutter/material.dart';
import 'components/cancel_order_button.dart';
import 'components/cancel_text_tile.dart';
import 'components/order_card.dart';
import 'components/questions.dart';

class CancelOrder extends StatefulWidget {
  @override
  State<CancelOrder> createState() => _CancelOrderState();
}

class _CancelOrderState extends State<CancelOrder> {
  String groupValue = '';

  List<String> questions = Questions().questions;

  onChange(String value) {
    setState(() {
      groupValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Colors.orangeAccent,
        title: Text('Back'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OrderCard(),
              SizedBox(
                height: 20,
              ),
              Text(
                'What is the biggest reason for your wish to cancel?',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              CancelTextTile(
                onChange: onChange,
                ansText: 'Galti se order kar diya',
                groupValue: groupValue,
                value: questions[0],
              ),
              CancelTextTile(
                ansText: 'Ghalat item order kar diya',
                onChange: onChange,
                groupValue: groupValue,
                value: questions[1],
              ),
              CancelTextTile(
                ansText: 'Customer ne cancel kar diya',
                onChange: onChange,
                groupValue: groupValue,
                value: questions[2],
              ),
              CancelTextTile(
                ansText: 'Galt Quantity',
                onChange: onChange,
                groupValue: groupValue,
                value: questions[3],
              ),
              CancelTextTile(
                ansText: 'Test Order',
                onChange: onChange,
                groupValue: groupValue,
                value: questions[4],
              ),
              CancelTextTile(
                ansText: 'Other',
                onChange: onChange,
                groupValue: groupValue,
                value: questions[5],
              ),
              CancelOrderButton(buttonName: 'Cancel Order')
            ],
          ),
        ),
      ),
    ));
  }
}
