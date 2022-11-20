//
//  ViewController.swift
//  Mod3mda0030FallB22
//
//  Created by Matthew Anderson on 10/23/22.
//

import UIKit

class ViewController: UIViewController {
   
    
    let secImage = UIImage(named: "Mod3mda0030FallB22//images/sec.png")
    let auburnImage = UIImage(named: "Mod3mda0030FallB22/images/auburn.jpeg")
    let alabamaImage = UIImage(named: "Mod3mda0030FallB22/images/alabama.png")
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var auburnView:UIImageView!
    @IBOutlet weak var secView:UIImageView!
    @IBOutlet weak var alabamaView: UIImageView!
    
    @IBOutlet weak var auburnButton: UIButton!
    @IBOutlet weak var secButton: UIButton!
    @IBOutlet weak var alabamaButton: UIButton!
    
    
    
    @IBAction func auburnButton(_sender: Any) {
        secView.alpha = 0
        alabamaView.alpha = 0
        myImageView.image = auburnView.image
    }
                                        
    @IBAction func secButton(_ sender: Any) {
        auburnView.alpha = 0
        alabamaView.alpha = 0
        secView.alpha = 1
        myImageView.image = secView.image
    }
    @IBAction func alabamaButton(_ sender: Any) {
        auburnView.alpha = 0
        secView.alpha = 0
        alabamaView.alpha = 1
        myImageView.image = alabamaView.image
    }
    

    override func viewDidLoad() {
        secView.alpha = 1
        auburnView.alpha = 0
        alabamaView.alpha = 0
        super.viewDidLoad()

        if  myImageView == secView.image {
                myImageView.image = secImage
                secView.image = secImage
                secView.image = UIImage(named: "sec.png")
                secView.alpha = 1.0
                auburnView.alpha = 0
                alabamaView.alpha = 0
        }

        if myImageView == auburnView.image {
                myImageView.image = auburnImage
                auburnView.image = auburnImage
                auburnView.image = UIImage(named: "auburn.jpeg")
                auburnView.alpha = 1.0
                secView.alpha = 0
                alabamaView.alpha = 0
        }
        if myImageView == alabamaView.image {
                myImageView.image = alabamaImage
                alabamaView.image = alabamaImage
                alabamaView.image = UIImage(named: "alabama.png")
                alabamaView.alpha = 1.0
                secView.alpha = 0
                auburnView.alpha = 0
        }
        
    }
  

}


