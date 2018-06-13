//
//  DetailVCAlimenti.swift
//  randomProducts
//
//  Created by Chiara Amato on 09/06/18.
//  Copyright © 2018 CHR. All rights reserved.
//

import UIKit

class DetailVCAlimenti: UIViewController {
    
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var nameOfAliment: UILabel!
    @IBOutlet weak var priceOfAliment: UILabel!
    @IBOutlet weak var scadenzaAliment: UILabel!
    
    
    var myDataSource = [ProductsModel]()
    
    var randomNumber: Int?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateDataSource()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    func populateDataSource(){
        //let jeans: AbbigliamentoModel = AbbigliamentoModel.init(name: "Jeans", price: 10.5, taglia: "M", imageLink: "jeans")
        //let maglia: AbbigliamentoModel = AbbigliamentoModel.init(name: "Maglietta", price: 5.5, taglia: "L", imageLink: "maglia")
        let mela: AlimentiModel = AlimentiModel.init(name: "mela", price: 4, scadenza: "09/18", imageLink: "mela")
        let fragole: AlimentiModel = AlimentiModel.init(name: "fragole", price: 6.2, scadenza: "03/19", imageLink: "fragole")
        let arance: AlimentiModel = AlimentiModel.init(name: "arance", price: 3, scadenza: "07/18", imageLink: "arance")
        
        
        self.myDataSource = [mela, fragole, arance]
    }
    
    
    
    @IBAction func randomAction(_ sender: Any) {
    
        print("random Action called")
        
        self.randomNumber = Int(arc4random_uniform(UInt32(self.myDataSource.count)))
        
        if let myRandomNumber = self.randomNumber{
            
            print("random number = \(myRandomNumber)")
            
            let item = self.myDataSource[myRandomNumber]
            
            if item is AlimentiModel{
                let products = item as! AlimentiModel
                
                self.nameOfAliment.text = products.name
                self.priceOfAliment.text = String(products.price)
                self.scadenzaAliment.text = products.scadenza
                self.myImageView.image = UIImage.init(named: products.imageLink!)
            }
            
            print(item.name)
        }
        
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
        @IBAction func closeVCAlimenti(_ sender: Any) {
            print ("closeVCAlimenti")
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)

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
