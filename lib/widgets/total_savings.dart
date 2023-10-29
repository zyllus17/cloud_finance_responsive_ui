import 'package:cloud_finance_responsive_ui/constants/constants.dart';
import 'package:cloud_finance_responsive_ui/widgets/widgets.dart';

class TotalSavings extends StatelessWidget {
  const TotalSavings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Savings',
                style: TextStyle(color: AppColors.grey, fontSize: 16),
              ),
              Icon(
                AppMaterialIcons.threeDot,
                color: AppColors.grey,
              ),
            ],
          ),
          const Row(
            children: [
              Text(
                '\$406.27',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 10),
              Chip(
                label: Row(
                  children: [
                    Icon(
                      AppMaterialIcons.upArrow,
                      size: 15,
                      color: AppColors.green,
                    ),
                    Text(
                      '8.2%',
                      style: TextStyle(
                          color: AppColors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ],
                ),
                backgroundColor: AppColors.backgroundgreen,
              ),
            ],
          ),
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: '+ \$33.3',
                  style: TextStyle(
                      color: AppColors.green, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: ' than last month',
                  style: TextStyle(color: AppColors.grey),
                ),
              ],
            ),
          ),
          const Divider(),
          const SizedBox(height: 10),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    AppStrings.dreamStudio,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: '\$251.9',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: '/\$750',
                          style: TextStyle(color: AppColors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const ProgressBar(
                current: 40,
                max: 100,
                color: AppColors.blue,
              ),
              const SizedBox(height: 20),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    AppStrings.education,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: '\$183.8',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: '/\$200',
                          style: TextStyle(color: AppColors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const ProgressBar(
                current: 85,
                max: 100,
                color: AppColors.blue,
              ),
              const SizedBox(height: 20),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    AppStrings.dreamStudio,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: '\$30.8',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: '/\$150',
                          style: TextStyle(color: AppColors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const ProgressBar(
                current: 20,
                max: 100,
                color: AppColors.blue,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}
