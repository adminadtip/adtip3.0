class UserData {
  final int? id;
  final String? name;
  final String? firstName;
  final String? lastName;
  final String? emailId;
  final String? gender;
  final String? dob;
  final String? profileImage;
  final String? messageId;
  final String? mobileNumber;
  final String? otp;
  final int? userType;
  final String? profession;
  final String? maternalStatus;
  final String? address;
  final String? longitude;
  final String? latitude;
  final String? pincode;
  final int? currentOtpVerified;
  final DateTime? createdDate;
  final DateTime? updatedDate;
  final int? isOtpVerified;
  final int? isSaveUserDetails;
  final int? isActive;
  final String? createdBy;
  final int? accessType;
  final int? onlineStatus;

  UserData({
    this.id,
    this.name,
    this.firstName,
    this.lastName,
    this.emailId,
    this.gender,
    this.dob,
    this.profileImage,
    this.messageId,
    this.mobileNumber,
    this.otp,
    this.userType,
    this.profession,
    this.maternalStatus,
    this.address,
    this.longitude,
    this.latitude,
    this.pincode,
    this.currentOtpVerified,
    this.createdDate,
    this.updatedDate,
    this.isOtpVerified,
    this.isSaveUserDetails,
    this.isActive,
    this.createdBy,
    this.accessType,
    this.onlineStatus,
  });

  factory UserData.fromJson(json) {
    return UserData(
      id: json['id'] ?? 0,
      name: json['name'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      emailId: json['emailId'],
      gender: json['gender'],
      dob: json['dob'],
      profileImage: json['profile_image'],
      messageId: json['message_id'],
      mobileNumber: json['mobile_number'],
      otp: json['otp'],
      userType: json['user_type'],
      profession: json['profession'],
      maternalStatus: json['maternal_status'],
      address: json['address'],
      longitude: json['longitude'],
      latitude: json['latitude'],
      pincode: json['pincode'],
      currentOtpVerified: json['current_otp_verified'],
      createdDate: json['created_date'] != null
          ? DateTime.parse(json['created_date'])
          : null,
      updatedDate: json['updated_date'] != null
          ? DateTime.parse(json['updated_date'])
          : null,
      isOtpVerified: json['isOtpVerified'],
      isSaveUserDetails: json['isSaveUserDetails'],
      isActive: json['is_active'],
      createdBy: json['createdBy'],
      accessType: json['access_type'],
      onlineStatus: json['online_status'],
    );
  }
}
