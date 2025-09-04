import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class UpcomingBookingsScreen extends StatefulWidget {
  const UpcomingBookingsScreen({super.key});

  @override
  State<UpcomingBookingsScreen> createState() => _UpcomingBookingsScreenState();
}

class _UpcomingBookingsScreenState extends State<UpcomingBookingsScreen> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  // Example booking data
  final List<Map<String, String>> bookings = [
    {"service": "Scooter", "time": "09:00 AM", "status": "pending"},
    {"service": "Battery", "time": "01:00 PM", "status": "pending"},
    {"service": "Bike", "time": "04:00 PM", "status": "pending"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("View Upcoming Bookings"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Calendar
            TableCalendar(
              firstDay: DateTime(2020),
              lastDay: DateTime.now(), // ✅ restrict till today only
              focusedDay: _focusedDay,
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                if (!selectedDay.isAfter(DateTime.now())) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });
                }
              },
              headerStyle: const HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
              ),
              calendarStyle: const CalendarStyle(
                todayDecoration: BoxDecoration(
                  color: Colors.blueAccent,
                  shape: BoxShape.circle,
                ),
                selectedDecoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Bookings list
            Expanded(
              child: ListView.builder(
                itemCount: bookings.length,
                itemBuilder: (context, index) {
                  final booking = bookings[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    child: ListTile(
                      title: Text(booking["service"]!),
                      subtitle: Text("Booking: ${booking["time"]}"),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (booking["status"] == "pending")
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue),
                              onPressed: () {
                                setState(() {
                                  bookings[index]["status"] = "accepted";
                                });
                              },
                              child: const Text(
                                "Accept",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          const SizedBox(width: 8),
                          if (booking["status"] == "pending")
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red),
                              onPressed: () {
                                setState(() {
                                  bookings[index]["status"] = "rejected";
                                });
                              },
                              child: const Text(
                                "Reject",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          if (booking["status"] == "accepted")
                            const Text("✅ Accepted",
                                style: TextStyle(color: Colors.green)),
                          if (booking["status"] == "rejected")
                            const Text("❌ Rejected",
                                style: TextStyle(color: Colors.red)),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
