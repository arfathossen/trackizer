import 'package:flutter/material.dart';
import 'package:trackizer_app/shared/constants_colors.dart';

class YourSubscriotionWidget extends StatefulWidget {
  const YourSubscriotionWidget({super.key});

  @override
  State<YourSubscriotionWidget> createState() => _YourSubscriotionWidgetState();
}

class _YourSubscriotionWidgetState extends State<YourSubscriotionWidget> {
  @override
  Widget build(BuildContext context) {
    List arryList = [
      {
        "icon": "assets/images/Spotify Logo.png",
        "title": "Spotify",
        'sub': '\$5.99',
      },
      {
        "icon": "assets/images/YT Premium Lgoo.png",
        "title": "YouTube Premium",
        'sub': '\$18.99',
      },
      {
        "icon": "assets/images/OneDrive Logo.png",
        "title": "Microsoft OneDrive",
        'sub': '\$29.99',
      },
    ];

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
          border: Border.all(width: 1, color: Constants.primaryColor),
          borderRadius: BorderRadius.circular(16)),
      height: 68,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              i['icon'],
              fit: BoxFit.cover,
              height: 40,
              width: 40,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          BuildRowWidget(i: i)
        ],
      ),
    );
  }
}

class BuildRowWidget extends StatelessWidget {
  const BuildRowWidget({
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
            style: TextStyle(
                color: Constants.secondaryColor,
                fontWeight: FontWeight.w600,
                fontSize: 15),
          ),
          Text(
            i['sub'],
            style: TextStyle(
                color: Constants.secondaryColor,
                fontWeight: FontWeight.w600,
                fontSize: 15),
          ),
        ],
      ),
    ));
  }
}
