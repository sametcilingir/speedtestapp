import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'home_view_model.g.dart';

@lazySingleton
class HomeViewModel = InitViewModelBase with _$HomeViewModel;

abstract class InitViewModelBase with Store {



  @disposeMethod
  void dispose() {}
}
