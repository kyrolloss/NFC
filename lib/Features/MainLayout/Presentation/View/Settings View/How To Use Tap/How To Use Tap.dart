import 'package:flutter/material.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Settings%20View/How%20To%20Use%20Tap/widget/How%20to%20use%20Card%20widget.dart';

class HowToUseTap extends StatelessWidget {
  const HowToUseTap({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          title: const Text(""),
          surfaceTintColor: Colors.transparent,

          centerTitle: true,
          elevation: 0,
          backgroundColor: const Color(0xffF5F5F1),

          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),

        ),
      body:Column(

        children: [

          Container(
            height:  height*.2,
            width: width*.9,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(20.0),

            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                // Newer iPhones
                DeviceOption(
                  icon: Icons.apple,
                  title: 'Newer iPhones',
                  subtitle: 'iPhone Xr and newer.',
                  iconBackground: Colors.grey[200],
                ),
                const SizedBox(height: 16),
            
                // Android
                DeviceOption(
                  icon: Icons.android,
                  title: 'Android',
                  subtitle: 'All models with NFC.',
                  iconBackground: Colors.grey[200],
                ),
                const SizedBox(height: 16),
            
                // Older iPhones
                DeviceOption(
                  icon: Icons.apple,
                  title: 'Older iPhones',
                  subtitle: 'iPhone X and older.',
                  iconBackground: Colors.grey[200],
                ),
                const SizedBox(height: 16),
            
                // QR Code Sharing
                DeviceOption(
                  icon: Icons.qr_code,
                  title: 'QR code Sharing',
                  subtitle: 'For any smart phone.',
                  iconBackground: Colors.grey[200],
                ),
              ],
            
            ),
          ),
        ],
      )
    );
  }
}
