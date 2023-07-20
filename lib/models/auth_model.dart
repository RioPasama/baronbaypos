/// The AuthModel class represents a data model for user authentication information.
/// It contains properties to store various user details, such as user access ID, name, username, user type,
/// job position ID, employee ID, login token, and token expiration date.

class AuthModel {
  final String iduserAkses;
  final String nama;
  final String username;
  final String jenisUser;
  final String idjabatan;
  final String? nomerAbsen;
  final String tokenLogin;
  final DateTime expTokenLogin;

  /// Class Properties:
  /// iduserAkses (String): A unique identifier for the user's access.
  /// nama (String): The full name of the user.
  /// username (String): The username of the user.
  /// jenisUser (String): The type of the user (e.g., admin, employee, customer).
  /// idjabatan (String): The job position ID of the user.
  /// nomerAbsen (String): The employee ID or attendance number of the user.
  /// tokenLogin (String): The login token for the user's authentication.
  /// expTokenLogin (DateTime): The expiration date and time of the login token.
  /// Class Constructor:
  /// The class constructor is used to create an instance of the AuthModel. It requires all the properties to be passed as arguments.

  AuthModel({
    required this.iduserAkses,
    required this.nama,
    required this.username,
    required this.jenisUser,
    required this.idjabatan,
    required this.nomerAbsen,
    required this.tokenLogin,
    required this.expTokenLogin,
  });

  /// Factory Method:
  /// The fromJson factory method is used to create an instance of AuthModel from a JSON map.
  /// It takes a Map<String, dynamic> as input and extracts the necessary data to initialize the AuthModel object.

  factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
        iduserAkses: json['iduser_akses'],
        nama: json['nama'],
        username: json['username'],
        jenisUser: json['jenis_user'],
        idjabatan: json['idjabatan'],
        nomerAbsen: json['nomer_absen'],
        tokenLogin: json['token_login'],
        expTokenLogin: DateTime.parse(json['exp_token_login']),
      );

  /// Conversion to JSON:
  /// The toJson method is used to convert the AuthModel object back to a JSON map. It returns a Map<String, dynamic> representation of the AuthModel properties.

  Map<String, dynamic> toJson() => {
        'iduser_akses': iduserAkses,
        'nama': nama,
        'username': username,
        'jenis_user': jenisUser,
        'idjabatan': idjabatan,
        'nomer_absen': nomerAbsen,
        'token_login': tokenLogin,
        'exp_token_login': expTokenLogin.toIso8601String(),
      };
}
