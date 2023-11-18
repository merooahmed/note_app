import 'package:flutter/material.dart';
import 'package:noteapp/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap,  this.loading=false});
  final Function()? onTap;
  final bool loading;
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return GestureDetector(
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          child: Center(
            child:  loading? SizedBox(
              height:24 ,
              width: 24,
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            ) : Text(
              'Add',
              style: TextStyle(color: Colors.white),
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: kprimarycolor,
          ),
        ),
      );
    });
  }
}
