//
//  ProductsModel.swift
//  randomProducts
//
//  Created by Chiara Amato on 09/06/18.
//  Copyright © 2018 CHR. All rights reserved.
//

import UIKit

class ProductsModel: NSObject {

    var name: String
    var price: Float
    var imageLink: String?
    
    init(name: String, price: Float, imageLink: String?){
        self.name = name
        self.price = price
        
        if let image = imageLink{
            self.imageLink = image
        }
    }
    
}
