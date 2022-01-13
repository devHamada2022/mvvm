//
//  Person.swift
//  VIPER
//
//  Created by Pixel4it on 12/01/2022.
//

import Foundation

enum Gender {
    case male, female, unspecified
}

struct Person{
    let name: String
    let username: String
    let birthdate: Date?
    let middleName: String?
    let address: String?
    let gender: Gender
    
    init(name: String, username: String, birthdate: Date? = nil, middleName: String? = nil, address: String? = nil, gender: Gender = .unspecified){
        self.name = name
        self.username = username
        self.birthdate = birthdate
        self.middleName = middleName
        self.address = address
        self.gender = gender
    }
}
