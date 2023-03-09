//
//  MorningSetupAdd.swift
//  Kuai
//
//  Created by Asher Polsky (student LM) on 3/8/23.
//

import SwiftUI

struct MorningSetupAdd: View {
    @Binding var name: String
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct MorningSetupAdd_Previews: PreviewProvider {
    static var previews: some View {
        MorningSetupAdd(name: Binding.constant(""))
    }
}
