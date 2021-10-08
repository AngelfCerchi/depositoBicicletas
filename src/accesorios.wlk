class Farolitos{
	const property peso = 0.5
	const property carga = 0 
	const property esLuminoso = true
}

class Canastos{
	var property volumen = null
	const property peso = volumen/10
	const property carga = volumen*2
	const property esLuminoso = false
}
class Morrales{
	var property largo = null //en cm
	var property ojoDeGato = false 
	const property peso = 1.2 //kg
	const property carga = largo/3
	const property esLuminoso = ojoDeGato 
}