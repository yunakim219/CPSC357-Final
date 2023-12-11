//
//  File.swift
//  finalproject
//
//  Created by Yuna Kim on 12/8/23.
//

import Foundation
import SwiftUI

struct Cafe : Codable, Identifiable {
    var id: String
    var name: String
    var location: String
    var address: String
    var raiting: String
    var imageName: String
    var saved: Bool
}

