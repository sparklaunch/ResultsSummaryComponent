//
//  ScoreView.swift
//  ResultsSummaryComponent
//
//  Created by Jinwook Kim on 2023/04/01.
//

import SwiftUI

struct ScoreView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(LinearGradient(colors: [Color("ScoreTopColor"), Color("ScoreBottomColor")], startPoint: .top, endPoint: .bottom))
                .frame(width: 200, height: 200)
            VStack {
                Text("76")
                    .font(.system(size: 80).bold())
                    .foregroundColor(.white)
                Text("of 100")
                    .font(.title.bold())
                    .foregroundColor(Color("TextColor"))
            }
        }
        .shadow(radius: 3)
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView()
            .previewLayout(.sizeThatFits)
    }
}
