//
//  Customer.swift
//  Shopping
//
//  Created by MacStudent on 2018-07-19.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
//confirming to protocol iDisplay
class Customer : IDisplay
{
    var customerID : String?
    private var customerName : String?
    private var address : String?
    private var email : String?
    private var creditCardInfo : String?
    private var shippingInfo : String?
    
    //stored property
    var CustName : String?
    {
        get
        {
            return self.customerName
        }
        set
        {//newValue var is bydefault in setter
            return self.customerName = newValue
        }
    }
    var CustAddress : String?
    {
        get
        {
            return self.address
        }
        set
        {//newValue var is bydefault in setter
            return self.address = newValue
        }
    }
    var CustEmail : String?
    {
        get
        {
            return self.email
        }
        set
        {//newValue var is bydefault in setter
            return self.email = newValue
        }
    }
    var CustCreditCardInfo : String?
    {
        get
        {
            return self.creditCardInfo
        }
        set
        {//newValue var is bydefault in setter
            return self.creditCardInfo = newValue
        }
    }
    var CustShippingInfo : String?
    {
        get
        {
            return self.shippingInfo
        }
        set
        {//newValue var is bydefault in setter
            return self.shippingInfo = newValue
        }
    }
    //default init
    init()
    {
        self.customerName = ""
        self.address = ""
        self.email = ""
        self.creditCardInfo = ""
        self.shippingInfo = ""
    }
    //parameterized initializer
    init(customerID: String, customerName : String , address : String , email : String, creditCardInfo : String, shippingInfo : String)
    {
        self.customerID = customerID
        self.customerName = customerName
        self.address = address
        self.email = email
        self.creditCardInfo = creditCardInfo
        self.shippingInfo = shippingInfo
    }
    func displayData() -> String
    {
        var returnData = ""
        
        if self.customerID != nil
        {
            returnData += "\n Customer ID: "+self.customerID!
        }
        
        if self.customerName != nil
        {
            returnData += "\n customer Name : "+self.customerName!
        }
        
        if self.address != nil
        {
            returnData += "\n address: "+self.address!
        }
        if self.email != nil
        {
            returnData += "\n email : "+self.email!
        }
        if self.creditCardInfo != nil
        {
            returnData += "\n Credit Card Info: "+self.creditCardInfo!
        }
        if self.shippingInfo != nil
        {
            returnData += "\n Shipping Info : "+self.shippingInfo!
        }
        
        return returnData
    }
    
    func registerUser()
    {
        print("Enter Customer ID : ")
        self.customerID =  readLine()!
        print("Enter customerName : ")
        self.customerName =  readLine()!
        print("Enter address : ")
        self.address =  readLine()!
        print("Enter email : ")
        self.email =  readLine()!
        print("Enter creditCardInfo : ")
        self.creditCardInfo =  readLine()!
        print("Enter shippingInfo : ")
        self.shippingInfo =  readLine()!

    }

}
//cust id access should be given to othr classes
//constr. is called as initializer
//this keyword = self

