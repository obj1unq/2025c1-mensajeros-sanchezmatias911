object entrega {

    method puedeEntregar(mensajero,destino){
        return destino.llevar(mensajero) //bool
    }
}
/*
    Lo que entendi es que:
        -neo solo puede llamar si el paquete esta pagado para cargar credito
        -chuck puede llamar siempre
        -lincoln nunca podra llamar aunque el paquete este pago

*/




//MENSAJEROS: dan su peso y dicen si pueden llamar

object chucknorris{

    method peso(){
        return 900
    }

    method llamada(){
        return true
    }
    
    method vehiculo(){}
    /*
        Pregunta: lincoln es el unico que manda el mensaje vehiculo(), 
                  es necesario que neo y chuck entiendan vehiculo() ya que todos son mensajero?
                  o solo se debe hacer si un objeto tercero llama a mensajero.vehiculo() 
    */
}
object neo{
    
    method peso(){
        return 0
    }
    /*
        Pregunta: para llamada() debo consultar si el paquete esta pago, 
                  ¿neo debe tener una variable que guarde el paquete 
                  o esto solo se debe hacer si hay mas de un paquete?
    */
    method llamada(){
        return paquete.pagado() //si el paquete no esta pagado, neo no puede cargar credito por ende no puede llamar 
    }

    method vehiculo(){}//lo mismo que chuck
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
/*
    PREGUNTA: lincoln solo haria el llamado vehiculo.peso() ,es necesario que bicicleta 
              tambien entienda el mensaje acoplado() aunque lincoln nunca lo llame?
              

*/


//PAQUETE: sabe decir  si esta pagado
object paquete{
    var pagado = true

    method pagado(){
        return pagado
    }

    method pagado(_pagado){
        pagado = _pagado
    }
}

//DESTINO: saben decir si un mensajero puede llevar un paquete
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
/*
    PREGUNTA: Como brooklyn y matrix solo tienen un metodo
    que retorna un booleano, no considere necesario guardar al mensajero
    como variable.¿esto esta bien?
*/
