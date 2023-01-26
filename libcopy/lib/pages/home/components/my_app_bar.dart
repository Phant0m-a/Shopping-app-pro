import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  MyAppBar({super.key, required this.username});

  final String username;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /**container 1 */
          Container(
            child: Row(
              children: [
                //profile pic
                CircleAvatar(
                  backgroundColor: Colors.grey[400],
                  radius: 20,
                  child: Icon(
                    Icons.person,
                    color: Colors.grey[100],
                    size: 35,
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                //profile name
                Text(
                 username,
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ],
            ),
          ),
          //**container 2 shopping cart */
          GestureDetector(
            onTap: () {},
            child: Container(
              // padding: const EdgeInsets.only(right: 10, bottom: 3),
              child: const Icon(
                Icons.shopping_cart_rounded,
                color: Colors.red,
                size: 25,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
