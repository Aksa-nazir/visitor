//
//  visitorApp.swift
//  visitor
//
//  Created by aksa nazir on 02/02/21.
//

import SwiftUI

@main
struct visitorApp: App {
    @StateObject var locations = Locations()
    var body: some Scene {
        WindowGroup {
            TabView {
            NavigationView{
                ContentView(location: locations.primary)
            }
            .tabItem {
                Image(systemName: "airplane.circle.fill")
                Text("discover")
            }
                NavigationView{
                    worldview()
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
                }
            NavigationView{
                TipsView()
            }
            .tabItem {
                Image(systemName: "list.bullet")
                Text("Tips")
            }
            .environmentObject(locations)
            }
        }
    }



