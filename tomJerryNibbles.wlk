object tom {
    var distanciaRecorrida = 0
    var ultimoRatonComido = jerry
    var energia = 50

    method comer(unRaton) {
        energia = energia + 12 + unRaton.peso()
        ultimoRatonComido = unRaton
    }

    method energia() {
        return energia
    }

    method correr(metros) {
        energia = energia - metros * 0.5
        distanciaRecorrida = distanciaRecorrida + metros
    }

    method velocidadMaxima() {
        return 5 + energia / 10
    }

    method puedeCazar(distancia) {
        return distancia/2 <= energia
    }

    method cazar(unRaton, unaDistancia) {
        if (self.puedeCazar(unaDistancia)) {
            self.correr(unaDistancia)
            self.comer(unRaton)
        }
    }

}

object jerry {
    var edad = 2

    method cumplirAnios() {
        edad += 1
    }

    method peso() {
        return edad *20
    }
  
}

object nibbles {
    //const peso = 35??

    method peso() {
        return 35
    }
  
}

object jorgito {
    //puede cambiar su peso a voluntad
    var peso = 30

    method peso() {
        return peso
    }

    method peso(nuevoPeso) {
        peso = nuevoPeso
    }
  
}
