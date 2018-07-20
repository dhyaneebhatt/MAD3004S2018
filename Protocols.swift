//
//  Protocols.swift
//  Shopping
//
//  Created by MacStudent on 2018-07-20.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

//protocol=interface
protocol IDisplay
{
    func displayData() ->  String
    //we can just write prototype of func we cant write the body bcos its a protocol
}
public protocol CaseIterable
{
    associatedtype AllCases: Collection where AllCases.Element == Self
    static var allCases: AllCases
    {
        get
        
    }
}
