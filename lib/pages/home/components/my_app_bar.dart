import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MYAppBar extends StatelessWidget with PreferredSizeWidget {
  MYAppBar({super.key, required this.username});

  final String username;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        username.toString(),
        style: TextStyle(color: Colors.black, fontSize: 15),
      ),
      leading: CircleAvatar(
        backgroundColor: Colors.grey[400],
        radius: 20,
        // child: Icon(
        //   Icons.person,
        //   color: Colors.grey[100],
        //   size: 35,
        // ),
        //abdul hameed
       child: Image.asset('assets/images/abdul.png', fit: BoxFit.cover, filterQuality: FilterQuality.medium,),

      ),

       actions: [
            Container(
              padding: const EdgeInsets.only(right: 10, bottom: 3),
              child: const Icon(
                Icons.shopping_cart_rounded,
                color: Colors.red,
                size: 25,
              ),
            )
          ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
