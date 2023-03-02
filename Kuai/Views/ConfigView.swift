//
//  ConfigView.swift
//  Kuai
//
//  Created by Asher Polsky (student LM) on 2/27/23.
//

import SwiftUI

struct ConfigView: View {
    @State var showNotes: Bool = false
    @State var showCalendar: Bool = false
    @State var showWeekly: Bool = false
    var body: some View {
        VStack {
            Button {
                showWeekly = true
                showNotes = false
                showCalendar = false
            } label: {
                ZStack {
                    Rectangle()
                        .foregroundColor(.red)
                        .cornerRadius(10)
                    Text("Weekly Setup")
                }
            }
            Button {
                showWeekly = false
                showNotes = true
                showCalendar = false
            } label: {
                ZStack {
                    Rectangle()
                        .foregroundColor(.red)
                        .cornerRadius(10)
                    Text("Morning Setup")
                }
            }
            Button {
                showWeekly = false
                showNotes = false
                showCalendar = true
            } label: {
                ZStack {
                    Rectangle()
                        .foregroundColor(.red)
                        .cornerRadius(10)
                    Text("Calender Setup")
                }
            }
        }.sheet(isPresented: $showWeekly) {
            WeeklyView()
        }.sheet(isPresented: $showNotes) {
            NotesView()
        }.sheet(isPresented: $showCalendar) {
            CalendarView()
        }
    }
}
struct ConfigView_Previews: PreviewProvider {
    static var previews: some View {
        ConfigView()
    }
}
