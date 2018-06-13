//
//  AbbigliamentoModel.swift
//  randomProducts
//
//  Created by Chiara Amato on 09/06/18.
//  Copyright © 2018 CHR. All rights reserved.
//

import UIKit

class AbbigliamentoModel: ProductsModel {
    
    var taglia: String
    
    init(name: String, price: Float, taglia: String, imageLink: String){
        self.taglia = taglia
        super.init(name:name, price:price, imageLink: imageLink)
    }
    
}
