import pepita.*
import comidas.*
import masAves.*

object roque {
	var pupilos = []


	method entrenar() { 
		
		pupilos.forEach ({ pupilo => 
		
			pupilo.volar(10)
			pupilo.comer(alpiste,30)
			pupilo.volar(5)
			pupilo.haceLoQueQuieras()})		
	}
	method cuantosPupilosTiene () {
		
		return pupilos.size()
		
	}
	method agregarPupilo (unAve) {
		
		pupilos.add(unAve)
		
	}
	
	method dejarPupilo (unAve) {
		
		pupilos.remove(unAve)
		
	}
	
	method cualesPuedenVolar(unosKms) {
		
		return pupilos.filter ({n => n.puedeVolar(unosKms)})
		
	}
	
	method tieneComoPupilo (unAve){
		
		return pupilos.contains(unAve)
	}
	
	
	method pupilosFortachones ()
	
	 { return pupilos.filter ({ n => n.energia() > 100 }) }
}