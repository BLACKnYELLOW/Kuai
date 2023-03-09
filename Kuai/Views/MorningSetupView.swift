//
//  MorningSetupView.swift
//  Kuai
//
//  Created by Asher Polsky (student LM) on 3/8/23.
//

import SwiftUI

struct MorningSetupView: View {
    @EnvironmentObject var info: BasicInfo
    @EnvironmentObject var dailyReminders: DailyReminderList
    @State var editMode: EditMode = .inactive
    @State var showSheet: Bool = false
    @State var index: Int = 0
    var body: some View {
        VStack {
            HStack {
                Button {
                    info.view = .tab
                } label: {
                    Text("<< Back")
                }
                Spacer()
            }
                NavigationView {
                    List {
                        ForEach(Array(zip(dailyReminders.reminders.indices, dailyReminders.reminders)), id: \.0) { index, reminder in
                            
                            if editMode.isEditing == true {
                                TextField("New Reminder", text: $dailyReminders.reminders[index].name)
                            } else {
                                Text(reminder.name)
                            }
                        }
                        .onMove(perform: move)
                        .onDelete(perform: delete)
                    }
                    .editModeFix($editMode)
                    .navigationBarTitle("Reminders")
                    .toolbar {
                        ToolbarItemGroup() {
                            if editMode.isEditing == true {
                                Button("Add") {
                                    dailyReminders.reminders += [DailyReminder(name: "")]
                                }
                                Spacer()
                            }
                            EditButton()
                        }
                    }
                }
        }.sheet(isPresented: $showSheet) {
            TextField("Title", text: $dailyReminders.reminders[index].name)
        }
    }
    
    func move(from source: IndexSet, to destination: Int) {
        dailyReminders.reminders.move(fromOffsets: source, toOffset: destination)
    }
    func delete(from source: IndexSet) {
        dailyReminders.reminders.remove(atOffsets: source)
    }
}

struct MorningSetupView_Previews: PreviewProvider {
    static var previews: some View {
        MorningSetupView()
    }
}
