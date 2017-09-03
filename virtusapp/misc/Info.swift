//
//  Info.swift
//  virtusapp
//
//  Created by Rafael Mendes on 03/09/17.
//  Copyright © 2017 Rafael. All rights reserved.
//

import UIKit

class Info {
    let controller: UIViewController
    
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    func show(title: String = "Informação", message: String, handler: ((UIAlertAction) -> Void)? = nil) {
        let info = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: UIAlertControllerStyle.alert)
        
        let ok = UIAlertAction(title: "OK", style:
            UIAlertActionStyle.default, handler: handler)
        info.addAction(ok)
        
        controller.present(info, animated: true, completion: nil)
    }
    
}
