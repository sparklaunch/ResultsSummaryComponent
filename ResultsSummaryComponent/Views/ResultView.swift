//
//  ResultView.swift
//  ResultsSummaryComponent
//
//  Created by Jinwook Kim on 2023/04/01.
//

import SwiftUI

struct ResultView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color("ResultTopColor"), Color("ResultBottomColor")], startPoint: .top, endPoint: .bottom)
                .cornerRadius(30)
            VStack(spacing: 20) {
                Text("Your Result")
                    .font(.title.bold())
                    .foregroundColor(Color("TextColor"))
                ScoreView()
                Text("Great")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)
                Text("You scored higher than 65% of the people who have taken these tests.")
                    .multilineTextAlignment(.center)
                    .font(.headline.bold())
                    .fixedSize(horizontal: false, vertical: true)
                    .foregroundColor(Color("TextColor"))
                    .padding(.horizontal)
            }
            .padding()
            .padding(.vertical, 50)
        }
        .scaledToFit()
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
            .previewLayout(.sizeThatFits)
    }
}
