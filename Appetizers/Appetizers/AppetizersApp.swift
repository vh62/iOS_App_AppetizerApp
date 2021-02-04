//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Vikram Ho on 1/12/21.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
