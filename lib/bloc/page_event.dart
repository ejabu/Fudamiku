part of 'page_bloc.dart';

abstract class PageEvent extends Equatable {
  const PageEvent();
}

class GoToSplashPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToSignInPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToSignUpPage extends PageEvent {
  final Auth auth;

  GoToSignUpPage(this.auth);

  @override
  List<Object> get props => [auth];
}

class GoToAddressPage extends PageEvent {
  final Auth auth;

  GoToAddressPage(this.auth);

  @override
  List<Object> get props => [auth];
}

class GoToMainPage extends PageEvent {
  final bottomNavBarIndex;

  GoToMainPage({this.bottomNavBarIndex = 0});

  @override
  List<Object> get props => [bottomNavBarIndex];
}

class GoToFoodDetailPage extends PageEvent {
  final Food food;

  GoToFoodDetailPage(this.food);
  
  @override
  List<Object> get props => [];
}

class GoToCheckoutPage extends PageEvent {
  final Food food;

  GoToCheckoutPage(this.food);
  
  @override
  List<Object> get props => [];
}

class GoToSuccessPage extends PageEvent {
  final String title;
  final String subtitle;
  final String illustrationImage;
  final bool isOrder;

  GoToSuccessPage({this.title, this.subtitle, this.illustrationImage, this.isOrder});
  
  @override
  List<Object> get props => [title, subtitle, illustrationImage, isOrder];
}

class GoToOrderDetailPage extends PageEvent {
  final Order order;

  GoToOrderDetailPage(this.order);

  @override
  List<Object> get props => [order];
}

class GoToProfilePage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToEditProfilePage extends PageEvent{
  final User user;

  GoToEditProfilePage(this.user);

  @override
  List<Object> get props => [user];
}

class GoToEditAddressPage extends PageEvent{
  final User user;

  GoToEditAddressPage(this.user);

  @override
  List<Object> get props => [user];
}

class GoToPaymentMethodPage extends PageEvent {
  final Order order;
  final Transaction transaction;
  final Food food;

  GoToPaymentMethodPage(this.order, this.transaction, this.food);

  @override
  List<Object> get props => [order, transaction, food];
}

class GoToCreditCardPage extends PageEvent {
  final Order order;
  final Transaction transaction;
  final Food food;

  GoToCreditCardPage(this.order, this.transaction, this.food);

  @override
  List<Object> get props => [order, transaction, food];
}

class GoToGopayPage extends PageEvent {
  final Order order;
  final Transaction transaction;
  final Food food;

  GoToGopayPage(this.order, this.transaction, this.food);

  @override
  List<Object> get props => [order, transaction, food];
}