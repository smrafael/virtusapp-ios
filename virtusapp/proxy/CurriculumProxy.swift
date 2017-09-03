//
//  CurriculumProxy.swift
//  virtusapp
//
//  Created by Rafael Mendes on 03/09/17.
//  Copyright © 2017 Rafael. All rights reserved.
//

import Foundation
import Alamofire

struct CurriculumProxy {
    
    static func createCurriculum(curriculum: Curriculum, _ callback: @escaping (Bool) -> Void) {
        Alamofire.request(WSUrls.curriculum, method: .post, parameters: curriculum.toParameters(),
                          encoding: JSONEncoding.default).response { response in
                            
            if let error = response.error {
                print(error)
                callback(false)
            } else {
                callback(true)
            }
        }
        
    }
    
}
