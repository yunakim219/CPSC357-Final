//
//  CafeStore.swift
//  finalproject
//
//  Created by Yuna Kim on 12/8/23.
//

import Foundation
import SwiftUI
import Combine

class CafeStore : ObservableObject {
    
    @Published var cafes: [Cafe]
    @Published var searchText: String = ""
    @Published var suggestions = ["Irvine", "Orange", "Tustin", "Anaheim"]
    
    init (cafes: [Cafe] = []) {
        self.cafes = cafes
    }
    
    var filteredCafes: [Cafe] {
        guard !searchText.isEmpty else { return cafes }
//        return cafes.filter { cafe in
//            cafe.location.lowercased().contains(searchText.lowercased())
//        }
        let filtered = cafes.filter { cafe in
                return cafe.location.lowercased().contains(searchText.lowercased())
            }
        print("Filtered Cafes: \(filtered)")
        return filtered
    }
    
    var filteredSuggestions: [String] {
        guard !searchText.isEmpty else { return [] }
        return suggestions.sorted().filter { $0.lowercased().contains(searchText.lowercased()) }
    }
}
