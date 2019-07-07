//
//  Userdefaults+katie.swift
//  RileyLink
//
//  Created by Bjørn Inge Berg on 07/07/2019.
//  Copyright © 2019 Pete Schwamb. All rights reserved.
//

import Foundation

// PRIVATE MODIFICATIONS
extension UserDefaults {
    
    // Avoid polluting the original Key above.
    fileprivate enum PrivateKey: String {
        case applyX15Workaround = "no.bjorninge.applyX15Workaround"
    }
    
    public func optionalBool(forKey defaultName: String) -> Bool? {
        
        if let value = value(forKey: defaultName) {
            return value as? Bool
        }
        return nil
    }
    
    var shouldApplyX15Workaround : Bool {
        get {
            return optionalBool(forKey: PrivateKey.applyX15Workaround.rawValue) ?? false
        }
        set {
            set(newValue, forKey: PrivateKey.applyX15Workaround.rawValue)
        }
    }
    
  
    
}
