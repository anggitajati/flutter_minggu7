class Item {
  int _id;
  String _name;
  int _price;
  int _stok;
  int get stok => this._stok;

  set stok(int value) => this._stok = value;
  String _kode;

  String get kode => this._kode;

  set kode(String value) => this._kode = value;

  int get id => _id;

  String get name => this._name;
  set name(String value) => this._name = value;

  get price => this._price;
  set price(value) => this._price = value;

  Item(this._name, this._price, this._stok,
      this._kode); // constructor version 1 to receive value data only _name and _price

  Item.fromMap(Map<String, dynamic> map) {
    // constructor version 2 to convert from Map to Item
    this._id = map['id'];
    this._name = map['name'];
    this._price = map['price'];
    this._stok = map['stok'];
    this._kode = map['kode'];
  }

  Map<String, dynamic> toMap() {
    // convert from Item to Map
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['name'] = this._name;
    map['price'] = this._price;
    map['stok'] = this._stok;
    map['kode'] = this._kode;
    return map;
  }
}
