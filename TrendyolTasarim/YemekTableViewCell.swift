//
//  YemekTableViewCell.swift
//  TrendyolTasarim
//
//  Created by Azra Kaya on 29.04.2022.
//

import UIKit

class YemekTableViewCell: UITableViewCell {

    @IBOutlet weak var yemekResimImageView: UIImageView!
    
    @IBOutlet weak var yemekAdLabel: UILabel!
    
    @IBOutlet weak var yemekBilgiLabel: UILabel!
    
    @IBOutlet weak var hucreArkaplan: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
