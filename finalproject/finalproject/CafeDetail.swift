//
//  CafeDetail.swift
//  finalproject
//
//  Created by Yuna Kim on 12/8/23.
//

import Foundation
import SwiftUI

struct CafeDetail: View {
    @State var selectedCafe: Cafe
    var body: some View{
        Form {
            Section (header: Text("Cafe Details")) {
                Image (selectedCafe.imageName)
                    .resizable()
                    .cornerRadius(12.0)
                    .aspectRatio(contentMode: .fit)
                    .padding()
                
                Text(selectedCafe.name)
                    .font(.headline)

                LabeledContent("raiting", value: selectedCafe.raiting).font(.subheadline)
                
//                Text(selectedCafe.location)
//                    .font(.subheadline)
                
                Text(selectedCafe.address)
                    .font(.subheadline)
                
                HStack {
                    Text("Saved").font(.subheadline)
                    Spacer()
                    Button {
                        selectedCafe.toggleSaved()
                    } label: {
                        Image(systemName: selectedCafe.saved ? "bookmark.fill" : "bookmark").foregroundColor(.black)
                    }
                }
            }
        }
    }
}

extension Cafe {
    mutating func toggleSaved() {
        saved.toggle()
    }
}

struct CafeDetail_Previews: PreviewProvider {
    static var previews: some View {
        CafeDetail(selectedCafe: cafeData[0])
    }
}



