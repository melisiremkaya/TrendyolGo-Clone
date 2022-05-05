//
//  ViewController.swift
//  TrendyolTasarim
//
//  Created by Azra Kaya on 29.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yemeklerTableView: UITableView!
    
    var yemeklerListe = [Yemekler]()
    
    //sayfa açıldığı anda çalışan method
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //extensionla alakalı
        yemeklerTableView.delegate = self
        yemeklerTableView.dataSource = self
        
        yemeklerTableView.separatorColor = UIColor(white: 0.95, alpha: 1) //çizgileri aynı renk yapıyoruz
        
        //self view controllerı temsil eder - navigation controller eklendiği zaman item eklenmiş oldu aslında
        //self.navigationItem.title = "trendyol"
        
        addNavBarImage() // title icon fonksiyonu çağırıldı
        
        let appearance = UINavigationBarAppearance()
        
        //arka plan rengi için kodlama
        appearance.backgroundColor = UIColor(named: "anaRenk")
        
        navigationController?.navigationBar.standardAppearance = appearance //bütün ekranlar için
        navigationController?.navigationBar.compactAppearance = appearance //scroll edilebilen ekranlar
        navigationController?.navigationBar.scrollEdgeAppearance = appearance //genel kapsayıcı
        
        
        let y1 = Yemekler(restoran_id: 1, restoran_adi: "Gazi Çiğköfte (Şükrüpaşa)", yemek_resim_adi: "cigkofte", yemek_bilgi: "20-30 dk - 1.3 km - Çiğköfte - Min. 25 ₺")
        let y2 = Yemekler(restoran_id: 2, restoran_adi: "KFC (Abdurrahman)", yemek_resim_adi: "kfc", yemek_bilgi: "50-60 dk - 0.8 km - Tavuk - Min. 50 ₺")
        let y3 = Yemekler(restoran_id: 3, restoran_adi: "Susurluk Kokoreç (Şükrüpaşa)", yemek_resim_adi: "kokorec", yemek_bilgi: "20-30 dk - 2 km - Sokak Lezzetleri - Min. 25 ₺")
        let y4 = Yemekler(restoran_id: 4, restoran_adi: "Mançiz Pizza (Şükrüpaşa)", yemek_resim_adi: "pizza", yemek_bilgi: "20-30 dk - 1.5 km - Pizza - Min. 45 ₺")
        let y5 = Yemekler(restoran_id: 5, restoran_adi: "Elit Pastanesi (Şükrüpaşa)", yemek_resim_adi: "pastane", yemek_bilgi: "20-30 dk - 1.7 km - Pastane & Fırın - Min. 40 ₺")
        let y6 = Yemekler(restoran_id: 6, restoran_adi: "Terkos Pilavcılık (1. Murat)", yemek_resim_adi: "tavukpilav", yemek_bilgi: "20-30 dk - 0.4 km - Sokak Lezzetleri - Min. 30 ₺")
        
        yemeklerListe.append(y1)
        yemeklerListe.append(y2)
        yemeklerListe.append(y3)
        yemeklerListe.append(y4)
        yemeklerListe.append(y5)
        yemeklerListe.append(y6)
        
    }
    
    func addNavBarImage() {
            let navController = navigationController!
            let image = UIImage(named: "titleIcon") //Your logo url here
            let imageView = UIImageView(image: image)
            let bannerWidth = navController.navigationBar.frame.size.width
            let bannerHeight = navController.navigationBar.frame.size.height
            let bannerX = bannerWidth / 2 - (image?.size.width)! / 2
            let bannerY = bannerHeight / 2 - (image?.size.height)! / 2
            imageView.frame = CGRect(x: bannerX, y: bannerY, width: bannerWidth, height: bannerHeight)
            imageView.contentMode = .scaleAspectFit
            navigationItem.titleView = imageView
        }

}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return yemeklerListe.count // kaç ürün varsa o kadar çalışıcak
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //satır satır getirmesi için
        let yemek = yemeklerListe[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "yemekHucre", for: indexPath) as! YemekTableViewCell
        
        cell.yemekResimImageView.image = UIImage(named: yemek.yemek_resim_adi!) // dinamik olarak hangi resim adı geliyorsa onu ekler
        cell.yemekAdLabel.text = yemek.restoran_adi
        cell.yemekBilgiLabel.text = yemek.yemek_bilgi
        
        cell.backgroundColor = UIColor(white: 0.95, alpha: 1)
        cell.hucreArkaplan.layer.cornerRadius = 10.0
        
        return cell
    }
    
}
