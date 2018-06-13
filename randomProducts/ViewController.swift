//
//  ViewController.swift
//  randomProducts
//
//  Created by Chiara Amato on 08/06/18.
//  Copyright © 2018 CHR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func goToDetailVCAbbigliamento(_ sender: Any) {
        print("goToDetailVCAbbigliamento")
        
        //self.performSegue(withIdentifier: "DetailVCAlimenti", sender: self)
    }
    
    
    @IBAction func goToDetailVCAlimenti(_ sender: Any) {
        print("goToDetailVCAlimenti")
        
        //self.performSegue(withIdentifier: "DetailVCAlimenti", sender: self)
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        print("prepare for segue")
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
