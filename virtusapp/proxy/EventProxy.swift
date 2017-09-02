//
//  EventProxy.swift
//  virtusapp
//
//  Created by Rafael Mendes on 31/08/17.
//  Copyright © 2017 Rafael. All rights reserved.
//

import Foundation
import Alamofire

struct EventProxy {
    
    static func getEvents(_ callback: @escaping (Array<Any>, Bool) -> Void) {
        Alamofire.request(WSUrls.events).responseJSON { response in
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
