import 'package:flutter/material.dart';
import 'package:trackizer_app/shared/constants_colors.dart';

class buildUpcomingBillsWidget extends StatefulWidget {
  const buildUpcomingBillsWidget({
    super.key,
    required this.arryList,
  });

  final List arryList;

  @override
  State<buildUpcomingBillsWidget> createState() =>
      _buildUpComingBillsWidgetState();
}

class _buildUpComingBillsWidgetState extends State<buildUpcomingBillsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      height: MediaQuery.sizeOf(context).height * 0.45,
      width: double.infinity,
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: widget.arryList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 16,
          crossAxisCount: 2,
          crossAxisSpacing: 16,
        ),
        itemBuilder: (context, index) {
          var obj = widget.arryList[index];
          return InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 170,
              width: 160,
              decoration: BoxDecoration(
                  // color:Color(0xFF4E4E61),
                  color: Constants.ContainerColor,
                  borderRadius: BorderRadius.circular(16)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      obj['icon'],
                      fit: BoxFit.cover,
                      height: 40,
                      width: 40,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    obj['title'],
                    style: TextStyle(
                        color: Constants.secondaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    obj['sub'],
                    style: TextStyle(
                        color: Constants.secondaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
