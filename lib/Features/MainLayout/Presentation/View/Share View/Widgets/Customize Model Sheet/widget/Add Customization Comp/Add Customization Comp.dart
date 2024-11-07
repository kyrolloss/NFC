import 'package:flutter/material.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Share%20View/Widgets/Customize%20Model%20Sheet/widget/Add%20Customization%20Comp/Custom%20Row/Custom%20Row.dart';

class AddCustomizationComp extends StatelessWidget {
   const AddCustomizationComp({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      width: width*.9,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey , width: 0.5)
      ),
      child:  Column(
        children: [
          CustomRow(title: ' Logo', logo: Icon(Icons.psychology_outlined , color: Colors.grey,size: width*.085,), num2: true,),
          const Divider(
            thickness: .5,
          ),
          CustomRow(title: ' Color', logo: Icon(Icons.color_lens_outlined , color: Colors.grey,size: width*.085,), num2: false,),


        ],
      ),
    );

  }

}
