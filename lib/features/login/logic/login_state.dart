import 'package:doc_app/core/network/api_err_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = Loading;
  const factory LoginState.success(T data) = Successs<T>;
  const factory LoginState.error(ApiErrorModel apiErrorModel) = Error;
}
