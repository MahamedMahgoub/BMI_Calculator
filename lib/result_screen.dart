import 'package:flutter/material.dart';

class bmiresultscreen extends StatelessWidget {
  final int AGGE;
  final bool ISMALE;
  final int RESULT;
  final int WEIGHT;

  bmiresultscreen(
      {required this.AGGE,
      required this.RESULT,
      required this.ISMALE,
      required this.WEIGHT});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff274460),
        appBar: AppBar(
          backgroundColor: Color(0xff274460),
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              // كدا انا بقوله هترجع صفحه للخلف وبياخد كونتكس بس
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.keyboard_arrow_left,
            ),
          ),
          title: Text(
            'BMI Result',
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff274460),
                borderRadius: BorderRadius.circular(10.0),
                // color: Colors.grey[200],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Gender: ${ISMALE ? 'Male' : 'Female'}',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    'Age: $AGGE',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    'Weight: $WEIGHT',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    'Result: $RESULT',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
