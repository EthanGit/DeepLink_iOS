//
//  ContentView.swift
//  DeepLink
//
//  Created by Ethan Lin on 2022/4/16.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var homeViewModel: HomeViewModel
    var body: some View {
        HomeView()
            .environmentObject(homeViewModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
