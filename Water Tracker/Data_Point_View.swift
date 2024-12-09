//
//  Data_Point_View.swift
//  Water Tracker
//
//  Created by Eliot Pearson Jr on 12/8/24.
//

import SwiftUI

struct Data_Point_View: View {
    
    @Binding var data_point: Data_Point
    @Binding var selected_data_point: Data_Point?
        
    
    var body: some View {
        HStack {
            TextField("Water Entry", text: $data_point.num_liters)
                .textFieldStyle(.plain)
                .frame(width: 35, height: 45)
                
            Text(" L            ")      // liter suffix
            TextField("Time logged", text: $data_point.formatted_date)
                .textFieldStyle(.plain)
                .frame(width: 150, height: 45)
            
        }
    }
}

#Preview {
    Data_Point_View(data_point: .constant(Data_Point.example()), selected_data_point: .constant(nil))
        .padding()
}
