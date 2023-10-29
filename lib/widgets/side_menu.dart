import 'package:cloud_finance_responsive_ui/constants/constants.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.white,
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  AppMaterialIcons.cloud,
                  size: 30,
                  color: AppColors.blue,
                ),
                SizedBox(width: 20),
                Flexible(
                  child: Text(
                    AppStrings.cloudFinance,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 35),
            Text(
              AppStrings.menu,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height: 15),
            DrawerListTileItem(
              title: AppStrings.overview,
              materialIcon: AppMaterialIcons.overview,
              tapColor: true,
            ),
            DrawerListTileItem(
              title: AppStrings.statistics,
              materialIcon: AppMaterialIcons.statistics,
            ),
            DrawerListTileItem(
              title: AppStrings.savings,
              materialIcon: AppMaterialIcons.savings,
            ),
            DrawerListTileItem(
              title: AppStrings.portfolios,
              materialIcon: AppMaterialIcons.portfolios,
            ),
            DrawerListTileItem(
              title: AppStrings.messages,
              materialIcon: AppMaterialIcons.message,
            ),
            DrawerListTileItem(
              title: AppStrings.transactions,
              materialIcon: AppMaterialIcons.transactions,
            ),
            SizedBox(height: 15),
            Text(
              AppStrings.general,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height: 15),
            DrawerListTileItem(
              title: AppStrings.settings,
              materialIcon: AppMaterialIcons.settings,
            ),
            DrawerListTileItem(
              title: AppStrings.appearances,
              materialIcon: AppMaterialIcons.appearances,
            ),
            DrawerListTileItem(
              title: AppStrings.needHelp,
              materialIcon: AppMaterialIcons.needHelp,
            ),
            SizedBox(height: 100),
            DrawerListTileItem(
              title: AppStrings.logout,
              materialIcon: AppMaterialIcons.logout,
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTileItem extends StatelessWidget {
  final String title;
  final IconData materialIcon;
  final bool tapColor;

  const DrawerListTileItem({
    super.key,
    required this.title,
    required this.materialIcon,
    this.tapColor = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: tapColor ? AppColors.blue : AppColors.transparent,
      ),
      child: Row(
        children: [
          Icon(
            materialIcon,
            color: tapColor ? AppColors.white : AppColors.grey,
          ),
          const SizedBox(width: 10),
          Text(
            title,
            style: TextStyle(
              color: tapColor ? AppColors.white : AppColors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
