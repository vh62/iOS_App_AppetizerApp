//
//  ApError.swift
//  Appetizers
//
//  Created by Vikram Ho on 1/12/21.
//

import Foundation

enum APError: Error{
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
}
