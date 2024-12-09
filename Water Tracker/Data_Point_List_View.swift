//
//  Data_Point_List_View.swift
//  Water Tracker
//
//  Created by Eliot Pearson Jr on 12/8/24.
//

import SwiftUI

struct Data_Point_List_View: View {
    
    let title: String
    @Binding var data_points: [Data_Point]
    @State private var selected_data_point: Data_Point? = nil
    
    // lists all water intake data entries vertically
    var body: some View {
        List($data_points) { $data_point in
            Data_Point_View(data_point: $data_point, selected_data_point: $selected_data_point)
        }
        .navigationTitle("Today's Log")
        
        // tool bar for commands to modify list
        // features plus button to add more water intake data
        .toolbar {
            ToolbarItemGroup {
                // Water Intake Button
                Button {
                    data_points.append(Data_Point(num_liters: "0.0"))
                } label: {
                    Label("Add water intake", systemImage: "plus")
                }
                
                // Help Button
                Button {
                    // put pop up functionality here
                } label: {
                    Label("Need help on what to do?", systemImage: "questionmark.circle")
                }
            }
            
        }
        
    }
}

#Preview {
    Data_Point_List_View(title: "Today's Log", data_points: .constant(Data_Point.examples()))
        .padding()
}
