class employeeModel{
  late String name;
  late String phone;
  late String salary;
  late String address;

//<editor-fold desc="Data Methods">

  employeeModel({
    required this.name,
    required this.phone,
    required this.salary,
    required this.address,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is employeeModel &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          phone == other.phone &&
          salary == other.salary &&
          address == other.address);

  @override
  int get hashCode =>
      name.hashCode ^ phone.hashCode ^ salary.hashCode ^ address.hashCode;

  @override
  String toString() {
    return 'employeeModel{' +
        ' name: $name,' +
        ' phone: $phone,' +
        ' salary: $salary,' +
        ' address: $address,' +
        '}';
  }

  employeeModel copyWith({
    String? name,
    String? phone,
    String? salary,
    String? address,
  }) {
    return employeeModel(
      name: name ?? this.name,
      phone: phone ?? this.phone,
      salary: salary ?? this.salary,
      address: address ?? this.address,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'phone': this.phone,
      'salary': this.salary,
      'address': this.address,
    };
  }

  factory employeeModel.fromMap(Map<String, dynamic> map) {
    return employeeModel(
      name: map['name'] as String,
      phone: map['phone'] as String,
      salary: map['salary'] as String,
      address: map['address'] as String,
    );
  }

//</editor-fold>
}