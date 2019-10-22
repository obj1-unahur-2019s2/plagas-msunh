import plaga.*


class Hogar {
	var property nivelDeMugre = 0
	var property confortQueOfrece = 0
	
	method esBueno(){
		return nivelDeMugre  <= confortQueOfrece / 2 
	}
	
	method recibirAtaque(plaga){ nivelDeMugre  += plaga.nivelDeDanio() }
	
}


object nivelHuerta {
	var property nivel
	
}


class Huerta{
	var property capacidadDeProduccion

	
	method esBueno(){ return capacidadDeProduccion > nivelHuerta.nivel()}
	
	method recibirAtaque(plaga) { 
		
		if (plaga.transmiteEnfermedades()) { capacidadDeProduccion -= 10 + (plaga.nivelDeDanio())*0.1 }
		else { capacidadDeProduccion -= (plaga.nivelDeDanio())*0.1 }
		
		
	}
	
}

class Mascota{
	var property nivelDeSalud
	
	method esBueno(){  return nivelDeSalud > 250}
	
	method recibirAtaque(plaga) {
		if (plaga.transmiteEnfermedades()) { nivelDeSalud -= plaga.nivelDeDanio()  }
		else { }
		
	}
	
	
	
}