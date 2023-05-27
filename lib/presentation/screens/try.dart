// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Slide Transition Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: SlideTransitionPage(),
//     );
//   }
// }

// class SlideTransitionPage extends StatefulWidget {
//   @override
//   _SlideTransitionPageState createState() => _SlideTransitionPageState();
// }

// class _SlideTransitionPageState extends State<SlideTransitionPage>
//     with SingleTickerProviderStateMixin {
//   bool _isMenuOpen = false;
//   late AnimationController _animationController;
//   late Animation<double> _scaleAnimation;
//   late Animation<double> _translateAnimation;

//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 300),
//     );

//     _scaleAnimation =
//         Tween<double>(begin: 1, end: 0.8).animate(_animationController);
//     _translateAnimation =
//         Tween<double>(begin: 0, end: 200).animate(_animationController);
//   }

//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }

//   void _toggleMenu() {
//     setState(() {
//       _isMenuOpen = !_isMenuOpen;

//       if (_isMenuOpen) {
//         _animationController.forward();
//       } else {
//         _animationController.reverse();
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Slide Transition Demo'),
//       ),
//       body: Stack(
//         children: [
//           _buildMenu(),
//           _buildMainPage(),
//         ],
//       ),
//     );
//   }

//   Widget _buildMenu() {
//     return Stack(
//       children: [
//         if (_isMenuOpen)
//           GestureDetector(
//             onTap: _toggleMenu,
//             child: Container(
//               color: Colors.black54,
//             ),
//           ),
//         Transform.translate(
//           offset: Offset(_translateAnimation.value, 0),
//           child: Transform.scale(
//             scale: _scaleAnimation.value,
//             child: Container(
//               width: 200,
//               color: Colors.white,
//               child: ListView(
//                 children: [
//                   ListTile(
//                     leading: const Icon(Icons.home),
//                     title: const Text('Home'),
//                     onTap: () {
//                       // Handle home menu item tap
//                     },
//                   ),
//                   ListTile(
//                     leading: const Icon(Icons.settings),
//                     title: const Text('Settings'),
//                     onTap: () {
//                       // Handle settings menu item tap
//                     },
//                   ),
//                   ListTile(
//                     leading: const Icon(Icons.info),
//                     title: const Text('About'),
//                     onTap: () {
//                       // Handle about menu item tap
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildMainPage() {
//     print(_translateAnimation.value);
//     return GestureDetector(
//         onTap: _toggleMenu,
//         child: AnimatedBuilder(
//           animation: _animationController,
//           builder: (context, child) {
//             return Transform.translate(
//               offset: const Offset(0, 600),
//               child: child,
//             );
//           },
//           child: Container(
//             color: Colors.blue,
//             child: const Center(
//               child: Text(
//                 'Main Page',
//                 style: TextStyle(color: Colors.white, fontSize: 24),
//               ),
//             ),
//           ),
//         ));
//   }
// }
