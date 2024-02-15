import 'package:flutter/material.dart';
import 'package:reface/shared/shared.dart';
import 'package:reface/shared/utils.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeCalendar extends StatefulWidget {
  const HomeCalendar({super.key});

  @override
  State<HomeCalendar> createState() => _HomeCalendarState();
}

class _HomeCalendarState extends State<HomeCalendar> {
  CalendarFormat _calendarFormat = CalendarFormat.week;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    //
    return TableCalendar(
      firstDay: kFirstDay,
      lastDay: kLastDay,
      focusedDay: _focusedDay,
      availableCalendarFormats: const {
        // if we want to add month view , uncomment the line below
        // CalendarFormat.month: 'Month',
        CalendarFormat.week: 'Week',
      },
      calendarFormat: _calendarFormat,
      calendarStyle: const CalendarStyle(
        selectedTextStyle: TextStyle(color: Colors.white),
        todayDecoration: BoxDecoration(
          color: AppColors.primary,
          shape: BoxShape.circle,
        ),
        todayTextStyle: TextStyle(color: Colors.white),
      ),
      selectedDayPredicate: (day) {
        return isSameDay(_selectedDay, day);
      },

      //////////
      ///TO FIX: onDayselected is not working because onTap callaback function is broken for some reason
      onDaySelected: (selectedDay, focusedDay) {
        if (!isSameDay(_selectedDay, selectedDay)) {
          // Call `setState()` when updating the selected day
          setState(() {
            _selectedDay = selectedDay;
            _focusedDay = focusedDay;
          });
        }
      },
      onFormatChanged: (format) {
        if (_calendarFormat != format) {
          // Call `setState()` when updating calendar format
          setState(() {
            _calendarFormat = format;
          });
        }
      },
      onPageChanged: (focusedDay) {
        // No need to call `setState()` here
        _focusedDay = focusedDay;
      },
    );
  }
}
