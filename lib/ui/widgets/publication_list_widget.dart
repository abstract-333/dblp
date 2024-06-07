import 'package:dblp/common/provider.dart';
import 'package:flutter/material.dart';
import 'dhuha_border.dart';
import 'farah_titile.dart';
import 'hala_boxshadow.dart';
import 'joudi_year.dart';
import 'karam_padding.dart';
import 'rita_type.dart';
import 'slieman_search.dart';
import 'publication_list_model.dart';
import 'roaa_appbar_title.dart';

// مشترك
class PublicationListWidget extends StatelessWidget {
  const PublicationListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final model = NotifierProvider.watch<PublicationListModel>(context);

    return Scaffold(
        appBar: AppBar(
          title: RoaAppBarTitle(number: model?.publications.length),
          centerTitle: true,
        ),
        body: Stack(children: [
          const _MovieListWidget(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              onChanged: model?.searchPublication,
              decoration: SliemanSearch().getInputDecoration(),
            ),
          ),
        ]));
  }
}

class _MovieListWidget extends StatelessWidget {
  const _MovieListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = NotifierProvider.watch<PublicationListModel>(context);
    return ListView.builder(
      controller: ScrollController(),
      padding: const EdgeInsets.only(top: 70),
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      itemCount: model?.publications.length,
      itemExtent: 200,
      itemBuilder: (BuildContext context, int index) {
        model?.showedPublicationAtIndex(index);
        return _MovieListRowWidget(index: index);
      },
    );
  }
}

class _MovieListRowWidget extends StatelessWidget {
  final int index;
  const _MovieListRowWidget({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = NotifierProvider.read<PublicationListModel>(context);
    final publication = model?.publications[index];
    return Padding(
      padding: KaramEdgeInsets().getEdgeInsets(),
      child: Stack(
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              boxShadow: [HalaBoxShadow().getBoxShadow()],
              border: DhuhaBorder().getBorder(),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          FarahTitle(title: publication?.info?.title ?? ''),
                          RitaType(theType: publication?.info?.type ?? ''),
                          const SizedBox(height: 3),
                          JoudiYear(
                              publicationYear: publication?.info?.year ?? ''),
                          const SizedBox(height: 3),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
