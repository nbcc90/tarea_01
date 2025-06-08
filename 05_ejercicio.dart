import 'CuentaBancaria.dart' show CuentaBancaria;

main(){
  var myCuenta = CuentaBancaria('Nestor Castro');
  myCuenta.depositarDinero(100);
  myCuenta.depositarDinero(30);
  myCuenta.depositarDinero(400);
  myCuenta.depositarDinero(150);
  myCuenta.depositarDinero(600);

  myCuenta.consultaSaldo();

  myCuenta.retirarDinero(250);
  myCuenta.retirarDinero(500);
  myCuenta.retirarDinero(50);

  myCuenta.consultaSaldo();
}