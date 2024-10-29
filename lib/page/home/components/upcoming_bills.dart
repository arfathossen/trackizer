import 'package:flutter/material.dart';
import 'package:trackizer_app/shared/constants_colors.dart';

class UpcomingBills extends StatelessWidget {
  UpcomingBills({super.key});
  List arryList = [
    {
      'day': 'Jun',
      "date": "25",
      "title": "Spotify",
      'sub': '\$5.99',
    },
    {
      'day': 'Jun',
      "date": "25",
      "title": "YouTube Premium",
      'sub': '\$18.99',
    },
    {
      'day': 'Jun',
      "date": "25",
      "title": "Microsoft OneDrive",
      'sub': '\$29.99',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: InkWell(
        onTap: () {
          // Navigator.of(context).push(MaterialPageRoute(
          //     builder: (context) =>
          //         )));
        },
        child: ListView.separated(
            itemBuilder: (context, index) {
              var i = arryList[index];
              return SubTile(i: i);
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 8,
              );
            },
            itemCount: arryList.length),
      ),
    );
  }
}

class SubTile extends StatelessWidget {
  const SubTile({
    super.key,
    required this.i,
  });

  final dynamic i;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Constants.ContainerColor,
          border: Border.all(
            width: 1,
            color: Constants.primaryColor,
          ),
          borderRadius: BorderRadius.circular(16)),
      height: 68,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Constants.ContainerColor,
            ),
            height: 40,
            width: 40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  style: TextStyle(
                    fontSize: 13,
                    color: Constants.primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                  i['day'],
                ),
                Text(
                  style: TextStyle(
                    fontSize: 15,
                    color: Constants.secondaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                  i['date'],
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          _buildRowWidget(i: i)
        ],
      ),
    );
  }
}

class _buildRowWidget extends StatelessWidget {
  const _buildRowWidget({
    super.key,
    required this.i,
  });

  final dynamic i;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            i['title'],
            style: const TextStyle(
                color: Color(0Xffffffff),
                fontWeight: FontWeight.w600,
                fontSize: 15),
          ),
          Text(
            i['sub'],
            style: const TextStyle(
                color: Color(0Xffffffff),
                fontWeight: FontWeight.w600,
                fontSize: 15),
          ),
        ],
      ),
    ));
  }
}
