import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  Color TextColorOfProductPage = Colors.deepOrange.shade600.withOpacity(0.5);

  TextEditingController quantityController = TextEditingController();
  late int quantity;
  @override
  void initState() {
    super.initState();
    quantityController.text = '01';
    quantity = int.parse(quantityController.text);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leadingWidth: 25,
            backgroundColor: TextColorOfProductPage,
            title: Text('Order Product'),
          ),
          body: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              //main Column ,there will be column and button
              children: [
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border:
                            Border.all(width: 1, color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.pinkAccent.withOpacity(0.1),
                      ),
                      height: 80,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                flex: 1,
                                child: Image.asset('assets/images/abdul.png')),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              flex: 4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Product Name and Details',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 12),
                                  ),
                                  Text('Rs. 8150',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: TextColorOfProductPage)),
                                  Text('Size: Regular',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.grey)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            'Quantity',
                            style: TextStyle(
                                color: TextColorOfProductPage,
                                fontWeight: FontWeight.bold,
                                fontSize: 13),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              myButton(
                                  onClick: () {
                                    setState(() {
                                      quantity--;
                                      quantityController.text =
                                          quantity.toString();
                                    });
                                  },
                                  iconName: Icons.remove),
                              Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  width: 50,
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    controller: quantityController,
                                    maxLength: 3,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                    decoration: InputDecoration(
                                        counterText: '',
                                        border: InputBorder.none),
                                    keyboardType: TextInputType.number,
                                  )),
                              myButton(
                                onClick: () {
                                  setState(() {
                                    quantity++;
                                    quantityController.text =
                                        quantity.toString();
                                    print(quantityController.text);
                                  });
                                },
                                iconName: Icons.add,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Divider(
                      height: 50,
                      thickness: 0.2,
                      color: TextColorOfProductPage,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Add Your Profit',
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 12),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.circular(08),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(08),
                            borderSide:
                                BorderSide(color: Colors.black, width: 0.5),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 12)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5,
                              spreadRadius: 1.5,
                              blurStyle: BlurStyle.outer)
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          cardText(
                            firstText: 'Wholesale Price',
                            lastText: 'Rs. 1000',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          cardText(
                            firstText: 'Total Profit',
                            lastText: 'Rs. 100',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          cardText(
                            firstText: 'Delivery Charges',
                            lastText: 'Rs. 0',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            thickness: 0.5,
                            color: TextColorOfProductPage,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          cardText(
                            firstText: 'Total Price For Customer',
                            lastText: 'Rs. 1100',
                            firstTextStyle: TextStyle(
                                color: TextColorOfProductPage,
                                fontWeight: FontWeight.bold),
                            lastTextStyle: TextStyle(
                                color: TextColorOfProductPage,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(TextColorOfProductPage),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Proceed to Check Out',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class cardText extends StatelessWidget {
  const cardText({
    Key? key,
    required this.firstText,
    required this.lastText,
    this.firstTextStyle = const TextStyle(),
    this.lastTextStyle = const TextStyle(),
  }) : super(key: key);
  final String firstText;
  final String lastText;
  final TextStyle firstTextStyle;
  final TextStyle lastTextStyle;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          firstText,
          style: firstTextStyle,
        ),
        Text(
          lastText,
          style: lastTextStyle,
        )
      ],
    );
  }
}

class myButton extends StatelessWidget {
  myButton({required this.iconName, required this.onClick});

  final IconData iconName;
  var onClick;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.deepOrange.shade600),
            borderRadius: BorderRadius.circular(5)),
        child: Icon(
          iconName,
          size: 10,
        ),
      ),
    );
  }
}
