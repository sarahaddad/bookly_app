import 'package:dio/dio.dart';
import 'package:ebook/core/utils/api_service.dart';
import 'package:ebook/features/home/data/repos/home-repo_implemention.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;
void setUpServiceLocator() {
  getIt.registerSingleton<ApiServices>(
    ApiServices(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImp>(
    HomeRepoImp(
      getIt.get<ApiServices>(),
    ),
  );
}
