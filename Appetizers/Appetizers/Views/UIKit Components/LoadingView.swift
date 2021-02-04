//
//  LoadingView.swift
//  Appetizers
//
//  Created by Vikram Ho on 1/12/21.
//

import SwiftUI


struct ActivitiyIndicator: UIViewRepresentable{
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.color = UIColor.brandPrimary
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        
    }
    
}


struct LoadingView: View{
    var body: some View{
        ZStack{
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            
            ActivitiyIndicator()
        }
    }
}
