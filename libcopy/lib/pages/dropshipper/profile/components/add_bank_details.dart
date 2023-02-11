import 'package:dropshipper/constants/styles.dart';
import 'package:dropshipper/widgets/textformfeild.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';

class AddBankDetails extends StatefulWidget {
  const AddBankDetails({Key? key}) : super(key: key);

  @override
  State<AddBankDetails> createState() => _AddBankDetailsState();
}

class _AddBankDetailsState extends State<AddBankDetails> {

  String groupValue = '';
  bool switchValue = true;

  void checkRadio(String value ) {
    setState(() {
      groupValue = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: const Text("Add Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Select Payment Method',
                  style: MyTextStyles.sectionTitleSmallPrimary,
                ),

                ListTile(
                  title: const Text('Jazz Cash'),
                  leading: Radio(
                      value: 'Jazz Cash',
                      groupValue: groupValue,
                      onChanged: (value) {
                        checkRadio(value as String);
                      }
                  ),
                ),
                ListTile(
                  title: const Text('Easy Paisa'),
                  leading: Radio(
                      value: 'Easy Paisa',
                      groupValue: groupValue,
                      onChanged: (value) {
                        checkRadio(value as String);
                      }
                  ),
                ),
                Text("You Selected: $groupValue", ),
                const SizedBox(height: 40,),
                Text('Account Details',style: MyTextStyles.headingSmallPrimary,),
                const SizedBox(height: 20,),
                const CustomTextFormField(maxLines: 1, labelText: "Account number", keyboardType: TextInputType.phone, maxLenght: 10,),
                const SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Set default bank account', style: MyTextStyles.subHeadingBlack,),
                    CupertinoSwitch(
                      activeColor: primary,
                      value: switchValue,
                      onChanged: (value) {
                        setState(() {
                          switchValue = value;
                        });
                      },
                    ),
                  ],
                )
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const AddBankDetails()));
              },
              child: Container(
                  width: double.infinity  ,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: primary,
                  ),
                  child:  Center(child: Text('Continue', style: MyTextStyles.headingSmallWhite ,),),),
            ),
          ],
        ),
      ),
    ));
  }
}
