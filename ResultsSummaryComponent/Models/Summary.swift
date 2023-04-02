//
//  Summary.swift
//  ResultsSummaryComponent
//
//  Created by Jinwook Kim on 2023/04/01.
//

import SwiftUI

struct Score: Codable {
    let category: String
    let score: Int
}

class Summary: ObservableObject {
    @Published var scores: [SummaryType: Int] = [
        .reaction: 0,
        .memory: 0,
        .verbal: 0,
        .visual: 0
    ]
    init() {
        if let url = Bundle.main.url(forResource: "data", withExtension: "json") {
            if let data = try? Data(contentsOf: url) {
                let decoder = JSONDecoder()
                if let decodedData = try? decoder.decode([Score].self, from: data) {
                    for score in decodedData {
                        let scoreType = SummaryType(rawValue: score.category) ?? .reaction
                        scores.updateValue(score.score, forKey: scoreType)
                    }
                }
            }
        }
    }
}
