import 'package:cloud_finance_responsive_ui/constants/constants.dart';
import 'package:cloud_finance_responsive_ui/utils/responsive.dart';
import 'package:cloud_finance_responsive_ui/widgets/widgets.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        child: Column(
          children: [
            const Header(),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        const OverviewSection(),
                        const SizedBox(height: 20),
                        const Row(
                          children: [
                            Expanded(flex: 3, child: StatisticsBarChart()),
                            SizedBox(width: 20),
                            Expanded(flex: 2, child: TotalSavings())
                          ],
                        ),
                        const SizedBox(height: 20),
                        const LatestTransaction(),
                        if (Responsive.isMobile(context))
                          const SizedBox(height: 20),
                      ],
                    ),
                  ),
                  //BUG: Responsiveness not working for Tablet & Mobile properly
                  // if (!Responsive.isMobile(context)) const SizedBox(width: 16),
                  // if (!Responsive.isMobile(context))
                  //   const Expanded(
                  //     flex: 2,
                  //     child: TotalSavings(),
                  //   ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
