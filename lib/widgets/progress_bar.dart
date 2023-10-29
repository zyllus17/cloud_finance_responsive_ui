import 'package:cloud_finance_responsive_ui/constants/constants.dart';

class ProgressBar extends StatelessWidget {
  final double max;
  final double current;
  final Color color;

  const ProgressBar(
      {Key? key,
      required this.max,
      required this.current,
      this.color = AppColors.grey})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, boxConstraints) {
        var x = boxConstraints.maxWidth;
        var percent = (current / max) * x;
        return Stack(
          children: [
            Container(
              width: x,
              height: 10,
              decoration: BoxDecoration(
                color: AppColors.scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(35),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: percent,
              height: 10,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(35),
              ),
            ),
          ],
        );
      },
    );
  }
}
