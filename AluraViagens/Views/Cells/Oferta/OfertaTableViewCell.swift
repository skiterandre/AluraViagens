//
//  OfertaTableViewCell.swift
//  AluraViagens
//
//  Created by Andre de Oliveira Couto on 09/01/22.
//

import UIKit

class OfertaTableViewCell: UITableViewCell {

    //MARK: - IBOutlets
    
    @IBOutlet var viagemImages: [UIImageView]!
    @IBOutlet var tituloViagemLabels: [UILabel]!
    @IBOutlet var subtituloViagemLabels: [UILabel]!
    @IBOutlet var precoSemDescontoLabels: [UILabel]!
    @IBOutlet var precoLabels: [UILabel]!
    @IBOutlet var fundoViews: [UIView]!
    
    func configuraCelula(_ viagens:[Viagem]?){
        guard let listaViagens = viagens else { return}
        
        for i in 0..<listaViagens.count{
            setOutlets(i, viagem: listaViagens[i])
        }
        
        fundoViews.forEach{ viewAtual in
            viewAtual.addSombra()
        }
    }
    
    func setOutlets(_ index: Int, viagem:Viagem){
        let imageOutlet = viagemImages[index]
        imageOutlet.image = UIImage(named: viagem.asset)
        
        let tituloOutlet = tituloViagemLabels[index]
        tituloOutlet.text = viagem.titulo
        
        let subtituloOutlet = subtituloViagemLabels[index]
        subtituloOutlet.text = viagem.subtitulo
        
        let precoSemDescontoOutlet = precoSemDescontoLabels[index]
        precoSemDescontoOutlet.text = "A partir de R$\(viagem.precoSemDesconto)"
        
        let precoOutlet = precoLabels[index]
        precoOutlet.text = "R$ \(viagem.preco)"
    }
}
