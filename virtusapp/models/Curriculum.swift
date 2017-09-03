//
//  Curriculum.swift
//  virtusapp
//
//  Created by Rafael Mendes on 03/09/17.
//  Copyright © 2017 Rafael. All rights reserved.
//

import Foundation
import Alamofire

class Curriculum {
    
    let name: String
    let area: String
    let phone: String
    let email: String
    let experience: String
    
    init(name: String, area: String, phone: String, email: String, experience: String) {
        self.name = name
        self.area = area
        self.phone = phone
        self.email = email
        self.experience = experience
    }
    
    func toParameters() -> Parameters {
        let parameters: Parameters = [
            "name": self.name,
            "area": self.area,
            "phone": self.phone,
            "email": self.email,
            "experience": self.experience
        ]
        return parameters
    }
    
}
