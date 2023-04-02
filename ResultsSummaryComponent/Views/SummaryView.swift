//
//  SummaryView.swift
//  ResultsSummaryComponent
//
//  Created by Jinwook Kim on 2023/04/01.
//

import SwiftUI

struct SummaryView: View {
    @StateObject private var summary = Summary()
    var body: some View {
        VStack {
            HStack {
                Text("Summary")
                    .font(.headline.bold())
                Spacer()
            }
            .padding(.vertical)
            VStack(spacing: 15) {
                SummaryItemView(type: .reaction, score: summary.scores[.reaction, default: 0])
                SummaryItemView(type: .memory, score: summary.scores[.memory, default: 0])
                SummaryItemView(type: .verbal, score: summary.scores[.verbal, default: 0])
                SummaryItemView(type: .visual, score: summary.scores[.visual, default: 0])
            }
            Button {

            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: .infinity)
                        .fill(Color("ButtonColor"))
                    Text("Continue")
                        .foregroundColor(.white)
                        .font(.title2.bold())
                        .padding()
                }
                .padding(.vertical)
            }
        }
        .padding()
    }
}

struct SummaryView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryView()
    }
}
