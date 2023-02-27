//
//  ConfigView.swift
//  Kuai
//
//  Created by Asher Polsky (student LM) on 2/27/23.
//

import SwiftUI

struct ConfigView: View {
    @State var showAlarm: Bool = false
    @State var showNotes: Bool = false
    @State var showCalendar: Bool = false
    @State var showSettings: Bool = false
    var body: some View {
        VStack {
            Button {
                showAlarm = true
                showNotes = false
                showCalendar = false
                showSettings = false
            } label: {
                ZStack {
                    Rectangle()
                        .foregroundColor(.red)
                        .cornerRadius(10)
                    Text("Alarm Setup")
                }
            }
            Button {
                showAlarm = false
                showNotes = true
                showCalendar = false
                showSettings = false
            } label: {
                ZStack {
                    Rectangle()
                        .foregroundColor(.red)
                        .cornerRadius(10)
                    Text("Notes Setup")
                }
            }
            Button {
                showAlarm = false
                showNotes = false
                showCalendar = true
                showSettings = false
            } label: {
                ZStack {
                    Rectangle()
                        .foregroundColor(.red)
                        .cornerRadius(10)
                    Text("Calender Setup")
                }
            }
            Button {
                showAlarm = false
                showNotes = false
                showCalendar = false
                showSettings = true
            } label: {
                ZStack {
                    Rectangle()
                        .foregroundColor(.red)
                        .cornerRadius(10)
                    Text("Settings")
                }
            }
        }.sheet(isPresented: $showAlarm) {
            AlarmView()
        }.sheet(isPresented: $showNotes) {
            NotesView()
        }.sheet(isPresented: $showCalendar) {
            CalendarView()
        }.sheet(isPresented: $showSettings) {
            SettingsView()
        }
    }
}

struct ConfigView_Previews: PreviewProvider {
    static var previews: some View {
        ConfigView()
    }
}
