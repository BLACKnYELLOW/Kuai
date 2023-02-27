//
//  ContentView.swift
//  Kuai
//
//  Created by Asher Polsky (student LM) on 2/22/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Text("Home")
                }
            WeatherView()
                .tabItem {
                    Text("Weather")
                }
            ConfigView()
                .tabItem {
                    Text("Configure")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
