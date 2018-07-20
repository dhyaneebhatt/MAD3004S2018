//
//  Product.swift
//  Shopping
//
//  Created by MacStudent on 2018-07-20.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Product : IDisplay
{
    private var productID : Int?
    private var productName : String?
    private var manufacturer : String?
    private var unitPrice : Double?
    private var category : ProductCategory?
    //here we will give enum name not the data type
    //to fix category and ask user to choose
    var ProductID : Int?
    {
        get
        {
            return self.productID
        }
        set
        {
            self.productID = newValue
        }
    }
    var ProductName : String?
    {
        get
        {
            return self.productName
        }
        set
        {
            self.productName = newValue
        }
    }
    var UnitPrice : Double?
    {
        get
        {
            return self.unitPrice
        }
        set
        {
            self.unitPrice = newValue
        }
    }
    var Manufacturer : String?
    {
        get
        {
            return self.manufacturer
        }
        set
        {
            self.manufacturer = newValue
        }
    }
    var Category : ProductCategory?
    {
        get
        {
            return self.category
        }
        set
        {
            self.category = newValue
        }
    }
    
    init()
    {
        self.productID = 0
        self.productName = ""
        self.manufacturer = ""
        self.unitPrice = 0.0
        self.category = ProductCategory.None
    }
    
    init(productID : Int, productName : String , unitPrice : Double , manufacturer : String, category: ProductCategory)
    {
        self.productID = productID
        self.productName = productName
        self.manufacturer = manufacturer
        self.unitPrice = unitPrice
        self.category = category
    }
    func displayData() -> String
    {
        var returnData = ""
//if self.productID is not available then we will set it wih 0
        //pid is must thats why we r not keeping it as optional
        returnData += "Product ID: \(self.productID ?? 0)\n"
        returnData += "Product Name : \(self.productName ?? "")\n"
        returnData += "Manufacturer : \(self.manufacturer ?? "")\n"
        returnData += "Category : \(self.category ?? ProductCategory.None)\n "
        returnData += "Unit Price: \(self.unitPrice ?? 0.0)"
        return returnData
    }
    func newProduct()
    {
        print("Enter product id:")
        self.productID = (Int) (readLine()!)!
        //casting - converting string into int
        print("Enter Product Name:")
        self.productName = readLine()
        print("Enter Manufacturer:")
        self.manufacturer = readLine()
        
        print("Please choose product category:")
        for category in ProductCategory.allCases
        {
            print("Enter  \(category.rawValue) for \(category)")
        }
        let choice = (Int) (readLine()!) ?? 5
        self.category = ProductCategory(rawValue: choice)
        print("Enter Unit Price:")
        self.unitPrice = (Double) (readLine()!)!
    }
}
