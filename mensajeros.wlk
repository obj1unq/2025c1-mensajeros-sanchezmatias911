

/*CAMBIOS: 
    -se borra objecto entrega y su metodo pasa a paquete.
    -se modifica el metodo llamada() de Neo de acuerdo con las correciones
    -se cambia nombre del metodo llevar() de los destinos de acuerdo a las correcciones
*/
object paquete{
    var pagado = true

    method pagado(){
        return pagado
    }

    method pagado(_pagado){
        pagado = _pagado
    }
    method puedeEntregarlo(mensajero,destino){
        return self.pagado() and destino.puedeLlevar(mensajero)
    }
}


//MENSAJEROS: dan su peso y dicen si pueden llamar

object chucknorris{

    method peso(){
        return 900
    }

    method llamada(){
        return true
    }
}
object neo{
    var credito = true

    method credito(_credito){
        credito = _credito
    }

    method peso(){
        return 0
    }
   
    method llamada(){ // depende si tiene credito o no si va a poder llamar
        return credito
    }

    
}

object lincolnhawk{ 

    var peso =80
    var vehiculo = bicicleta 
    
   
    method peso(_peso){
        peso= _peso
    }

    method peso(){
        return peso + vehiculo.peso()
    }
    
    method vehiculo(_vehiculo){ //setter camion o bicicleta
        vehiculo = _vehiculo
    }
    method llamada(){
        return false
    }
    
}

//VEHICULOS: usados solo por lincoln, saben decir su peso 
object bicicleta{
    
    method peso(){
        return 10
    }
    
    
}
object camion {
    var acoplado = 1

    method peso(){
        return 500 + (acoplado*500)
    }

    method acoplado(_acoplado){
        acoplado = _acoplado
    }
}

//DESTINO: saben decir si un mensajero puede llevar un paquete
object brooklyn{

    method puedeLlevar(mensajero){ //booleano
        return mensajero.peso() <= 1000
    }
}
object matrix{
    
    method puedeLlevar(mensajero){//booleano
        return mensajero.llamada()
    }
}

