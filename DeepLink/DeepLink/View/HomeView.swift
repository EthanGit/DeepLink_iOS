//
//  HomeView.swift
//  DeepLink
//
//  Created by Ethan Lin on 2022/4/16.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var homeViewModel: HomeViewModel

    init() {
        UITabBar.appearance().backgroundColor = UIColor.gray
    }
    
    var body: some View {
        
        TabView(selection: $homeViewModel.currentTab) {
            
            Color.gray
                .tag(Tab.home)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            SearchView()
                .environmentObject(homeViewModel)
                .tag(Tab.search)
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            
            Color.brown
                .tag(Tab.settings)
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("Settings")
                }
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct SearchView: View {
    @EnvironmentObject var homeViewModel: HomeViewModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(coffees) { coffee in
                    
                    // Setting tag and selection
                    // that naviation link will be called...
                    NavigationLink(tag: coffee.id, selection: $homeViewModel.currentDetailPage) {
                        DetailView(coffee: coffee)
                    } label: {
                        HStack(spacing: 15) {
                            Image(coffee.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .cornerRadius(15)
                            
                            VStack(alignment: .leading, spacing: 10) {
                                
                                Text(coffee.title)
                                    .font(.body.bold())
                                    .foregroundColor(.primary)
                                
                                Text(coffee.price)
                                    .font(.callout)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                }
            }
            .navigationTitle("菜單")
        }
    }
    
    // Detail View...
    @ViewBuilder
    func DetailView(coffee: Coffee) -> some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                Image(coffee.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width, height: 200)
                    .cornerRadius(1)
                
                VStack(alignment: .leading, spacing: 12) {
                    Text(coffee.title)
                        .font(.title.bold())
                        .foregroundColor(.primary)
                    
                    Text(coffee.price)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    
                    Text(coffee.description)
                        .multilineTextAlignment(.leading)
                }
                .padding()
            }
        }
        .navigationTitle(coffee.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}
