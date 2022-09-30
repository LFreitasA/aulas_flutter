//Abstração: Capacidade de abstrair, ocultar informações que não são
//necessárias ou não deveriam ser acessiveis pelo consumidor.
//Facilita manutenção e reutilização.

//Encapsulamento: Encapsular, associar informações que não são importantes
//soment a quem realmente utiliza. Contribui para segurança
//e dificulta interferências externas

class Car {
  final _batteryTension = 12.0;
  final _requiredIgnitionTension = 10000;
  final _requiredCombustionTime = 499;
  final _coilConversionRate = 1600;

  bool _hasBatteryEnergy = true; //TODO implement battery level
  bool get hasBatteryEnergy => _hasBatteryEnergy;
  bool _hasFuel = true;
  bool get hasFuel => _hasFuel; //TODO implement fuel level
  bool _isOn = false;
  bool get isOn => _isOn;

  //Ligar o carro
  //1. Sistema Eletrico
  //Pega tensão da bateria
  //Passa pela bobina e converte para alta tensão
  //2. Sistema de Ignição
  //Recebe alta tensão
  //Passa pelo distribuidor
  //Determina a hora certa de iniciar combustão
  //3. Combustão no motor
  //Resultado: Carro ligado ou não
  bool start() {
    final highTension = _startEletricSystem();
    final sholdStartCombustion = _startIgnitionSystem(highTension);
    if (sholdStartCombustion) {
      _startCombustion();
    }
    return _isOn;
  }

  double _startEletricSystem() {
    if (_hasBatteryEnergy) {
      return _convertToHighTension(_batteryTension);
    }
    return 0.0;
  }

  //bobina
  double _convertToHighTension(double lowTension) =>
      lowTension * _coilConversionRate;

  bool _startIgnitionSystem(double highTension) {
    if (highTension > _requiredIgnitionTension) {
      int time = 0;
      while (!_sholdStartCombustion(time)) {
        time++;
      }
      return true;
    }
    return false;
  }

  //distribuidor
  bool _sholdStartCombustion(int time) =>
      _hasFuel && time == _requiredCombustionTime;

  void _startCombustion() {
    _isOn = true;
  }
}
