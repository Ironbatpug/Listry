//
//  ParallaxCell.swift
//  Listry
//
//  Created by Molnár Csaba on 2019. 03. 25..
//  Copyright © 2019. Molnár Csaba. All rights reserved.
//

import UIKit

class ParallaxCell: UITableViewCell {
    
    @IBOutlet weak var imageOfCell: UIImageView!
    @IBOutlet weak var descriptionLBL: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configurreCell(withImage image: UIImage, andDescription desc: String){
        imageOfCell.image = image
        descriptionLBL.text = desc
    }
    
    func setupParallax() {
        
    }
}
