//
//  detailsVC.swift
//  simpsonBook
//
//  Created by Ragıb Gormez on 16.02.2023.
//

import UIKit

class detailsVC: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var raceLabel: UILabel!
    
    var selectedLotr : Lotr?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = selectedLotr?.name
        raceLabel.text = selectedLotr?.race
        imageView.image = selectedLotr?.image

        
    }
    

    

}
