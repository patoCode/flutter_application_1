import "package:flutter/material.dart";

class CounterFuntionsScreen extends StatefulWidget {
  const CounterFuntionsScreen({super.key});
  @override
  State<CounterFuntionsScreen> createState() => _CounterFuntionsScreenState();
}

class _CounterFuntionsScreenState extends State<CounterFuntionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contador Functions"),
        leading: const IconButton(
          onPressed: null,
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(
                () {
                  clickCounter = 0;
                },
              );
            },
            icon: const Icon(Icons.restart_alt),
          ),
          IconButton(
            onPressed: () {},
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
              style: const TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.w100,
                fontFamily: "Fira Code",
              ),
            ),
            Text(
              (clickCounter != 1) ? 'Clicks' : 'Click!',
              style: const TextStyle(
                fontSize: 40,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ButtonWidget(
            icon: Icons.plus_one,
            onPress: () {
              clickCounter++;
              setState(() {});
            },
          ),
          const SizedBox(height: 12),
          ButtonWidget(
            icon: Icons.exposure_minus_1,
            onPress: () {
              if (clickCounter == 0) return;
              clickCounter--;
              setState(() {});
            },
          ),
          const SizedBox(height: 12),
          ButtonWidget(
            icon: Icons.restore,
            onPress: () {
              clickCounter = 0;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPress;

  const ButtonWidget({super.key, required this.icon, this.onPress});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPress,
      child: Icon(icon),
      backgroundColor: Colors.purple,
      foregroundColor: Colors.white,
    );
  }
}
