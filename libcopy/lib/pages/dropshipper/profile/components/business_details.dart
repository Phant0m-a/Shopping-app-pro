import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/styles.dart';
import '../../../../widgets/textformfeild.dart';

class BusinessDetails extends StatefulWidget {
  const BusinessDetails({Key? key}) : super(key: key);

  @override
  State<BusinessDetails> createState() => _BusinessDetailsState();
}

class _BusinessDetailsState extends State<BusinessDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Business Details"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                decoration:  BoxDecoration(
                     color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 10,
                    blurRadius: 5,
                  )
                ]),
                child: Column(
                  children:  [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                        color: secondary,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Your Business", style: MyTextStyles.headingSmallWhite,),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child:  Icon(Icons.edit, color: secondary,)),
                          )
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10),child: Column(
                      children: [
                        CustomTextFormField(
                          maxLines: 1,
                          labelText: "Business Name",
                        ),
                        CustomTextFormField(
                          maxLines: 2,
                          labelText: "Address",
                        ),
                        CustomTextFormField(
                          maxLines: 1,
                          labelText: "City",
                        ),
                        CustomTextFormField(
                          maxLines: 1,
                          labelText: "Phone Number",
                          keyboardType: TextInputType.phone,
                          maxLenght: 11,
                        ),
                        Row(
                          children: [
                            Expanded(child: ElevatedButton(onPressed: (){}, child: Text("Save"),)),
                          ],
                        ),
                      ],
                    ),),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
