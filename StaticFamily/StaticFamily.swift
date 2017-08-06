//
//  StaticFamily.swift
//  StaticFamily
//
//  Created by Shah, Harshit on 8/6/17.
//  Copyright © 2017 MasterCard. All rights reserved.
//

import Foundation
import Foundation
open class StaticFamily : Codable, Printable
{
    let familyName: String
    var familyMembers: [StaticPerson] = []
    enum CodingKeys: String, CodingKey {
        case familyName
        case familyMembers
    }
    public init(familyName:String, members:[StaticPerson]?)
    {
        self.familyName = familyName
        if let _ = members
        {
            familyMembers.append(contentsOf: members!)
        }
    }
    public func addFamilyMember(member:StaticPerson)
    {
        familyMembers.append(member)
    }
    open func printData() {
        print("FamilyName \(familyName)")
        let _ = familyMembers.map({ $0.printData()})
    }
    //    public required init(from decoder: Decoder) throws {
    //        let values = try decoder.container(keyedBy: CodingKeys.self)
    //        familyName = try values.decode(String.self, forKey: .familyName)
    //        familyMembers = try values.decode([StaticPerson].self, forKey: .familyMembers)
    //    }
    
    
}
