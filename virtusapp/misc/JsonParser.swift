//
//  JsonParser.swift
//  virtusapp
//
//  Created by Rafael Mendes on 03/09/17.
//  Copyright © 2017 Rafael. All rights reserved.
//

import Foundation

class JsonParser {
    
    static func parse(toDate: Any) -> Date? {
        if toDate is String {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd"
            
            let dateString = toDate as! String
            let date = dateFormatter.date(from: dateString)
            return date
        } else {
            return nil
        }
    }
    
}
