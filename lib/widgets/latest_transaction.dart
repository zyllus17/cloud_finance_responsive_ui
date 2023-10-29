import 'package:cloud_finance_responsive_ui/constants/constants.dart';
import 'package:cloud_finance_responsive_ui/model/transaction_data.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

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
                AppStrings.latestTransaction,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                AppStrings.viewAll,
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columnSpacing: 16,
              columns: const [
                DataColumn(
                  label: Text(
                    AppStrings.toFrom,
                    style: TextStyle(color: AppColors.grey),
                  ),
                ),
                DataColumn(
                  label: Text(
                    AppStrings.date,
                    style: TextStyle(color: AppColors.grey),
                  ),
                ),
                DataColumn(
                  label: Text(
                    AppStrings.description,
                    style: TextStyle(color: AppColors.grey),
                  ),
                ),
                DataColumn(
                  label: Text(
                    AppStrings.amount,
                    style: TextStyle(color: AppColors.grey),
                  ),
                ),
                DataColumn(
                  label: Text(
                    AppStrings.status,
                    style: TextStyle(color: AppColors.grey),
                  ),
                ),
                DataColumn(
                  label: Text(
                    AppStrings.action,
                    style: TextStyle(color: AppColors.grey),
                  ),
                ),
              ],
              rows: List.generate(
                transactionDataDetails.length,
                (index) => recentFileDataRow(transactionDataDetails[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(TransactionData transactionData) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            const Icon(
              AppMaterialIcons.profile,
              color: AppColors.grey,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                transactionData.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      DataCell(
        Text(
          transactionData.date,
          style: const TextStyle(color: AppColors.grey),
        ),
      ),
      DataCell(
        Text(
          transactionData.description,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      DataCell(
        Text(
          transactionData.amount,
          style: const TextStyle(
              color: AppColors.green, fontWeight: FontWeight.bold),
        ),
      ),
      DataCell(
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              border: Border.all(color: AppColors.green)),
          child: Text(
            transactionData.status,
            style: const TextStyle(
                color: AppColors.green, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      const DataCell(
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              AppMaterialIcons.link,
              color: AppColors.grey,
            ),
            Icon(
              AppMaterialIcons.delete,
              color: AppColors.grey,
            ),
            Icon(
              AppMaterialIcons.threeDot,
              color: AppColors.grey,
            ),
          ],
        ),
      ),
    ],
  );
}
