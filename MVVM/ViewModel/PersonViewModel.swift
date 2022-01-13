//
//  PersonViewModel.swift
//  VIPER
//
//  Created by Pixel4it on 12/01/2022.
//

import Foundation
import UIKit

struct PersonViewModel {
    var name: String
    let username: String
    var currentlyFollowing: Bool
    let image: UIImage?
    
    init(with person: Person) {
        name = person.name
        username = person.username
        currentlyFollowing = false
        image = UIImage(systemName: "person")
        
    }
}
