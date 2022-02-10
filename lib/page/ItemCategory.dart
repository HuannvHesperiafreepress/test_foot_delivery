
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemCategory extends StatelessWidget {

  String image;
  String title;
  String count;

  ItemCategory(this.image, this.title, this.count);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8)),
        border: Border.all(color: Color(0xffd9d0e3), width: 1)
      ),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.215,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(title, style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 20), maxLines: 1, overflow: TextOverflow.ellipsis),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(title, style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 10), maxLines: 1, overflow: TextOverflow.ellipsis),
          ),
        ],
      ),
    );
  }
}