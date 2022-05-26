//
//  ContentView.swift
//  Restart
//
//  Created by Mariana Steblii on 26/05/2022.
//

import SwiftUI

struct ContentView: View {
    /// AppStorage - property wrapper that will use the users defauls. The pirpose is to store a value on the device´s permanent storage
    /// "onboarding" - user defaults key
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
              OnboardingView()
            } else {
              HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}
