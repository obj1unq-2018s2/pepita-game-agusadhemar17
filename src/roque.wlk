import pepita.*
import comidas.*

object roque {
	
	var property posicion = game.at(1,1)
	method imagen() = "jugador.png"
	
	//method encontreComida (algo){
	//	game.removeVisual(algo)
		//}
	
	method darComida(comida){
		var tengoComida = true
		if(tengoComida){
			// TODO ¿De dónde sale ese 80 fijo? Debería ser la energía de la comida.
			pepita.energia(80) 
			comida.meEntregan()
		 	}
		
		
	}
	//method tengoComida(comida){
	//	var property comida = true
	//}
	
	//method reubicar(comida){
	//	game.addVisualIn(comida, self.posicionAleatoria())
	//}
	
}