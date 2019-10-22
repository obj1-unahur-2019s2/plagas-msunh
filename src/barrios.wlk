import elementos.*
import plaga.*

class Barrio {
	var property elementos = []
	
	method cantidadDeElementosBuenos() { return elementos.size({ elemento =>elemento.esBueno() })   }
	
	method cantidadDeElementosMalos()  { return elementos.size({ elemento =>elemento.esBueno()  })   }
	
	method esCopado(){
		
		
		
	}
	
}
