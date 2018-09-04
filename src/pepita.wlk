import ciudades.*
import comidas.*
import roque.*

object pepita {
	var property energia = 100
	var property ciudad = buenosAires 

	var property posicion = game.at(3,3)
	method imagen() = "pepita.png"

	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			self.move(unaCiudad.posicion())
			ciudad = unaCiudad
		}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
		self.posicion(nuevaPosicion)
	}	
	method meEncontraron(){
		roque.darComida(comida)
		self.come(comida)
		//roque.tengoComida = false
	}
	//method posicionAleatoria() {
		//	return game.at(1.randomUpTo(10), 1.randomUpTo(10))
		//}
	
}
