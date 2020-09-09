//
//  WebRequest.swift
//  iOSArchitecturesDemo
//
//  Created by Даниил Мурыгин on 09.09.2020.
//  Copyright © 2020 ekireev. All rights reserved.
//

import Foundation
import Alamofire

struct WebRequest {
    var method: HTTPMethod
    var url: String
    var parameters: Parameters
}

extension WebRequest: CustomStringConvertible {
    
    var description: String {
        return "WebRequest: method \(method.rawValue), url: \(url), parameters: \(parameters)"
    }
}
