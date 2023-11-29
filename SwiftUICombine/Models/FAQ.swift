//
//  FAQ.swift
//  SwiftUICombine
//
//  Created by Igor Palyvoda on 29.11.2023.
//

import Foundation

struct FAQ: Identifiable, Decodable {
    var id: Int
    var question: String
    var answer: String
}
