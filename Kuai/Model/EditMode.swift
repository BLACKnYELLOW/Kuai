//
//  EditMode.swift
//  Kuai
//
//  Created by Asher Polsky (student LM) on 3/9/23.
//

import Foundation
import SwiftUI

extension View {
    func editModeFix(_ editMode: Binding<EditMode>) -> some View {
        modifier(EditModeFixViewModifier(editMode: editMode))
    }
}

private struct EditModeFixView: View {
    @Environment(\.editMode)
    private var editModeEnvironment
    
    @Binding
    var editMode: EditMode
    
    var body: some View {
        Color.clear
            .onChange(of: editModeEnvironment?.wrappedValue) { editModeEnvironment in
                if let editModeEnvironment = editModeEnvironment {
                    editMode = editModeEnvironment
                }
            }
            .onChange(of: editMode) {
                editModeEnvironment?.wrappedValue = $0
            }
    }
}

private struct EditModeFixViewModifier: ViewModifier {
    @Binding
    var editMode: EditMode
    
    func body(content: Content) -> some View {
        content
            .overlay {
                EditModeFixView(editMode: $editMode)
            }
    }
}
