//
//  WSUrls.swift
//  virtusapp
//
//  Created by Rafael Mendes on 31/08/17.
//  Copyright © 2017 Rafael. All rights reserved.
//

import Foundation

struct WSUrls {
    private static let baseUrl = "https://virtus-app-ws.herokuapp.com/ws"
    
    static let events = "\(baseUrl)/events"
    static let jobs = "\(baseUrl)/jobs"
}
