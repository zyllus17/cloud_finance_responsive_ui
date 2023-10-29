import 'package:cloud_finance_responsive_ui/constants/constants.dart';
import 'package:cloud_finance_responsive_ui/model/overview_data.dart';
import 'package:cloud_finance_responsive_ui/utils/responsive.dart';
import 'package:cloud_finance_responsive_ui/widgets/widgets.dart';

class OverviewSection extends StatelessWidget {
  const OverviewSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.overview,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontSize: 25, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        const SizedBox(height: 16),
        //BUG: Responsiveness issue needs to be fixed
        Responsive(
          mobile: OverviewInfoCardGridView(
            crossAxisCount: size.width < 650 ? 2 : 4,
            childAspectRatio: size.width < 650 && size.width > 350 ? 1.3 : 1,
          ),
          tablet: const OverviewInfoCardGridView(),
          desktop: OverviewInfoCardGridView(
            childAspectRatio: size.width < 1400 ? 1.1 : 1.4,
          ),
        ),
      ],
    );
  }
}

class OverviewInfoCardGridView extends StatelessWidget {
  const OverviewInfoCardGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1.5,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: overviewDataDetails.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) =>
          OverviewInfoCard(overviewInfo: overviewDataDetails[index]),
    );
  }
}
