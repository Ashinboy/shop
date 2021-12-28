//
//  ViewController.swift
//  shop
//
//  Created by Ashin Wang on 2021/12/26.
//

import UIKit

class ViewController: UIViewController {
    //top
    @IBOutlet weak var topImage: UIImageView!
    @IBOutlet weak var topSegmented: UISegmentedControl!
    
    let topImages = ["深灰","深棕","摩卡棕","象牙白"]
    var index:Int = 0
    
    //bot
    
    @IBOutlet weak var botImage: UIImageView!
    @IBOutlet weak var sizeSegmented: UISegmentedControl!
    @IBOutlet weak var sizePage: UIPageControl!
    
    let sizrImages = ["XS","S","M","L","XL"]
    var sizeIndex:Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
    //top
    @IBAction func nextBtn(_ sender: Any) {
        index = (index + 1 ) % topImages.count
        topImage.image = UIImage(named: topImages[index])
        syncTop(index: index)
    }
    @IBAction func lastBtn(_ sender: Any) {
        index = (index + topImages.count - 1) % topImages.count
        print(index)
        topImage.image = UIImage(named: topImages[index])
        syncTop(index: index)
        
    }
    @IBAction func colorSegmented(_ sender: UISegmentedControl) {
        index = sender.selectedSegmentIndex
        topImage.image = UIImage(named: topImages[index])
    }
    
    //bot
    
    @IBAction func nextBtnBot(_ sender: Any) {
        sizeIndex = (sizeIndex + 1) % sizrImages.count
        botImage.image = UIImage(named: sizrImages[sizeIndex])
        syncBot(sizeIndex: sizeIndex)
    }
    
    @IBAction func lastBtnBot(_ sender: Any) {
        sizeIndex = (sizeIndex + sizrImages.count - 1) % sizrImages.count
        print(sizeIndex)
        botImage.image = UIImage(named: sizrImages[sizeIndex])
        syncBot(sizeIndex: sizeIndex)
    }
    
    @IBAction func pageControl(_ sender: UIPageControl) {
        sizeIndex = sender.currentPage
        print(sizeIndex)
        botImage.image = UIImage(named: sizrImages[sizeIndex])
        syncBot(sizeIndex: sizeIndex)
    }
    
    @IBAction func sizeSegmented(_ sender: UISegmentedControl) {
        sizeIndex = sender.selectedSegmentIndex
        print(sizeIndex)
        botImage.image = UIImage(named: sizrImages[sizeIndex])
    }

    
    func syncBot (sizeIndex: Int){
        sizeSegmented.selectedSegmentIndex = sizeIndex
        sizePage.currentPage = sizeIndex
    }
    
    func syncTop (index: Int){
        topSegmented.selectedSegmentIndex = index
    }
}

