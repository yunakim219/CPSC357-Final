//
//  Tab2.swift
//  finalproject
//
//  Created by Yuna Kim on 12/7/23.
//

import SwiftUI

struct Tab2: View {
    @State private var cafeStore: CafeStore = CafeStore(cafes: cafeData)

    var body: some View {
        NavigationView {
            List {
                ForEach (cafeStore.cafes) { cafe in
                    ListCell(cafe: cafe)
                }
            }.navigationTitle("Trending Now")
        }
        
    }
}

struct ListCell: View {
    var cafe: Cafe
    var body: some View {
        NavigationLink(destination: CafeDetail(selectedCafe: cafe)) {
            HStack {
                Image(cafe.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 60)
                Text(cafe.name)
            }
        }
    }
}

#Preview {
    Tab2()
}
