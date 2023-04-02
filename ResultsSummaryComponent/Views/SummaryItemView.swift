//
//  SummaryItemView.swift
//  ResultsSummaryComponent
//
//  Created by Jinwook Kim on 2023/04/01.
//

import SwiftUI

struct SummaryItemView: View {
    let type: SummaryType
    let score: Int
    var backgroundColor: Color {
        Color("\(type.rawValue)BackgroundColor")
    }
    var textColor: Color {
        Color("\(type.rawValue)TextColor")
    }
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(backgroundColor)
            HStack {
                HStack {
                    Image(decorative: type.rawValue)
                    Text(type.rawValue)
                        .fontWeight(.bold)
                        .foregroundColor(textColor)
                }
                Spacer()
                HStack {
                    Text(score, format: .number)
                        .fontWeight(.bold)
                    Text("/")
                        .fontWeight(.bold)
                        .foregroundColor(.secondary)
                    Text("100")
                        .fontWeight(.bold)
                        .foregroundColor(.secondary)
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 8)
        }
        .scaledToFill()
    }
}

struct SummaryItemView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryItemView(type: .reaction, score: 80)
    }
}
