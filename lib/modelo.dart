
class Motor{
  final String _ubicacion;
  final int _posiocion;
  final DateTime _fecha;
  Motor(this._ubicacion, this._posiocion, this._fecha); //contructor sin herencia

  String get ubicasion => _ubicacion; //que cosa debe volver es un string
  int get posicion => _posiocion;
  DateTime get fecha => _fecha;
  
}

