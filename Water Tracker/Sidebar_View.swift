//
//  Sidebar_View.swift
//  Water Tracker
//
//  Created by Eliot Pearson Jr on 12/8/24.
//

import SwiftUI

struct Sidebar_View: View {
    @Binding var selection: Menu_Section?
    
    var body: some View {
        List(selection: $selection) {
            Section("Menu") {
                ForEach(Menu_Section.allCases) { selection in
                    Label(selection.display_name, systemImage: selection.icon_name)
                        .tag(selection)
                }
            }
        }
    }
}

#Preview {
    Sidebar_View(selection: .constant(.todays_log))
        .listStyle(.sidebar)
}
