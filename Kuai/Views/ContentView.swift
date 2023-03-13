//
//  ContentView.swift
//  Kuai
//
//  Created by Asher Polsky (student LM) on 2/22/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var info: BasicInfo
    var body: some View {
        if info.view == .tab {
            TabView {
                WeatherView()
                    .tabItem {
                        Image(systemName: "cloud.sun")
                        Text("Weather")
                    }
                ConfigView()
                    .tabItem {
                        Image(systemName: "alarm")
                        Text("Reminders")
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
        } else if info.view == .morningSetup {
            MorningSetupView()
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
