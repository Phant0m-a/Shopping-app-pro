import 'dart:math';

import 'package:dropshipper/payments/components/payment_card.dart';
import 'package:flutter/material.dart';
// import 'package:responsive_table/responsive_table.dart';

class PaymentTable extends StatelessWidget {
  const PaymentTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PaymentCard(title: 'Paid', price: 15000, onTap: (() {
                  
                })),
                PaymentCard(title: 'Pending', price: 25000, onTap: (() {
                  
                })),
              ],
            ),

            const SizedBox(height: 15),
            
            Expanded(
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                color: Colors.grey.shade200
                ),
                child: InteractiveViewer(
                  constrained: false,
                  child: DataTable(
                    columns: const [
                      DataColumn(label: Text('id')),
                      DataColumn(label: Text('name')),
                      DataColumn(label: Text('sub-category')),
                      DataColumn(label: Text('quantity')),
                      DataColumn(label: Text('amount')),
                    ],
                    rows: const [
                      DataRow(cells: [
                        DataCell(Text('1')),
                        DataCell(Text('Abdul Hameed Khan')),
                        DataCell(Text('T-shirt')),  
                        DataCell(Text('14')),
                        DataCell(Text('18500')),
                      ]),
                      
                      DataRow(cells: [
                        DataCell(Text('2')),
                        DataCell(Text('Abdul Quddus Khan')),
                        DataCell(Text('summer shirt')),  
                        DataCell(Text('8')),
                        DataCell(Text('1250')),
                      ]),
                
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
