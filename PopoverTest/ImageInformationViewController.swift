//
//  ImageInformationViewController.swift
//  PopoverTest
//
//  Created by Rollin Francois on 6/27/17.
//  Copyright © 2017 Francois Technology. All rights reserved.
//

import UIKit

class ImageInformationViewController: UIViewController {
    
    // MARK: Outlets
    
    @IBOutlet weak var imageHeight: UITextField!
    @IBOutlet weak var imageWidth: UITextField!
    @IBOutlet weak var imageColorspace: UITextField!

    
    // MARK: Properties
    var imageBeingDisplayed: UIImage!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let imageSize = imageBeingDisplayed.size
        let height = imageSize.height
        let width = imageSize.width
        
        imageHeight.text = "\(height)"
        imageWidth.text = "\(width)"
        imageColorspace.text = "RGB"
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
