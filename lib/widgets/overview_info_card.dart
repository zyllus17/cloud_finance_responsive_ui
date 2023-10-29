import 'package:cloud_finance_responsive_ui/constants/constants.dart';
import 'package:cloud_finance_responsive_ui/model/overview_data.dart';

class OverviewInfoCard extends StatelessWidget {
  const OverviewInfoCard({
    Key? key,
    required this.overviewInfo,
  }) : super(key: key);

  final OverviewData overviewInfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                overviewInfo.icon,
                color: AppColors.grey,
              ),
              const SizedBox(width: 10),
              Text(
                overviewInfo.title,
                style: const TextStyle(color: AppColors.grey, fontSize: 16),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                overviewInfo.amount,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 10),
              Chip(
                label: Row(
                  children: [
                    Icon(
                      overviewInfo.arrow,
                      size: 15,
                      color: overviewInfo.textColor,
                    ),
                    Text(
                      overviewInfo.percentChange,
                      style: TextStyle(
                        color: overviewInfo.textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                backgroundColor: overviewInfo.color,
              ),
            ],
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: overviewInfo.amountChange,
                  style: const TextStyle(
                    color: AppColors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
                  text: ' than last month',
                  style: TextStyle(color: AppColors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
