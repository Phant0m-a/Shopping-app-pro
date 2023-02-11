import 'package:dropshipper/widgets/iconandTextMixed.dart';
import 'package:flutter/material.dart';
import 'components/bottomSheet.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 0,
        title: const Text(
          'DropShipping',
        ),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.all(08),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2, color: Colors.green)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InlineTextandIcon(
                          isIcon: true,
                          IconName: Icons.circle,
                          iconSize: 30,
                          iconColor: Colors.purple.shade600,
                          FirstText: ' M Ahsan',
                          FirstTextStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        InlineTextandIcon(
                          isIcon: true,
                          IconName: Icons.edit_note_outlined,
                          iconSize: 17,
                          iconColor: Colors.green,
                          FirstText: '  Edit',
                          FirstTextStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                              fontSize: 10),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'house number khan boys hosterl street number back of ada sector bhakkar city mashoor jagah  Moosa memorial\n\n+923107596525',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                margin: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                    border: Border(
                  top: BorderSide(width: 0.5, color: Colors.grey),
                  bottom: BorderSide(width: 0.5, color: Colors.grey),
                )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Payment Method',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.grey),
                    ),
                    InlineTextandIcon(
                      IconName: Icons.wallet,
                      isIcon: true,
                      iconColor: Colors.black,
                      iconSize: 20,
                      FirstText: '  Cash On Delivery (COD)',
                      FirstTextStyle:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    )
                  ],
                ),
              ),
              Container(
                height: 150,
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 0.5, color: Colors.grey)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Order Summary',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    InlineTextandIcon(
                      FirstText: 'Total Whole Sale Price',
                      FirstTextStyle:
                          TextStyle(color: Colors.grey, fontSize: 12),
                      SecondText: 'Rs. 800',
                      SecondTextStyle:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    InlineTextandIcon(
                      FirstText: 'Shipping Fee',
                      FirstTextStyle:
                          TextStyle(color: Colors.grey, fontSize: 12),
                      SecondText: 'Rs. 90',
                      SecondTextStyle:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    InlineTextandIcon(
                      FirstText: 'Profit',
                      FirstTextStyle:
                          TextStyle(color: Colors.grey, fontSize: 12),
                      SecondText: 'Rs. 0',
                      SecondTextStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          fontSize: 12),
                    ),
                    Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                    InlineTextandIcon(
                      FirstText: 'Total price Charges to Customer',
                      FirstTextStyle:
                          TextStyle(color: Colors.grey, fontSize: 12),
                      SecondText: 'Rs. 890',
                      SecondTextStyle:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                  ],
                ),
              ),
              Text(
                'Review your order',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              Container(
                height: 100,
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 08, vertical: 08),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 0.5, color: Colors.grey)),
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 70,
                        width: 70,
                        child: ClipRRect(
                          child: Image.asset('assets/images/p1.png'),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Printed Top For Women',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 10),
                          ),
                          Text(
                            'Rs. 800',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                                fontSize: 10),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InlineTextandIcon(
                                  FirstText: 'Quantity: ',
                                  SecondText: '1',
                                  FirstTextStyle: const TextStyle(
                                      color: Colors.grey, fontSize: 10),
                                  SecondTextStyle: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10)),
                              InlineTextandIcon(
                                  FirstText: 'Size: ',
                                  SecondText: 'Length(40)',
                                  FirstTextStyle: const TextStyle(
                                      color: Colors.grey, fontSize: 10),
                                  SecondTextStyle: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10))
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Profit: ',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              ),
                              Text(
                                'Rs. 0',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                bottomSheet(context);
              }, child: const Padding(
                padding:  EdgeInsets.all(15.0),
                child: Text("Continue"),
              ),),
            ],
          ),
        ),
      )),
    );
  }
}
