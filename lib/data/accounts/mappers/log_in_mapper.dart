import 'package:com_cingulo_sample/data/accounts/requests/log_in_request.dart';
import 'package:com_cingulo_sample/data/api_client/errors/bad_request_error.dart';
import 'package:com_cingulo_sample/models/accounts/log_in_model.dart';

class LogInMapper {
  static LogInRequest modelToRequest(LogInModel model) {
    return LogInRequest(model.email, model.password);
  }

  static LogInModelError badRequestToModelError(BadRequestError error) {
    return LogInModelError(
      generic: error.generic(),
      email: error.key('email'),
      password: error.key('password'),
    );
  }
}
