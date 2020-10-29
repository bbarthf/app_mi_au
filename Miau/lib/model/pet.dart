class Pet {
  final int _codpet;
  final String _name;
  final String _publishingDate;
  final String _city;
  final String _imageUrl;
  final String _ownerName;
  final String _ownerImage;
  final String _ownerPhone;

  Pet(this._codpet,this._name, this._publishingDate, this._city, this._imageUrl,
      this._ownerName, this._ownerImage, this._ownerPhone);

  String get ownerPhone => _ownerPhone;

  String get ownerImage => _ownerImage;

  String get ownerName => _ownerName;

  String get imageUrl => _imageUrl;

  String get city => _city;

  String get publishingDate => _publishingDate;

  String get name => _name;

  int get codpet => _codpet;
}