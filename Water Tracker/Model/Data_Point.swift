//
//  Data_Point.swift
//  Water Tracker
//
//  Created by Eliot Pearson Jr on 12/8/24.
//

import Foundation

// each data point will store the amount of water (in liters) and the time that the amount was logged
// these data points will be used for data visualization
// num_liters should be user input
struct Data_Point: Identifiable, Hashable {
    // variables
    var id = UUID()
    var num_liters: String              // liters of water being logged
    var current_date = Date()           // a specific point in time
    var formatted_date: String          // string with formatted date for display
    
    //constants
    let date_formatter = DateFormatter()// will format date to string
    
        
    // handles retriving the timestamp from the date
    // will be in HH:mm format
    init(num_liters: String, current_date: Date = Date()) {
        self.num_liters = num_liters
        self.current_date = current_date
        
        // formatted date to display when water intake was logged
        // will display in month/day | hour:minute format
        date_formatter.dateFormat = "MM/dd    |    HH:mm"
        self.formatted_date = date_formatter.string(from: current_date)
        
    }
    
    static func example() -> Data_Point {
        Data_Point(num_liters: "1.2", current_date: Calendar.current.date(byAdding: .minute, value: 5, to: Date())!)
        
    }
    
    // dummy data to test data visualization
    // organized chronologically to make it easier to test charts
    static func examples() -> [Data_Point] {
        [
            Data_Point(num_liters: "1.3", current_date: Calendar.current.date(byAdding: .minute, value: 3, to: Date())!),
            Data_Point(num_liters: "1.0", current_date: Calendar.current.date(byAdding: .minute, value: 9, to: Date())!),
            Data_Point(num_liters: "2.2", current_date: Calendar.current.date(byAdding: .minute, value: 13, to: Date())!),
            Data_Point(num_liters: "1.7", current_date: Calendar.current.date(byAdding: .minute, value: 24, to: Date())!),
            Data_Point(num_liters: "3.1", current_date: Calendar.current.date(byAdding: .minute, value: 32, to: Date())!),
            Data_Point(num_liters: "2.2", current_date: Calendar.current.date(byAdding: .minute, value: 37, to: Date())!),
            Data_Point(num_liters: "2.6", current_date: Calendar.current.date(byAdding: .minute, value: 43, to: Date())!),
            Data_Point(num_liters: "1.0", current_date: Calendar.current.date(byAdding: .minute, value: 51, to: Date())!),
            Data_Point(num_liters: "0.4", current_date: Calendar.current.date(byAdding: .minute, value: 50, to: Date())!)
        ]
        
    }
    
}
