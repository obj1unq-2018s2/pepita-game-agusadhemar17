import roque.*


object manzana {
	var x = [0,1,2,3,4,5,6,7,8,9]
	const property imagen = "manzana.png"
	method energia() = 80
	
	method meEncontraron() {
		// TODO Incompleto, falta que la comida le llegue a roque.
		game.removeVisual(self)
	}	
	method meEntregan (){
		game.addVisualIn(self, self.posicionAleatoria())
	}
	
	// TODO Estos métodos están repetidos con el alpiste y no necesitan de nada específico de manzana/alpiste
	// Podrías ponerlos en un objeto aparte, que tenga esta responsabilidad y usarlo desde ambos lugares.
	method posicionAleatoria() {
		return game.at(self.numeroAleatorio(),self.numeroAleatorio())
	}
	method numeroAleatorio(){
		return x.anyOne()
	}
}

object alpiste {
	var x = [0,1,2,3,4,5,6,7,8,9]
	const property imagen = "alpiste.png"
	method energia() = 5
	method meEncontraron() {
		game.removeVisual(self)
	}	
	method meEntregan (){
		game.addVisualIn(self, self.posicionAleatoria())
	}
	
	// TODO Estos métodos están repetidos con la manzana y no necesitan de nada específico de manzana/alpiste
	// Podrías ponerlos en un objeto aparte, que tenga esta responsabilidad y usarlo desde ambos lugares.
	method posicionAleatoria() {
		return game.at(self.numeroAleatorio(),self.numeroAleatorio())
	}
	method numeroAleatorio(){
		return x.anyOne()
	}
	
	
}
