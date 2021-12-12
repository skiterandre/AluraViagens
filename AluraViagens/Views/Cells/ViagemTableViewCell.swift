//
//  ViagemTableViewCell.swift
//  AluraViagens
//
//  Created by Andre de Oliveira Couto on 12/12/21.
//

import UIKit

class ViagemTableViewCell: UITableViewCell {

    
    @IBOutlet weak var backGroundViewCell: UIView!
    @IBOutlet weak var viagemImagem: UIImageView!
    @IBOutlet weak var tituloViagemLabel: UILabel!
    @IBOutlet weak var subtituloViagemLabel: UILabel!
    @IBOutlet weak var diariaViagemLabel: UILabel!
    @IBOutlet weak var precoSemDescontoLabel: UILabel!
    @IBOutlet weak var precoViagemLabel: UILabel!
    @IBOutlet weak var statusCancelamentoViagemLabel: UILabel!
    
    
    func configuraCelula(_ viagem:Viagem?){
        
        viagemImagem.image = UIImage(named: viagem?.asset ?? "")
        tituloViagemLabel.text = viagem?.titulo
        subtituloViagemLabel.text = viagem?.subtitulo
        precoViagemLabel.text = "R$ \(viagem?.preco ?? 0)"
        
        let attributeString: NSMutableAttributedString = NSMutableAttributedString(string: "R$ \(viagem?.precoSemDesconto ?? 0)")
        attributeString.addAttribute(NSMutableAttributedString.Key.strikethroughStyle, value: 1, range: NSMakeRange(0, attributeString.length))
        precoSemDescontoLabel.attributedText = attributeString
        
        if let numeroDias = viagem?.diaria,let numeroHospedes = viagem?.hospedes{
            let diarias = numeroDias == 1 ? "Diária": "Diárias"
            let hospedes = numeroHospedes == 1 ? "Pessoa": "Pessoas"
            
            diariaViagemLabel.text  = "\(numeroDias) \(diarias) - \(numeroHospedes) \(hospedes)"
        }

        DispatchQueue.main.async {
            self.backGroundViewCell.addSombra()
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
