import 'package:myarchitecture/resources/subscriber/subscriber_provider.dart';

class SubscriberRepository{
  final _subscriberProvider = SubscriberProvider();

  Future<void> loginUser(String userName, String password) => _subscriberProvider.loginUser(userName,password);

}