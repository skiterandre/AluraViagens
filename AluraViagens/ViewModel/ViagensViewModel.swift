//
//  ViagensViewModel.swift
//  AluraViagens
//
//  Created by Andre de Oliveira Couto on 12/12/21.
//

import Foundation


enum ViagemViewModelType: String{
    case destaques
    case ofertas
    case internacionais
}


protocol ViagemViewModel{
    var tituloSessao: String { get }
    var tipo: ViagemViewModelType { get }
    var viagens: [Viagem] { get set }
    var numeroDeLinhas: Int { get }
}
