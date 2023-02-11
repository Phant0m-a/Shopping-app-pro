
import 'package:flutter/material.dart';

class OrderProgress extends StatelessWidget {
  OrderProgress(
      {required this.orderNumber,
      required this.customerName,
      required this.customerAddress,
      required this.customerNumber,
      required this.supplierName,
      required this.totalItemsPrice});
  String orderNumber;
  String totalItemsPrice;
  String supplierName;
  String customerName;
  String customerNumber;
  String customerAddress;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.only(top: 20, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.deepPurple.shade900,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                )),
            child: Text(
              'Order# $orderNumber (1/1)',
              style: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 1, color: Colors.grey))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Total Amount',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              'Rs. $totalItemsPrice ',
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const Icon(
                              Icons.help_outline,
                              color: Colors.grey,
                              size: 18,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                //Supplier and cutomer Details
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.only(top: 2),
                        child: Column(
                          children: [
                            const Icon(Icons.circle_outlined, size: 15),
                            Container(
                              height: 35,
                              width: 1,
                              color: Colors.black,
                            ),
                            const Icon(Icons.circle, size: 15)
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Supplier',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(supplierName),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'Customer',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('$customerName\n$customerNumber'),
                            Text(customerAddress)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: const BoxDecoration(
                      border: Border(
                          top: BorderSide(width: 1.0, color: Colors.grey))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.topLeft,

                          // decoration: BoxDecoration(
                          //     color: Colors.greenAccent,borderRadius: BorderRadius.circular(10)),
                          width: 70,
                          height: 70,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset('assets/images/p2.png'),
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Cancel Item >',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.red),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    'Item ID : 401331',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  const Text(
                                    'Cotton Organze 3pc',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.black),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  const Text(
                                    'Profit: 0',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: Colors.green),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Container(
                                      decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4, horizontal: 5),
                                      child: const Text(
                                        'Order Under Review',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      )),
                                ],
                              ),
                              const Text(
                                'x 1',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )
                            ],
                          ))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
