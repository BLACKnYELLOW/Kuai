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
            ConfigView()
                .tabItem {
                    Image(systemName: "alarm")
                    Text("Reminders")
                }
            WeatherView()
                .tabItem {
                    Image(systemName: "cloud.sun")
                    Text("Weather")
                }
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            AlarmView()
                .tabItem {
                    Image(systemName: "alarm")
                    Text("Alarm")
                }
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
        
        Spacer()
        Spacer()
        
//        CustomTabBar()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
