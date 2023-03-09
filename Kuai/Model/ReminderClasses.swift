//
//  ReminderClasses.swift
//  Kuai
//
//  Created by Asher Polsky (student LM) on 3/8/23.
//

import Foundation



class DailyReminder: ObservableObject, Identifiable {
    @Published var name: String
    @Published var checked: Bool
    var id: UUID
    
    init(name: String = "Example", checked: Bool = false) {
        self.name = name
        self.checked = checked
        id = UUID()
    }
}

class DailyReminderList: ObservableObject, Identifiable {
    @Published var reminders : [DailyReminder]
    var id: UUID
    
    init() {
        id = UUID()
        self.reminders = []
        self.reminders += [DailyReminder(name: "Example"),DailyReminder(name: "Example2"),DailyReminder(name: "Example3")]
    }
}

class WeeklyReminder: ObservableObject {
    @Published var name: String
    @Published var day: Int
    
    init(name: String = "Example", day: Int = 0) {
        self.name = name
        self.day = day
    }
}

class WeeklyReminderList: ObservableObject {
    @Published var reminders : [WeeklyReminder]
    
    init() {
        self.reminders = []
        self.reminders += [WeeklyReminder(name: "Example")]
    }
}

class OnceReminder: ObservableObject {
    @Published var name: String
    @Published var day: Int
    @Published var month: Int
    @Published var year: Int
    
    init(name: String = "Example", day: Int = 1, month: Int = 1, year: Int = 2024) {
        self.name = name
        self.day = day
        self.month = month
        self.year = year
    }
}

class OnceReminderList: ObservableObject {
    @Published var reminders : [OnceReminder]
    
    init() {
        self.reminders = []
        self.reminders += [OnceReminder(name: "Example")]
    }
}
