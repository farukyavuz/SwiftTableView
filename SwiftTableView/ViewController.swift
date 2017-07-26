//
//  ViewController.swift
//  SwiftTableView
//
//  Created by Faruk Yavuz on 24/07/2017.
//  Copyright © 2017 Faruk Yavuz. All rights reserved.
//
// https://bitbucket.org/udemyswift3/
//
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    var products = ["Tv Ünitesi","TV","Masa","Sandalye","Koltuk"]
    var prices = ["800 TL","1999 TL","250 TL","80 TL","150 TL"]
    var stocks = ["4 Adet","2 Adet","5 Adet","1 Adet","9 Adet"]
    var images = ["tv-unitesi","tv","masa","sandalye","koltuk"]
    var expired = [1489104000] //Unix time cinsinden bitiş tarihi
    
    let now:Int32 = Int32(NSDate().timeIntervalSince1970) + Int32(3*60*60) // GMT zaman dilimi için
    //Türkiyenin zaman dilimi GMT + 2 idi. GMT + 3 zaman dilimi kullanılıyor...
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("*****kalan: \((Int32(self.expired[0]) - self.now)/(24*60*60)) gün kaldı")
    }


    //For UITableViewDataSource
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return products.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{

        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! ProductTableViewCell
        
        cell.productImage.image = UIImage(named: "\(images[indexPath.row])")
        cell.productName.text = products[indexPath.row]
        cell.productValue.text = prices[indexPath.row]
        cell.productStock.text = stocks[indexPath.row]
        cell.remainTime.text = "3 Saat"
        let selectedCell = tableView.cellForRow(at: indexPath)
        selectedCell?.contentView.backgroundColor = UIColor.red
        
        return cell
    }
    
//    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
//        return 100
//    }
    
}

