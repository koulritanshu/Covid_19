import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: const Text(
          'INFO',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(20),
            ),
            height: 500.0,
            width: 400.0,
            child: ListView(
              children: const [
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Coronavirus disease (COVID-19) is an infectious disease caused by the SARS-CoV-2 virus. \n\n Most people infected with the virus will experience mild to moderate respiratory illness and recover without requiring special treatment. However, some will become seriously ill and require medical attention. Older people and those with underlying medical conditions like cardiovascular disease, diabetes, chronic respiratory disease, or cancer are more likely to develop serious illness. \n\nAnyone can get sick with COVID-19 and become seriously ill or die at any age. The best way to prevent and slow down transmission is to be well informed about the disease and how the virus spreads. Protect yourself and others from infection by staying at least 1 metre apart from others, wearing a properly fitted mask, and washing your hands or using an alcohol-based rub frequently. Get vaccinated when it’s your turn and follow local guidance. \n\nThe virus can spread from an infected person’s mouth or nose in small liquid particles when they cough, sneeze, speak, sing or breathe. These particles range from larger respiratory droplets to smaller aerosols. It is important to practice respiratory etiquette, for example by coughing into a flexed elbow, and to stay home and self-isolate until you recover if you feel unwell.",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}