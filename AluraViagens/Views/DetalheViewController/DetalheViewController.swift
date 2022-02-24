//
//  DetalheViewController.swift
//  AluraViagens
//
//  Created by Andre de Oliveira Couto on 10/01/22.
//

import UIKit

class DetalheViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet weak var viagemImage: UIImageView!
    @IBOutlet weak var tituloViagemLabel: UILabel!
    @IBOutlet weak var subtituloViagemLabel: UILabel!

    
    //MARK: - View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //MARK: - Actions
    @IBAction func botaoVoltar(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
}
