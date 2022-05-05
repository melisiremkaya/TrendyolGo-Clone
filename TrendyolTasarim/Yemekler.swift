//
//  Yemekler.swift
//  TrendyolTasarim
//
//  Created by Azra Kaya on 29.04.2022.
//

import Foundation

class Yemekler {
    var restoran_id:Int?
    var restoran_adi:String?
    var yemek_resim_adi:String?
    var yemek_bilgi:String?
    
    init(restoran_id:Int,restoran_adi:String,yemek_resim_adi:String,yemek_bilgi:String){
        
        self.restoran_id = restoran_id
        self.restoran_adi = restoran_adi
        self.yemek_resim_adi = yemek_resim_adi
        self.yemek_bilgi = yemek_bilgi
        
    }
    
}
