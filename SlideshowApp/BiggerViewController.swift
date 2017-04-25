//
//  BiggerViewController.swift
//  SlideshowApp
//
//  Created by 田村崚 on 2017/04/25.
//  Copyright © 2017年 ryo.tamura. All rights reserved.
//

import UIKit

class BiggerViewController: UIViewController {
    
    var x = 0
    @IBOutlet weak var imageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if x == 0{
            imageView.image = UIImage(named: "parao.jpg")
        }else if x == 1{
            imageView.image = UIImage(named: "multa.jpeg")
        }else{
            imageView.image = UIImage(named: "roma.jpg")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
