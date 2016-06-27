//
//  BeautCell.swift
//  beaut
//
//  Created by Prateek Mahawar on 17/05/16.
//  Copyright © 2016 Prateek Mahawar. All rights reserved.
//

import UIKit

class BeautCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var imgLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imgView.layer.cornerRadius = 5.0
        imgView.clipsToBounds = true
    }

    
    
    func configureCell(imgg:UIImage , lbl:String){
        imgView.image = imgg
        imgLabel.text = lbl
    }
    
}
