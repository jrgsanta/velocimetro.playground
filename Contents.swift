//Velocimetro

import UIKit

enum Velocidades: Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad()->(actual : Int, velocidadEnCadena: String){
        if self.velocidad == .Apagado {
            self.velocidad = .VelocidadBaja
        } else if self.velocidad == .VelocidadBaja{
            self.velocidad = .VelocidadMedia
        } else if self.velocidad == .VelocidadMedia{
            self.velocidad =  .VelocidadAlta
        } else {
            self.velocidad =  .Apagado
        }
        return (self.velocidad.rawValue, "\(self.velocidad)")
    }
}

var auto = Auto()
var resultado :(Int,String)=(auto.velocidad.rawValue,"\(auto.velocidad)")

for i in 1...20 {
    print("\(resultado.0), \(resultado.1)")
    resultado = auto.cambioDeVelocidad()
}
