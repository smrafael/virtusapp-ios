//
//  JobProxy.swift
//  virtusapp
//
//  Created by Rafael Mendes on 03/09/17.
//  Copyright © 2017 Rafael. All rights reserved.
//

import Foundation
import Alamofire

struct JobProxy {
    static func getJobs(_ callback: @escaping (Array<Any>, Bool) -> Void) {
        Alamofire.request(WSUrls.jobs).responseJSON { response in
            if (response.result.isSuccess) {
                if let json = response.result.value {
                    callback(json as! Array<Any>, true)
                }
            } else {
                callback(Array<Any>(), false)
            }
        }
    }
}
