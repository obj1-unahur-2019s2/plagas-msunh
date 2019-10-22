import elementos.*

class Plaga {

	var property poblacion = 0

	method transmiteEnfermedades() {
		return poblacion >= 10
	}

	method consecuenciaDeAtacar() {
		poblacion = poblacion + poblacion * 0.1
	}

	method atacar(elemento) {
		elemento.recibirAtaque(self)
		self.consecuenciaDeAtacar()
	}

}


//cucarachas
class PlagaCucarachas inherits Plaga {
	var pesoPromedio = 0

	method nivelDeDanio() {
		return poblacion / 2
	}

	override method transmiteEnfermedades() {
		return super() and pesoPromedio >= 10
	}
	
	override method consecuenciaDeAtacar() { 
		super()
		pesoPromedio += 2
		
	}

}

//pulgas
class PlagaDePulgas inherits Plaga {
	
	method nivelDeDanio() {
		return poblacion*2

	}
	
}

//garrapatas
class PlagaDeGarrapatas inherits PlagaDePulgas {
	
	override method consecuenciaDeAtacar() {
		poblacion = poblacion + poblacion* 0.2
		
	}
	
}

//mosquitos
class PlagaMosquitos inherits Plaga {

	// override " sobrescribe" el metodo de la clase plaga y le agrega algo más que necesita
	// la clase plaga de mosquitos como condicion en el mismo metodo, para eso usa el super()
	
	override method transmiteEnfermedades() {
		return super() and poblacion % 3 == 0
	}
	
	method nivelDeDanio(){ return poblacion }

}