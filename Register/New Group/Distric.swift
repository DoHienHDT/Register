//
//  Distric.swift
//  Register
//
//  Created by dohien on 7/2/18.
//  Copyright © 2018 hiền hihi. All rights reserved.
//

import Foundation
class Distric {
    var cityCode : Int
    var districtCode : Int
    var name : String
    init?(dictionary: DICT) {
        
        guard let citiCode = dictionary["CityCode"] as? Int else { return nil }
        
        guard let districtCode = dictionary["DistrictCode"] as? Int else { return nil }
        guard let name = dictionary["Name"] as? String else { return nil }
        self.cityCode = citiCode
        self.districtCode = districtCode
        self.name = name
    }
}

