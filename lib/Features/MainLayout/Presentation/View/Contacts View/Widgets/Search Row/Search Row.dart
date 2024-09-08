import 'package:flutter/material.dart';

class SearchRow extends StatelessWidget {
  const SearchRow({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return  Row(
      children: [
        Expanded(
          child: SizedBox(
            height: height *0.05,
            child: TextFormField(
              decoration:  const InputDecoration(
                hintText: 'Search For Contacts',
                hintStyle: TextStyle(
                  color: Colors.black54,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(25.0),
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: width*.03,
        ),
        Container(
          height: height *0.05,
          width: width*.225,
          decoration:  const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  [
              const Icon(Icons.add , color: Color(0xff767B91),),
              Text('Add',style: TextStyle(color: const Color(0xff767B91) , fontWeight: FontWeight.w500 , fontSize:width *.04 ),),
            ],
          )
        )
      ],
    );
  }
}
