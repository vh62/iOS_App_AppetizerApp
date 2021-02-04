//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Vikram Ho on 1/12/21.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject{
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertitem: AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetail = false
    @Published var selectedAppetizer: Appetizer?
    
    func getAppetizers(){
        isLoading = true
        NetworkManager.shared.getAppetizers{ [self] result in
            DispatchQueue.main.async {
                isLoading = false
                switch result{
                case .success(let appetizers):
                    self.appetizers = appetizers
                    
                case .failure(let error):
                    switch error{
                    case .invalidData:
                    alertitem = AlertContext.invalidData
                    case .invalidURL:
                        alertitem = AlertContext.invalidURL
                    case .invalidResponse:
                        alertitem = AlertContext.invalidResponse
                    case .unableToComplete:
                        alertitem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}
