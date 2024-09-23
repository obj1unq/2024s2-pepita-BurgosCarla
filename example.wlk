object pepita {
	var energia = 100
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method volar(distancia) {
		energia = energia - 10 - distancia
	}
	
	method energia() {
		return energia
	}
}


object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		self.madurez(madurez + 1)
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}
object pepon {
	var energia = 30
	
	method comer(comida) {
		energia = energia + (comida.energiaQueAporta() /2)
	}
	
	method volar(distancia) {
		energia = energia - 20 - 2 * distancia
	}
	
	method energia() {
		return energia
	}
}

object roque{
	var ave = pepita
	var cenas = 0

	method ave() {
		return ave
	}
	method alimentar(alimento){
		ave.comer(alimento)
		cenas = cenas + 1
	}
	method entrenar(_ave, distancia){
		ave = _ave
		ave.volar(distancia)
		cenas = 0
	}
	method cenas(){
		return cenas
	}
	
}
