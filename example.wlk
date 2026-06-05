class Nave{
  var velocidad 
  var direccion 

  method velocidad() = velocidad
  method direccion() = direccion 

  method acelerar(cuanto) {
    velocidad = (velocidad + cuanto).min(10000)
  }
  method desacelerar(cuanto) {
    velocidad = (velocidad - cuanto).max(0)
  }
  method irHaciaElSol() {
    direccion = 10
  }
  method escaparDelSol() {
    direccion = -10
  }
  method ponerseParaleloAlSol() {
    direccion = 0
  }
  method acercarseUnPocoAlSol() {
    direccion = (direccion + 1).max(10)
  }
  method alejarseunPocoDelSol() {
    direccion = (direccion + 1).min(-10)
  } 
  method prepararViaje()
}

class NaveBaliza inherits Nave {

  var colorNaveBaliza = "azul"

  method cambiarColorDeBaliza(color) {
    colorNaveBaliza = color
  }

  override method prepararViaje() {
    colorNaveBaliza = "verde"
  }

}