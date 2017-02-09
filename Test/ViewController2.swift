//
//  ViewController2.swift
//  Test
//
//  Created by Yu, William on 2/9/17.
//  Copyright © 2017 Test. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var iv1: UIImageView!
    @IBOutlet weak var iv2: UIImageView!
    @IBOutlet weak var iv3: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Three Images 150x20, 250x20, 350x20
        iv1.image = UIImage(named: "250x20")
        iv2.image = UIImage(named: "350x20")
        iv3.image = UIImage(named: "150x20")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
