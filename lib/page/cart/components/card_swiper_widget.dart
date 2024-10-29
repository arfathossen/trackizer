import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trackizer_app/page/cart/components/card_number_field_widget.dart';
import 'package:trackizer_app/shared/constants_colors.dart';



class CartSwiperWidget extends StatelessWidget {
  const CartSwiperWidget({
    super.key,
    required this.arryList,
  });

  final List arryList;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.40,
      padding: const EdgeInsets.only(left: 32),
      child: Swiper(
        itemCount: arryList.length,
        itemWidth: MediaQuery.of(context).size.width * 0.60,
        layout: SwiperLayout.STACK,
        // pagination: const SwiperPagination(
        //   builder: DotSwiperPaginationBuilder(activeSize: 20, space: 5),
        // ),
        itemBuilder: (context, index) {
          var obj = arryList[index];
          return Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Constants.ContainerColor),
            child: Column(
              children: [
                SizedBox(
                  height: 34,
                  width: 56,
                  child: Image.asset(obj['icon']),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Virtual Card',
                  style: TextStyle(
                      color: Constants.secondaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const Spacer(),
                Text(
                  'John Doe',
                  style: TextStyle(
                      color: Constants.primaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 15),
                ),
                const SizedBox(
                  height: 10,
                ),
                const CardNumberFieldWidget(),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '08/28',
                  style: TextStyle(
                      color: Constants.secondaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 40,
                  height: 28,
                  child: Image.asset('assets/images/Chip.png'),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
