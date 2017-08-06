//
//  StaticPerson.swift
//  StaticFamily
//
//  Created by Shah, Harshit on 8/6/17.
//  Copyright © 2017 MasterCard. All rights reserved.
//

import Foundation
public protocol Printable
{
    func printData()
}

open class StaticPerson : Printable, Codable
{
    let name: String
    let age: Int
    public init(name:String,age:Int)
    {
        self.name = name
        self.age = age
    }
    public func printData() {
        print("Person " +
            "Name: \(name)   " +
            "Age: \(age)")
    }
}
