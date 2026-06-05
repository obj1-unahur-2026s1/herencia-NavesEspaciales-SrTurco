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

class NavesPasajeros inherits Nave {
  var cantidadPasajeros
  var racionDeComida
  var racionDeBebida

  method cantidadPasajeros() = cantidadPasajeros
  method racionDeBebida() = racionDeBebida
  method racionDeComida() = racionDeComida

  method cargarComida(cantidad) {
    racionDeComida += cantidad

  } 
  method descargaComida(cantidad) {
    racionDeComida += cantidad
    
  }  
  method cargarBebida(cantidad) {
    racionDeBebida += cantidad

  } 
  method descargaBebida(cantidad) {
    racionDeBebida += cantidad
    
  } 

  override method prepararViaje() {
    self.cargarBebida(cantidadPasajeros*4)
    self.cargarComida(cantidadPasajeros*6)
    self.acercarseUnPocoAlSol()
  }
  
}

class NavesCombate inherits Nave {
var esVisible
var tieneMisislesDesplegados
const mensajes = []

method ponerseVisible() {
  esVisible = true 
}   
method ponerseInvisble() {
  esVisible= false
}
method estaInvisble() {
  return (not esVisible)  
}

method desplegarMisiles() {
  tieneMisislesDesplegados = true 
}   
method replegarMisiles() {
  tieneMisislesDesplegados = false
}
method emitirMensaje(unMensaje) {
   mensajes.add(unMensaje)
}
method mensajesEmitidos() {
  mensajes
  
}
method primerMensajeEmitido() {
  return mensajes.first()
  
}
method ultimoMensajeEmitido() {
  return mensajes.last()
}

method prepararViaje() {
  self.ponerseVisible()
  self.replegarMisiles()
  self.acelerar(1500)
  self.emitirMensaje("Saliendo en mision")
}
}