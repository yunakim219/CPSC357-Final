//
//  Tab3.swift
//  finalproject
//
//  Created by Yuna Kim on 12/7/23.
//

import SwiftUI

struct Tab3: View {
    let profileLinkNames: [String] = ["Saved Places"]
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                Text("Email: yunakim@chapmen.edu")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                Text("Location: California")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()

                ForEach(profileLinkNames, id: \.self) { profileLinkName in
                    ProfileLink(profileLinkName: profileLinkName)
                }
                Spacer()
            }
            .navigationBarTitle("Yuna Kim")
        }
    }
}


struct ProfileLink: View {
    let profileLinkName: String

    var body: some View {
        NavigationLink(destination: SavedPlacesViewModel){
            VStack(spacing: 0) {
                HStack{
                    Text(profileLinkName)
                        .font(.body)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color(.systemGray3))
                        .font(.system(size: 20))
                }
                .contentShape(Rectangle())
                .padding(EdgeInsets(top: 17, leading: 21, bottom: 17, trailing: 21))
                Divider()
            }
        }
        .buttonStyle(PlainButtonStyle())

    }
    
    private var SavedPlacesViewModel: some View {
        var cafeStore: CafeStore = CafeStore(cafes: cafeData)
        return List {
            ForEach (cafeStore.cafes.filter {$0.saved}) { cafe in
                ListCell(cafe: cafe)
            }
        }
    }
}



#Preview {
    Tab3()
}

// ADD SAVED PLACES PAGE
