//
//  User.swift
//  Appetizers
//
//  Created by Vikram Ho on 1/14/21.
//

import Foundation

struct User: Codable{
     
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthdate       = Date()
    var extraNapkins    = false
    var extraUtensils   = false
    
}
