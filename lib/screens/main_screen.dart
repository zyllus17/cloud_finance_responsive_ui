import 'package:cloud_finance_responsive_ui/constants/constants.dart';
import 'package:cloud_finance_responsive_ui/screens/dashboard_screen.dart';
import 'package:cloud_finance_responsive_ui/utils/responsive.dart';
import 'package:cloud_finance_responsive_ui/widgets/widgets.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              const Expanded(
                flex: 1,
                child: SideMenu(),
              ),
            const Expanded(
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
