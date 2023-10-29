import 'package:cloud_finance_responsive_ui/constants/constants.dart';

class OverviewData {
  final String title;
  final IconData icon;
  final IconData arrow;
  final String amount;
  final String percentChange;
  final String amountChange;
  final Color color;
  final Color textColor;

  OverviewData({
    required this.title,
    required this.icon,
    required this.arrow,
    required this.amount,
    required this.percentChange,
    required this.amountChange,
    required this.color,
    required this.textColor,
  });
}

List overviewDataDetails = [
  OverviewData(
    icon: AppMaterialIcons.earnings,
    arrow: AppMaterialIcons.upArrow,
    title: AppStrings.earnings,
    amount: "\$928.41",
    color: AppColors.backgroundgreen,
    percentChange: "12.8%",
    amountChange: "\$118.8",
    textColor: AppColors.green,
  ),
  OverviewData(
    icon: AppMaterialIcons.spending,
    arrow: AppMaterialIcons.downArrow,
    title: AppStrings.spendings,
    amount: "\$169.43",
    color: AppColors.red,
    percentChange: "3.1%",
    amountChange: "\$5.2",
    textColor: AppColors.white,
  ),
  OverviewData(
    icon: AppMaterialIcons.piggybank,
    arrow: AppMaterialIcons.upArrow,
    title: AppStrings.saving,
    amount: "\$406.27",
    color: AppColors.backgroundgreen,
    percentChange: "8.2%",
    amountChange: "\$33.3",
    textColor: AppColors.green,
  ),
  OverviewData(
    icon: AppMaterialIcons.investment,
    arrow: AppMaterialIcons.upArrow,
    title: AppStrings.investment,
    amount: "\$1854.08",
    color: AppColors.backgroundgreen,
    percentChange: "9.2%",
    amountChange: "\$78.5",
    textColor: AppColors.green,
  ),
];
