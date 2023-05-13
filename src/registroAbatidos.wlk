object cod {
	const dias = []
	
	//metodos de indicación
	method agregarAbatidosDia(unaCantidad) {dias.add(unaCantidad)}
	method agregarAbatidosDias(unaLista) {dias.addAll(unaLista)}
	method eliminarLaCantidadDeAbatidos(unaCantidad) {dias.remove(unaCantidad)}
	method eliminarLasCantidadesDeAbatidos(unaLista) {dias.removeAll(unaLista)}
	
	method cantidadDeDiasRegistrados() {return dias.size()}
	method estaVacioElRegistro() {return dias.isEmpty()}
	method estaVacioElRegistroConSize() {return dias.size() == 0}
	method estaVacioElRegistroConVacia() {return dias == []}
	method algunDiaSeAbatio(cantidad) {return dias.contains(cantidad)}
	method primerValorDeAbatidos() {return dias.first()}
	method ultimoValorDeAbatidos() {return dias.last()}
	method maximoValorDeAbatidos() {return dias.max()}
	method totalAbatidos() {return dias.sum()}
	method cantidadDeAbatidosElDiaNro(nroDia) {return dias.get(nroDia - 1)}
	method abatidosSuperioresA(cuanto) {return dias.filter({n => n > cuanto})}
	method valoresDeAbatidosPares() {return dias.filter({n => n.even()})}
	method elValorDeAbatidos(cantidad) {
		//Bloque de excepción
		var aretornar
		try {
			aretornar = dias.find({c => c == cantidad})
			
		} catch err {
			self.error(	"Numero no encontrado")
		}
		return aretornar
	}
	method abatidosSumando(cantidad){return dias.map({e=>e + cantidad})}
	method abatidosEsAcotada(n1, n2){return dias.all({n=>n.between(n1,n2)})}
	method algunDiaAbatioMasDe(cantidad){return dias.any({n=> n>cantidad})}
	method todosLosDiasAbatioMasDe(cantidad){return dias.all({n=> n>cantidad})}
	method cantidadAbatidosMayorALaPrimera(){return dias.count({e=>e > self.primerValorDeAbatidos()})}
	//BONUS
	method forEachConTransformacion(){
		const l = []
		dias.forEach({e=>l.add(e*2)})
		dias.clear()
		dias.addAll(l)
		console.println(l)
	}
	// Es IGUAL A:
	method mapTransformacion(){
		const l = dias.map({e=> e*2})
		dias.clear()
		dias.addAll(l)
		console.println(l)
	}
}