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
                    Text("Reminders")
                }
            WeatherView()
                .tabItem {
                    Text("Weather")
                }
            HomeView()
                .tabItem {
                    Text("Home")
                }
            AlarmView()
                .tabItem {
                    Text("Alarm")
                }
            SettingsView()
                .tabItem {
                    Text("Settings")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
