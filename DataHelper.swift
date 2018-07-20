//
//  DataHelper.swift
//  Shopping
//
//  Created by MacStudent on 2018-07-20.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class  DataHelper
{
    var ProductList = [Int : Product]()
    //[:] is a dictonary
    init()
    {
        self.loadProductData()
    }
    func loadProductData()
    {
        ProductList = [:]
        
        let epson = Product(productID: 101, productName: "Projector", unitPrice: 1000.1, manufacturer: "Epson", category: ProductCategory.Appliances)
        ProductList[epson.ProductID!] = epson
        
        let handcream = Product(productID: 101, productName: "Handcream", unitPrice: 12.23, manufacturer: "Glysomed", category: ProductCategory.Health)
        ProductList[handcream.ProductID!] = handcream
        
        let flask = Product(productID: 102, productName: "Flask", unitPrice: 20, manufacturer: "Contigo", category: ProductCategory.Appliances)
        ProductList[flask.ProductID!] = flask
        
        let zelda = Product(productID: 103, productName: "The Legend of Zelda", unitPrice: 27.97, manufacturer: "Nintendo", category: ProductCategory.Books)
        ProductList[zelda.ProductID!] = zelda
        
        let sapiens = Product(productID: 104, productName: "Sapiens", unitPrice: 11.89, manufacturer: "Yuval Noah Harari", category: ProductCategory.Books)
        ProductList[sapiens.ProductID!] = sapiens
        
        let socks = Product(productID: 105, productName: "Puma Men's 6 pack Low Cut Socks", unitPrice: 23.40, manufacturer: "Puma", category: ProductCategory.Clothing)
        ProductList[socks.ProductID!] = socks
        
        let dress = Product(productID: 106, productName: "Women's Vintage Floral Cocktail Dress", unitPrice: 45, manufacturer: "OWIN", category: ProductCategory.Clothing)
        ProductList[dress.ProductID!] = dress
    }
    //customize the specification by clouser
    func displayProducts()
    {
        for(_, value) in self.ProductList.sorted(by: { $0.key < $1.key})
        {
           // print("key = \(key) \n ")
            //$0= current value, $1 = next value
            //we r sorting according to key
        
                print(value.displayData())
        
        }//key is int and value is obj of product class and product class is inherited by protocol thats why displayData() is allowed
    }
}
