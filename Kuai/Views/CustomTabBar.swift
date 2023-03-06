//
//  CustomTabBar.swift
//  Kuai
//
//  Created by Michael Liu (student LM) on 3/6/23.
//

import SwiftUI

struct CustomTabBar: View {
    
    @State var x = 0
    
    var body: some View {
        HStack {
            Button {
                x += 1
            } label: {
                VStack {
                    Image(systemName: "alarm")
                    Text("Alarm")
                }
            }
            
            
            
            
            
            
            
            
            
            
        }
        .frame(height: 82)
        
        
        
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar()
    }
}
