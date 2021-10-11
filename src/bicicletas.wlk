import accesorios.*
class Bicicletas{
	var property rodado = null
	var property largo = null //en cm
	var property marca = null
	const property accesorios = []
	
	method altura() = (rodado*2.5)+15
	method velocidadCrucero() = if (largo > 120) rodado+6 else rodado + 2
	method carga() = accesorios.sum({ accesorio => accesorio.carga() })
	method pesoAccesorios() =  accesorios.sum({ accesorio => accesorio.peso() })
	method peso() = (rodado/2) + self.pesoAccesorios()
	method tieneLuz() = accesorios.any({accesorio => accesorio.esLuminoso()})
	method agregarAccesorio(accesorio) { accesorios.add(accesorio) } 
	method cantAccLivianos() = accesorios.count({ accesorio => accesorio.peso() < 1})
	
}

