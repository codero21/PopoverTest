//
//  ViewController.swift
//  PopoverTest
//
//  Created by Rollin Francois on 6/26/17.
//  Copyright © 2017 Francois Technology. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Outlets
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    
    // MARK: Properties
    
    var image: UIImage!
    
  

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        image = UIImage(named: "Sunflower")
        
        imageView.image = image
        imageView.contentMode = UIViewContentMode.scaleAspectFit
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "imageInformationSegue" {
            let viewController: ImageInformationViewController = segue.destination as! ImageInformationViewController
            viewController.imageBeingDisplayed = self.image
            
        }
    }
    
    
}

