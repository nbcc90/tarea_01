class CuentaBancaria {
  String titular;
  double saldo = 0.0;


  CuentaBancaria(this.titular);


  void depositarDinero(double monto){
    if (monto <= 0){
      print('El monto a depositar no es valido');
    }
    else{
      saldo += monto;
      print('Deposito de $monto realizado con exito');
    }
  } 

  void retirarDinero(double monto){
    if (monto <= 0){
      print('El monto a retirar no es valido');
    }
    else if (monto > saldo){
      print('El monto a retirar es mayor al saldo');
    }
    else{
      saldo -= monto;
      print('Retiro de $monto realizado con exito');
    }
  } 

  void consultaSaldo(){
    print('Tiene un saldo de $saldo');
  }
}