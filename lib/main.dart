import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toonflix/widgets/Button.dart';
import 'package:toonflix/widgets/currency_card.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;
  void onClicked() {
    setState(() {
      counter = counter + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Click Counter",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Text(
                "$counter",
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              IconButton(
                iconSize: 40,
                onPressed: onClicked,
                icon: const Icon(
                  Icons.add_box_rounded,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class App extends StatelessWidget {
//   const App({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: const Color(0xFF181818),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(
//               horizontal: 20,
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const SizedBox(
//                   height: 80,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         const Text(
//                           "Hey,ryozo",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 34,
//                             fontWeight: FontWeight.w800,
//                           ),
//                         ),
//                         Text(
//                           "Welcome back",
//                           style: TextStyle(
//                             color: Colors.white.withOpacity(0.8),
//                             fontSize: 18,
//                           ),
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 70,
//                 ),
//                 Text(
//                   "Total Balance",
//                   style: TextStyle(
//                     color: Colors.white.withOpacity(0.8),
//                     fontSize: 22,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 5,
//                 ),
//                 const Text(
//                   "\$5 194 482",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 44,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 const Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Button(
//                       text: "Transfer",
//                       bgColor: Color(0xFFF1B33B),
//                       textColor: Colors.black,
//                     ),
//                     Button(
//                       text: "Request",
//                       bgColor: Color(0xFF1F2123),
//                       textColor: Colors.white,
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 100,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     const Text(
//                       "Wallets",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 36,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                     Text(
//                       "View All",
//                       style: TextStyle(
//                         color: Colors.white.withOpacity(0.8),
//                         fontSize: 18,
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 const CurrencyCard(
//                   dx: 0,
//                   dy: 0,
//                   name: "Euro",
//                   code: "EUR",
//                   amount: "6 428",
//                   icon: Icons.euro_rounded,
//                   isInverted: false,
//                 ),
//                 const CurrencyCard(
//                   dx: 0,
//                   dy: -20,
//                   name: "Bitcoin",
//                   code: "BTC",
//                   amount: "9 785",
//                   icon: Icons.currency_bitcoin_rounded,
//                   isInverted: true,
//                 ),
//                 const CurrencyCard(
//                   dx: 0,
//                   dy: -40,
//                   name: "Dollor",
//                   code: "USD",
//                   amount: "928",
//                   icon: Icons.attach_money_rounded,
//                   isInverted: false,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
