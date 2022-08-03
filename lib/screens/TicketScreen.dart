import 'package:flutter/material.dart';

class TicketScreen extends StatefulWidget {
  TicketScreen({Key? key}) : super(key: key);

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(" Ticket screen"),
      ),
    );
  }
}
