import roque.*


object manzana {
	var x = [0,1,2,3,4,5,6,7,8,9]
	const property imagen = "manzana.png"
	method energia() = 80
	
	method meEncontraron() {
		game.removeVisual(self)
	}	
	method meEntregan (){
		game.addVisualIn(self, self.posicionAleatoria())
	}
	
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
	
	method posicionAleatoria() {
		return game.at(self.numeroAleatorio(),self.numeroAleatorio())
	}
	method numeroAleatorio(){
		return x.anyOne()
	}
	
	
}
