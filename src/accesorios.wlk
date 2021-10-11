class Farolitos{
	method peso() = 0.5
	method carga() = 0
	method esLuminoso() = true
}

class Canastos{
	var property volumen 
	method peso() = volumen/10
	method carga() = volumen*2
	method esLuminoso() = false
}

class Morrales{
	var property largo
	var property ojoDeGato 
	method peso() = 1.2
	method carga() = largo/3
	method esLuminoso() = ojoDeGato 
}

/*
 * Para agregar un nuevo accesorio es necesario mantener el polimorfismo para que se
 * pueda utilizar al igual que los accesarios ya existentes.
 * Además, es fundamental cumplir con el contrato de la clase Bicicletas ya que la misma 
 * hace uso de los accesorios. 
 * 
 */
