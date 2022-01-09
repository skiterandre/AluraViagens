//
//  HomeTableViewHeader.swift
//  AluraViagens
//
//  Created by Andre de Oliveira Couto on 11/12/21.
//

import UIKit

class HomeTableViewHeader: UIView {

 //MARK: Outlets
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var headerVIew: UIView!
    
    @IBOutlet weak var bannerImageView: UIImageView!
    
    @IBOutlet weak var bannerView: UIView!
    
    func configuraView(){
        headerVIew.backgroundColor = UIColor(red: 30.00/255.00, green: 59.0/255.0, blue: 119.0/255.0, alpha: 1)
        
        bannerView.layer.cornerRadius = 10
        bannerView.layer.masksToBounds = true
        
        headerVIew.layer.cornerRadius = UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone ? 500 : 200
        headerVIew.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    }
}
