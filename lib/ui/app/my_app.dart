import 'package:dblp/common/provider.dart';
import 'package:dblp/ui/theme/app_colors.dart';
import 'package:dblp/ui/widgets/publication_list_model.dart';
import 'package:dblp/ui/widgets/publication_list_widget.dart';
import 'package:flutter/material.dart';

// بلند الحسين
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'dblp',
      home: NotifierProvider(
        create: () => PublicationListModel(),
        isManagingModel: true,
        child: const PublicationListWidget(),
      ),
      theme: ThemeData.light().copyWith(
        primaryColor: AppColors.lightPrimaryColor,
        secondaryHeaderColor: AppColors.lightSecondaryHeaderColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.mainLightBlue,
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: AppColors.darkPrimaryColor,
        secondaryHeaderColor: AppColors.darkSecondaryHeaderColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.mainDarkBlue,
        ),
      ),
    );
  }
}
