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
    
    func configureCell(withImage image: UIImage, andDescription desc: String){
        imageOfCell.image = image
        descriptionLBL.text = desc
    }
    
    func setupParallax() {
        let min = Swift.CFloat(-30)
        let max = Swift.CFloat(30)
        
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max
        
        let motionAffectGroup = UIMotionEffectGroup()
        motionAffectGroup.motionEffects = [xMotion, yMotion]
        
        imageOfCell.addMotionEffect(motionAffectGroup)
    }
}
