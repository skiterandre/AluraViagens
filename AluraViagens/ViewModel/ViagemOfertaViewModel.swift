//
//  ViagemOfertaViewModel.swift
//  AluraViagens
//
//  Created by Andre de Oliveira Couto on 09/01/22.
//

import Foundation

class ViagemOfertaViewModel: ViagemViewModel{
    
    var tituloSessao: String{
        return "Ofertas"
    }
    
    var tipo: ViagemViewModelType{
        .ofertas
    }
    
    var viagens: [Viagem]
    
    var numeroDeLinhas: Int{
        return 1
    }
    
    // MARK: Inicializadores
    init(_ viagens:[Viagem]){
        self.viagens = viagens
    }
    
}
