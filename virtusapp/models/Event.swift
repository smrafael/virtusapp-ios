//
//  Event.swift
//  virtusapp
//
//  Created by Rafael Mendes on 01/09/17.
//  Copyright © 2017 Rafael. All rights reserved.
//

import Foundation

class Event {
    let title: String
    let description: String
    let date: Date
    let imageUrl: String?
    
    init(title: String, description: String, date: Date, imageUrl: String?) {
        self.title = title
        self.description = description
        self.date = date
        self.imageUrl = imageUrl
    }
    
    init(json: NSDictionary) {
        self.title = json.value(forKey: "title") as! String
        self.description = json.value(forKey: "description") as! String
        self.date =  JsonParser.parse(toDate: json.value(forKey: "date")!)!
        
        let imageUrl = json.value(forKey: "imageUrl")
        if imageUrl is NSString {
            self.imageUrl = imageUrl as! String?
        } else {
            self.imageUrl = nil
        }
    }
    
    static func parse(json: Array<Any>) -> Array<Event> {
        var events = Array<Event>()
        for case let element as NSDictionary in json {
            let event = Event(json: element)
            events.append(event)
        }
        return events
    }
    
}
