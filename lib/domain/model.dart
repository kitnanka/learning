class SliderObject {
  String? title;
  String? subtitle;
  String? images;
  SliderObject({this.title, this.subtitle, this.images});
}

class Contacts {
  String phone;
  String email;
  String link;

  Contacts(this.email, this.link, this.phone);
}

class Customer {
  String id;
  String name;
  int numOfNotifications;

  Customer(this.id, this.name, this.numOfNotifications);
}


class Authentication {
  String customer;
  String contacts;


  Authentication(this.customer, this.contacts, );
}