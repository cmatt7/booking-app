import 'package:flutter/material.dart';

// Utils
import 'package:booking_app/utils/app_layout.dart';

class TicketsTab extends StatelessWidget {
  const TicketsTab(
      {super.key, required this.firstTab, required this.secondTab});

  final String firstTab;
  final String secondTab;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getWidth(50)),
          color: const Color(0xFFF4F6FD),
        ),
        child: Row(
          children: [
            /* AirLine Tickets Button */
            Container(
                width: size.width * 0.44,
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(AppLayout.getHeight(50)),
                  ),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(firstTab),
                )),
            /* Hotels Button */
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(AppLayout.getHeight(50)),
                ),
                color: Colors.transparent,
              ),
              child: Center(
                child: Text(secondTab),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
