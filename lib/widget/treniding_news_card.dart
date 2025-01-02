import 'package:flutter/material.dart';

class TrenidingNewsCard extends StatelessWidget {
  const TrenidingNewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(44, 36, 0, 30),
        elevation: 3,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            Container(
              width: 150,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset("lib/assets/science_category.jpg")),
            ),
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text(
                    "SIHIHGHS ASHJAHSIhj ahdjshdiow",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text(
                    "aklad skdaklsd da rfdfe sfkdf lkfor oiorfij dkfmeijw dkmfkf dlfor cnak",
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Colors.white54,
                          fontSize: 12,
                        ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
