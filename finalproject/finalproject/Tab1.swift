//
//  Tab1.swift
//  finalproject
//
//  Created by Yuna Kim on 12/7/23.
//

import SwiftUI

struct Tab1: View {
//    @State private var searchText = ""

    @State private var cafeStore: CafeStore = CafeStore(cafes: cafeData)

    var body: some View {
        NavigationView {
            VStack{
                List {
                    Section(header: Text("Cafes in Orange")) {
                        ForEach (cafeStore.cafes.filter {$0.location == "Orange"}) { cafe in
                            ListCell(cafe: cafe)
                        }
                    }
                    
                    Section(header: Text("Cafes in Irvine")) {
                        ForEach (cafeStore.cafes.filter {$0.location == "Irvine"}) { cafe in
                            ListCell(cafe: cafe)
                        }
                    }
                    
                    Section(header: Text("Cafes in Tustin")) {
                        ForEach (cafeStore.cafes.filter {$0.location == "Tustin"}) { cafe in
                            ListCell(cafe: cafe)
                        }
                    }
                }
            }

        }
        
    }
    
}



#Preview {
    Tab1()
}
