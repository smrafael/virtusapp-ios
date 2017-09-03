//
//  Job.swift
//  virtusapp
//
//  Created by Rafael Mendes on 03/09/17.
//  Copyright © 2017 Rafael. All rights reserved.
//

import UIKit

class Job {
    let title: String
    let description: String
    let requirements: String
    
    init(title: String, description: String, requirements: String) {
        self.title = title
        self.description = description
        self.requirements = requirements
    }
    
    init(json: NSDictionary) {
        self.title = json.value(forKey: "title") as! String
        self.description = json.value(forKey: "description") as! String
        self.requirements =  json.value(forKey: "requirements") as! String
    }
    
    static func parse(json: Array<Any>) -> Array<Job> {
        var jobs = Array<Job>()
        for case let element as NSDictionary in json {
            let job = Job(json: element)
            jobs.append(job)
        }
        return jobs
    }
}
