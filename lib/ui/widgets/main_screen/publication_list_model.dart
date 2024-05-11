import 'dart:async';

import 'package:dblp/domain/api_client/publication_api_client.dart';
import 'package:dblp/domain/entities/hit.dart';
import 'package:dblp/domain/entities/publications.dart';
import 'package:dblp/common/pagination.dart';
import 'package:flutter/material.dart';

class PublicationListViewModel extends ChangeNotifier {
  final _publicationService = PublicationApiClient();
  late final Paginator<Hit> _searchPublicationPaginator;
  Timer? searchDeboubce;
  var _publications = <Hit>[];
  String? _searchQuery;
  bool get isSearchMode {
    final searchQuery = _searchQuery;
    return searchQuery != null && searchQuery.isNotEmpty;
  }

  List<Publications> get publications => List.unmodifiable(_publications);

  PublicationListViewModel() {
    _searchPublicationPaginator = Paginator<Hit>((page) async {
      final fetchedData = await _publicationService.searchPublication(
        page,
        _searchQuery ?? '',
      );
      return PaginatorLoadResult(
        data: fetchedData.result!.hits!.hit!,
        currentPage: fetchedData.result!.hits!.currentPage,
        totalPage: fetchedData.result!.hits!.currentPage,
      );
    });
  }

  Future<void> _loadNextPage() async {
    if (isSearchMode) {
      await _searchPublicationPaginator.loadNextPage();
      _publications = _searchPublicationPaginator.data;
    } else {
      //TODO
    }
    notifyListeners();
  }

  Future<void> serachPublication(String text) async {
    searchDeboubce?.cancel();
    searchDeboubce = Timer(const Duration(milliseconds: 300), () async {
      final searchQuery = text.isNotEmpty ? text : null;
      if (_searchQuery == searchQuery) return;
      _searchQuery = searchQuery;

      _publications.clear();
      if (isSearchMode) {
        await _searchPublicationPaginator.reset();
      }
      _loadNextPage();
    });
  }

  void showedPublicationAtIndex(int index) {
    if (index < _publications.length - 1) return;
    _loadNextPage();
  }
}
