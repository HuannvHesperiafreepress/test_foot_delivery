

import 'package:flutter/services.dart';
import 'package:test_foot_delivery/data/repository/AppRepository.dart';

class MockDataSource extends AppRepository {

  AssetBundle assetBundle;

  MockDataSource(this.assetBundle);

}