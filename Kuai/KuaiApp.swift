//
//  KuaiApp.swift
//  Kuai
//
//  Created by Asher Polsky (student LM) on 2/22/23.
//

import SwiftUI

@main
struct KuaiApp: App {
    @StateObject var dailyReminders: DailyReminderList = DailyReminderList()
    @StateObject var weeklyReminders: WeeklyReminderList = WeeklyReminderList()
    @StateObject var onceReminders: OnceReminderList = OnceReminderList()
    @StateObject var info: BasicInfo = BasicInfo(view: .tab)
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(dailyReminders)
                .environmentObject(weeklyReminders)
                .environmentObject(onceReminders)
                .environmentObject(info)
        }
    }
}
