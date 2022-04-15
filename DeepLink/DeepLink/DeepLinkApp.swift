//
//  DeepLinkApp.swift
//  DeepLink
//
//  Created by Ethan Lin on 2022/4/16.
//

import SwiftUI

@main
struct DeepLinkApp: App {
    
    @StateObject var homeViewModel: HomeViewModel = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(homeViewModel)
                .onOpenURL { url in
                    if homeViewModel.checkDeepLink(url: url) {
                        print("From Deep Link")
                    } else {
                        print("Fail back Deep Link")
                    }
                }
        }
    }
    
}

// deeplinkapp://home search settings
