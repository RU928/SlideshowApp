//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 田村崚 on 2017/04/25.
//  Copyright © 2017年 ryo.tamura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    var image1 = UIImage(named: "parao.jpg")
    var image2 = UIImage(named: "multa.jpeg")
    var image3 = UIImage(named: "roma.jpg")
    var counter = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    imageView.image = image1
    
    }
    
    
       
    @IBAction func next(_ sender: Any) {
        if counter == 0 && PSBtn != 1{
            imageView.image = image2
            counter = 1
        }else if counter == 1 && PSBtn != 1{
            imageView.image = image3
            counter = 2
        }else if counter == 2 && PSBtn != 1{
            imageView.image = image1
            counter = 0
        }
    }
    
    @IBAction func back(_ sender: Any) {
        if counter == 0 && PSBtn != 1{
            imageView.image = image3
            counter = 2
        }else if counter == 2 && PSBtn != 1{
            imageView.image = image2
            counter = 1
        }else if counter == 1 && PSBtn != 1{
            imageView.image = image1
            counter = 0
        }
    }
    
    var timer: Timer!
    var PSBtn = 0
   
    @IBOutlet weak var Btntitle: UIButton!
    
    @IBAction func playStop(_ sender: Any) {
        if PSBtn == 0{
            timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(slideShow), userInfo: nil, repeats: true)
            PSBtn = 1
            Btntitle.setTitle("停止", for: .normal)
        }else{
            timer.invalidate()
            PSBtn = 0
            Btntitle.setTitle("再生", for: .normal)
        }
    }
    
    func slideShow(time: Timer){
        if counter == 2{
        imageView.image = image1
        counter = 0
        }else if counter == 0{
            imageView.image = image2
            counter = 1
        }else{
            imageView.image = image3
            counter = 2
        }
    }
    
    @IBAction func segueBtn(_ sender: Any) {
        if PSBtn == 1{
        timer.invalidate()
        PSBtn = 0
        Btntitle.setTitle("再生", for: .normal)
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let biggerViewController: BiggerViewController = segue.destination as! BiggerViewController
      biggerViewController.x = counter
    }

    @IBAction func unwind(segue: UIStoryboardSegue){
        
    }
    
    

}

