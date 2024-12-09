//
//  Menu_Section.swift
//  Water Tracker
//
//  Created by Eliot Pearson Jr on 12/8/24.
//

import Foundation

// this will serve as the data for the sidebar menu
// there are three different menu options
// todays log: tracks water intake of the current day
// aqua graph: displays a graph of the data gathered throughout the week
// records: displays record highs and lows of water intake throught the users' history
enum Menu_Section: Identifiable, CaseIterable, Hashable {
    
    case todays_log
    case aqua_graph
    case records
    
    var id: String {
        switch self {
            case .todays_log:
                "Todays log"
            case .aqua_graph:
                "Aqua Graph"
            case .records:
                "Records"
                
        }
    }
    
    var display_name: String {
        switch self {
            case .todays_log:
                "Todays log"
            case .aqua_graph:
                "Aqua Graph"
            case .records:
                "Records"
               
        }
    }
    
    var icon_name: String {
        switch self {
            case .todays_log:
                "drop"
            case .aqua_graph:
                "humidity"
            case .records:
                "tray.2"
               
        }
    }
    
    static var all_case: [Menu_Section] {
        [.todays_log, .aqua_graph, .records]
        
    }
    
    static func == (lhs: Menu_Section, rhs: Menu_Section) -> Bool {
        lhs.id == rhs.id
        
    }
}
