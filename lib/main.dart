import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_foot_delivery/data/dataSource/MockDataSource.dart';

import 'Application.dart';
import 'data/repository/AppRepository.dart';
import 'data/repository/AppRepositoryImpl.dart';

void main() {
  runApp(RepositoryProvider<AppRepository>(
      create: (context) {
        return AppRepositoryImpl(MockDataSource(DefaultAssetBundle.of(context)));
      },
    child: Application(),
  ));
}
