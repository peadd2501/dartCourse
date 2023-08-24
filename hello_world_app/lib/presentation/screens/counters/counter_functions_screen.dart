import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text('Counter Functions',
          style: TextStyle(color: Colors.white),),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
              icon: const Icon(Icons.refresh_rounded),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$clickCounter',
                style:
                    const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
              ),

              Text(
                'Click${clickCounter == 1 ? '' : 's'}',
                style: const TextStyle(fontSize: 25),
              )

              //  (clickCounter == 0 || clickCounter > 1)
              //   ? const Text('Clicks', style: TextStyle(fontSize: 25),)
              //   : const Text('Click', style: TextStyle(fontSize: 25),)
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(icon: Icons.refresh_outlined,
            onPressed: () {
              clickCounter = 0;
              setState(() {
                
              });
            },),
            const SizedBox(
              height: 10,
            ),
            CustomButton(icon: Icons.exposure_minus_1_outlined,
            onPressed: () {
              if(clickCounter == 0) return;
              clickCounter--;
              setState(() {
                
              });
            },),
            const SizedBox(
              height: 10,
            ),
            CustomButton(icon: Icons.plus_one_outlined,
            onPressed: () {
              clickCounter++;
              setState(() {
                
              });
            },),
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  
  const CustomButton({
    super.key,
    required this.icon, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      enableFeedback: true,
      elevation: 10,
      //shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
