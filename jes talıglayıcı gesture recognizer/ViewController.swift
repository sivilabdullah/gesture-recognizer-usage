//
//  ViewController.swift
//  jes talıglayıcı gesture recognizer
//
//  Created by abdullah's Ventura on 23.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    let images = ["images1","images2"]
    var currentIndex = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.isUserInteractionEnabled = true
        let gesture = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gesture)
    }
    @objc func changePic() {
        
        let imageName = images[currentIndex]
        imageView.image = UIImage(named: "\(imageName)")
        
        currentIndex += 1
        if currentIndex == images.count {
            currentIndex = 0
        }
        
        
        
        /*
        for i in 0..<images.count{
            if counter <= images.count{
                imageView.image = UIImage(named: "\(images[i])")
                counter += 1
            }else if counter > images.count {
                imageView.image = UIImage(named: "\(images[0])")
                counter = 0
            }
        }*/
    }
    
}
    

