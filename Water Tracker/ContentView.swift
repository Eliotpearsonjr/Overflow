//
//  ContentView.swift
//  Water Tracker
//
//  Created by Eliot Pearson Jr on 12/8/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: Menu_Section? = Menu_Section.todays_log
    
    // test variable
    @State private var all_data_points = Data_Point.examples()
    
    
    var body: some View {
        NavigationSplitView {
            Sidebar_View(selection: $selection)
            
        } detail: {
            switch selection {
            case .todays_log:
                Data_Point_List_View(title: "Today's Log", data_points: $all_data_points)
            case .aqua_graph:
                Text("This is the aqua graph page")
                Text("There will be a weekly graph and a monthly graph dispalyed here")
            case .records:
                Text("This is the records page")
            case nil:
                Text("none")
            }
        }
    }
}

#Preview {
    ContentView()
}


//VStack {
//    Image(systemName: "globe")
//        .imageScale(.large)
//        .foregroundStyle(.tint)
//    Text("Hello, world!")
//}
//.padding()
