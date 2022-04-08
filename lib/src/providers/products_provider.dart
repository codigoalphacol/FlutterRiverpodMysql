import 'package:app_mysql/src/api/api_manager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getProductsData =
    ChangeNotifierProvider<GetApiManager>((ref) => GetApiManager());
