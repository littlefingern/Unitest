//
//  ViewController.swift
//  Unitest iOS
//
//  Created by Nipa Chamyuang on 18/10/2563 BE.
//

import Foundation
import UIKit

enum RegEx: String {
    case username = "[^A-Za-z0-9 ]"
}

class Validation {
    
    public static let shared = Validation()
    
    func replaceOccurencesOf(_ string: String, with regex: RegEx) -> String {
        return string.replacingOccurrences(of: regex.rawValue,
                                           with: "",
                                           options: .regularExpression)
    }
    
}


