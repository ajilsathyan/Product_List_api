
class ProductAllList {
  String? id;
  String? title;
  String? description;
  String? price;
  String? categoryId;
  String? location;
  String? contactDetails;
  String? tag;
  String? images;
  String? userId;
  String? userBussinessId;
  String? boostAd;
  String? availability;
  String? offerShipping;
  String? condition;
  String? addItemVarient;
  String? deviceName;
  String? brand;
  String? choosePrivacySettings;
  String? actualPrice;
  String? discountPrice;
  String? discountPrecentage;
  String? clothSize;
  String? colors;
  String? createdDate;
  String? modifiedDate;

  ProductAllList(
      {this.id,
        this.title,
        this.description,
        this.price,
        this.categoryId,
        this.location,
        this.contactDetails,
        this.tag,
        this.images,
        this.userId,
        this.userBussinessId,
        this.boostAd,
        this.availability,
        this.offerShipping,
        this.condition,
        this.addItemVarient,
        this.deviceName,
        this.brand,
        this.choosePrivacySettings,
        this.actualPrice,
        this.discountPrice,
        this.discountPrecentage,
        this.clothSize,
        this.colors,
        this.createdDate,
        this.modifiedDate});

  ProductAllList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    price = json['price'];
    categoryId = json['category_id'];
    location = json['location'];
    contactDetails = json['contact_details'];
    tag = json['tag'];
    images = json['images'];
    userId = json['user_id'];
    userBussinessId = json['user_bussiness_id'];
    boostAd = json['boost_ad'];
    availability = json['availability'];
    offerShipping = json['offer_shipping'];
    condition = json['condition'];
    addItemVarient = json['add_item_varient'];
    deviceName = json['device_name'];
    brand = json['brand'];
    choosePrivacySettings = json['choose_privacy_settings'];
    actualPrice = json['actual_price'];
    discountPrice = json['discount_price'];
    discountPrecentage = json['discount_precentage'];
    clothSize = json['cloth_size'];
    colors = json['colors'];
    createdDate = json['created_date'];
    modifiedDate = json['modified_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['price'] = this.price;
    data['category_id'] = this.categoryId;
    data['location'] = this.location;
    data['contact_details'] = this.contactDetails;
    data['tag'] = this.tag;
    data['images'] = this.images;
    data['user_id'] = this.userId;
    data['user_bussiness_id'] = this.userBussinessId;
    data['boost_ad'] = this.boostAd;
    data['availability'] = this.availability;
    data['offer_shipping'] = this.offerShipping;
    data['condition'] = this.condition;
    data['add_item_varient'] = this.addItemVarient;
    data['device_name'] = this.deviceName;
    data['brand'] = this.brand;
    data['choose_privacy_settings'] = this.choosePrivacySettings;
    data['actual_price'] = this.actualPrice;
    data['discount_price'] = this.discountPrice;
    data['discount_precentage'] = this.discountPrecentage;
    data['cloth_size'] = this.clothSize;
    data['colors'] = this.colors;
    data['created_date'] = this.createdDate;
    data['modified_date'] = this.modifiedDate;
    return data;
  }
}