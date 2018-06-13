//
//  AlimentiModel.swift
//  randomProducts
//
//  Created by Chiara Amato on 09/06/18.
//  Copyright © 2018 CHR. All rights reserved.
//

import UIKit

class AlimentiModel: ProductsModel {
    
    var scadenza: String
    
    init(name: String, price: Float, scadenza: String, imageLink: String){
        self.scadenza = scadenza
        super.init(name:name, price:price, imageLink: imageLink)
    }
    

}
