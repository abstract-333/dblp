import 'package:dblp/common/provider.dart';
import 'package:dblp/ui/theme/app_colors.dart';
import 'package:dblp/ui/widgets/main_screen/publication_list_model.dart';
import 'package:dblp/ui/widgets/main_screen/publication_list_widget.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'dblp',
      home: NotifierProvider(
        create: () => PublicationListViewModel(),
        isManagingModel: true,
        child: const PublicationListWidget(),
      ),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.mainDarkBlue,
        ),
      ),
    );
  }
}
