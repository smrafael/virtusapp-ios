//
//  NewsViewController.swift
//  virtusapp
//
//  Created by Rafael Mendes on 30/08/17.
//  Copyright © 2017 Rafael. All rights reserved.
//

import UIKit
import Alamofire

class NewsViewController : UIViewController {
    
    override func viewDidLoad() {
        EventProxy.getEvents()
    }
    
}
