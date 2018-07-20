//
//  main.swift
//  Shopping
//
//  Created by MacStudent on 2018-07-19.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

//creating an object
//var Santosh = Customer()
//Santosh.customerID = "C101"
//Santosh.customerName = "Santosh"
//print(Santosh.displayData())

//var Param = Customer(customerID: "C102",customerName: "Paramjeet",address: "Brampton",email: "param@mad.com",creditCardInfo: "3654-6584-6545-5646",shippingInfo: "Ship to lambton college btwn 8:00AM to 12:00PM")
//print(Param.displayData())

//for having ip from user just use screen interaction tools

//var Dhyanee = Customer()
//Dhyanee.registerUser()
//print(Dhyanee.displayData())

//Dhyanee.CustName = "Dhyanu"
//print(Dhyanee.displayData())
//ENTER VALUE IN NEXT LINE SO THAT U CAN SEE THE VALUE U HAVE  ENTERED
//Dhyanee.shippingInfo = "asdsadsad"

//Santosh.CustName = "Santosh"
//Santosh.CustEmail = "santosh@mad.com"
//Santosh.CustAddress = "dsfsdf"
//Santosh.CustCreditCardInfo = "2123-6544-8966-3215"
//Santosh.CustShippingInfo = "sjhfgjhsf"

//print(Santosh.displayData())

//parameterized object
var epson = Product(productID: 101, productName: "Projector", unitPrice: 1000.1, manufacturer: "Epson ", category: ProductCategory.Appliances)
print(epson.displayData())

//
var sdf = Product()
sdf.newProduct()
print(sdf.displayData())

var dataHelper = DataHelper()
dataHelper.displayProducts()
