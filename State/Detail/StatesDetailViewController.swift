//
//  StatesDetailViewController.swift
//  State
//
//  Created by DroBlack on 2/14/18.
//  Copyright © 2018 DroBlack. All rights reserved.
//

import UIKit

class StatesDetailViewController: UIViewController {
    
    @IBOutlet weak var imageView:UIImageView!
    var imageName = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = UIImage(named: imageName)
        
  
        
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
