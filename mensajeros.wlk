object entrega {
    method puedeEntregar(mensajero,destino){
        destino.llevar(mensajero)
    }
}


object chucknorris{
    method peso(){
        return 900
    }
    method llamada(){
        return true
    }
    method puedeLlevar(paquete){
        return paquete.pagado()
    }
    method vehiculo(){}
}
object neo{
    method peso(){
        return 0
    }
    method puedeLlevar(paquete){
        return paquete.pagado() 
    }
    method llamada(){
        return paquete.pagado() //si el paquete no esta pagado, neo no puede cargar credito por ende no puede llamar 
    }
    method vehiculo(){}
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
object bicicleta{
    
    method peso(){
        return 10
    }
    method acoplado(){}
}
object camion {
    var acoplado =1
    method peso(){
        return 500 + (acoplado*500)
    }
    method acoplado(_acoplado){
        acoplado = _acoplado
    }
}
object paquete{
    var pagado = true
    method pagado(){
        return pagado
    }
    method pagado(_pagado){
        pagado = _pagado
    }
}

object brooklyn{
    method llevar(mensajero){ //booleano
        return mensajero.peso() <= 1000
    }
}
object matrix{
    method llevar(mensajero){//booleano
        return mensajero.llamada()
    }
}
