import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:trackizer_app/page/spending/components/budgets_category_widget.dart';

class CategoriesListWidget extends StatelessWidget {
  const CategoriesListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        BudgetsCategoryItemsWidget(
          plantName: 'Auto & Transport',
          title: '\$375 left to spend',
          price: '\$25.99',
          sub: 'of \$400',
          icon: HugeIcons.strokeRoundedCar01,
        ),
        SizedBox(
          height: 10,
        ),
        BudgetsCategoryItemsWidget(
          plantName: 'Entertainment',
          title: '\$375 left to spend',
          price: '\$50.99',
          sub: 'of \$600',
          icon: HugeIcons.strokeRoundedEnteringGeoFence,
        ),
        SizedBox(
          height: 10,
        ),
        BudgetsCategoryItemsWidget(
          plantName: 'Security',
          title: '\$375 left to spend',
          price: '\$5.99',
          sub: 'of \$600',
          icon: HugeIcons.strokeRoundedFingerPrint,
        ),
      ],
    );
  }
}
