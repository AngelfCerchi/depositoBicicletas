import bicicletas.*
import accesorios.*
import parDeBicis.*
class Depositos{
	const property todasLasBicis = []
	
	var property seHizoLaLuz = true
	
	//DESAFIO
	method agregarBicicleta(bici){
		if (todasLasBicis.count({ b => b.tieneLuz()}) == 0 and bici.tieneLuz()){
			seHizoLaLuz = true
			todasLasBicis.add(bici)
		}else{
			if(bici.tieneLuz()){
				todasLasBicis.add(bici)
			}else{
				seHizoLaLuz = false
				todasLasBicis.add(bici)
			}
		}
	}
	
	method bicisRapidas() = todasLasBicis.filter({ b => b.velocidadCrucero() > 25 })
	method todasLasMarcas() = todasLasBicis.map({ b => b.marca() }).asSet().asList()
	method esNocturno() = todasLasBicis.all({ b => b.tieneLuz() })
	method tieneBiciParaLlevar(kg) = todasLasBicis.any({ b => b.carga() > kg })
	method marcaBiciMasRapida() = todasLasBicis.max({ b => b.velocidadCrucero() }).marca()
	method bicisMasLargas() = todasLasBicis.filter({ b => b.largo() > 170 })
	method cargaTotalBicisLargas() = self.bicisMasLargas().sum({ b => b.carga() })
	method cantidadBicisSinAccesorios() = todasLasBicis.count({ b => b.accesorios().isEmpty() })

	
	method bicisCompanieras(bici){
		const nuevaLista = []
		nuevaLista.addAll(todasLasBicis)
		nuevaLista.remove(bici)		
		return nuevaLista.filter({ b => b.marca() == bici.marca() and b.largo().between(bici.largo()-10,bici.largo()+10) })
	}
	
	// DESAFIO
	method hayCompanieras() =  not todasLasBicis.map({ b => self.bicisCompanieras(b) }).isEmpty()	
	method parejasDeCompanieras() {
		const auxBicis = [] 
		todasLasBicis.forEach({ 
			biciOriginal =>  const listaBiciCompanieras = self.bicisCompanieras(biciOriginal)
				listaBiciCompanieras.forEach({
						bici => const parDeBicis = new ParDeBicis(biciUno = biciOriginal,biciDos = bici)
						auxBicis.add(parDeBicis)
					})
				}) 
		return auxBicis
	}	
}