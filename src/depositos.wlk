import bicicletas.*
import accesorios.*
class Depositos{
	const property todasLasBicis = []
	
	method bicisRapidas() = todasLasBicis.filter({ b => b.velocidadCrucero() > 25 })
	method todasLasMarcas() = todasLasBicis.map({ b => b.marca() }).asSet()
	method esNocturno() = todasLasBicis.all({ b => b.tieneLuz() })
	method tieneBiciParaLlevar(kg) = todasLasBicis.any({ b => b.carga() > kg })
	method marcaBiciMasRapida() = todasLasBicis.max({ b => b.velocidadCrucero() })
	method bicisMasLargas() = todasLasBicis.filter({ b => b.largo() > 170 })
	method cargaTotalBicisLargas() = self.bicisMasLargas().sum({ b => b.carga() })
	method cantidadBicisSinAccesorios() = todasLasBicis.count({ b => b.accesorios().isEmpty() })
	
}