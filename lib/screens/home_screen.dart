import 'package:flutter/material.dart';
import 'package:flutter_ticket_booking_app/components/hotel_screen.dart';
import 'package:flutter_ticket_booking_app/components/ticket_view.dart';
import 'package:flutter_ticket_booking_app/models/hotel_info.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeedf2),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "Good Morning",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                              color: Color(0xff3b3b3b)),
                        ),
                        Text(
                          "Book Tickets",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                            color: Color(0xff3b3b3b),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/images/img_1.png"),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        size: 30,
                      ),
                      Text("Search"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming Flights",
                      style: TextStyle(
                          fontSize: 21,
                          color: Color(0xff3b3b3b),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.indigo,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  // controller: controller,
                  scrollDirection: Axis.horizontal,
                  // padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: ticketList
                        .map((ticket) => TicketView(ticket: ticket))
                        .toList(),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hotels",
                      style: TextStyle(
                          fontSize: 21,
                          color: Color(0xff3b3b3b),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Show all",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.indigo,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  // controller: controller,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    children: hotelList
                        .map(
                          (hotel) => HotelScreen(hotel: hotel),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
