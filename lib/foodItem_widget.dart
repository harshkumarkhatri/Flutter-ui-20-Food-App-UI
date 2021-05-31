import 'package:flutter/material.dart';

Widget foodItem() {
  return Padding(
      padding: EdgeInsets.only(
        bottom: 18,
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              24,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                offset: Offset(0, 1),
                spreadRadius: 2,
                blurRadius: 2,
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    24,
                  ),
                  topRight: Radius.circular(
                    24,
                  )),
              child: Image(
                  image: NetworkImage(
                      "https://tmbidigitalassetsazure.blob.core.windows.net/rms3-prod/attachments/37/1200x1200/Pizza-from-Scratch_EXPS_FT20_8621_F_0505_1_home.jpg")),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 25,
                left: 15,
              ),
              child: Row(
                children: [
                  Text(
                    "Delux",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15.0),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Chicken, ham, pepperoni, tomato sauce, ",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    TextSpan(
                      text: "spicy chorizo, ",
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                    TextSpan(
                      text: "and mozzarella",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
                padding: EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                child: Row(
                  children: [
                    Text("150 grams, 35 cm",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        )),
                    Spacer(),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(
                            30,
                          ),
                        ),
                        padding: EdgeInsets.only(
                          top: 12,
                          bottom: 12,
                          left: 18,
                          right: 18,
                        ),
                        child: Text("46 usd",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ))),
                  ],
                )),
            SizedBox(height: 16)
          ],
        ),
      ));
}
