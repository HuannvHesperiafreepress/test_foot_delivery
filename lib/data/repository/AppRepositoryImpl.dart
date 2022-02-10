

import 'package:test_foot_delivery/data/dataSource/MockDataSource.dart';
import 'package:test_foot_delivery/data/repository/AppRepository.dart';

class AppRepositoryImpl extends AppRepository {

  MockDataSource dataSource;

  AppRepositoryImpl(this.dataSource);
}