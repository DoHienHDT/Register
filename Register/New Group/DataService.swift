//
//  DataService.swift
//  Register
//
//  Created by dohien on 7/2/18.
//  Copyright © 2018 hiền hihi. All rights reserved.
//




//
import Foundation

typealias DICT = Dictionary<AnyHashable, Any>

class DataService {
    static let shared: DataService = DataService()
    private var _dataCities : [City]?
    var dataCities : [City] {
        get {
            if _dataCities == nil {
                getDataCity()
            }
            return _dataCities ?? []
        }
        set {
            _dataCities = newValue
        }
    }
    
    func getDataCity() {
        _dataCities = []
        // đường dẫn đến
        guard let plistPath = Bundle.main.path(forResource: "Cities", ofType: "plist") else { return }
        // đọc nội dung
        guard let plistData = FileManager.default.contents(atPath: plistPath) else { return  }
        
        do {
            // đã lấy về được một cục dữ liệu
            guard let plistDict  = try  PropertyListSerialization.propertyList(from: plistData, options: .mutableContainersAndLeaves, format: nil)  as? DICT else { return }
            
            guard let dictionary = plistDict["Cities"] as? [DICT] else { return}
            for cityDictionary in dictionary {
//                // lấy từng phần tử trong city
                if let city = City(dictionary: cityDictionary) {
//                    print(city.name, city.cityCode)
                    _dataCities?.append(city)
                }
            }
        } catch  {
            print("Error")
        }
    }
    private var _districts : [Distric]?
    var districts : [Distric] {
        get {
            if _districts == nil {
                getDataDistrict()
            }
            return _districts ?? []
        }
        set {
            _districts = newValue
        }
    }
    
    func getDataDistrict() {
        _districts = []
        guard let plistPath = Bundle.main.path(forResource: "Districts", ofType: "plist")  else { return }
        guard let plisData = FileManager.default.contents(atPath: plistPath) else { return  }
        do {
            guard let plistDict = try PropertyListSerialization.propertyList(from: plisData, options: .mutableContainersAndLeaves, format: nil) as? DICT else { return  }
            guard let dictionary = plistDict["Districts"] as? [DICT] else { return }
            for district in dictionary {
                if let dict = Distric(dictionary: district) {
//                    print(dict.name , dict.districtCode , dict .citiCode)
                    _districts?.append(dict)
                }
            }
        } catch  {
            print("Error")
        }
    }
    func getPlist(citiData : Int) -> [Distric] {
        getDataDistrict()
        var datafilited : [Distric] = []
        for score in _districts ?? [] {
            if score.cityCode == citiData {
                datafilited.append(score)
            }
        }
        return datafilited
    }
}
