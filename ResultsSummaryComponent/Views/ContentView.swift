//
//  ContentView.swift
//  ResultsSummaryComponent
//
//  Created by Jinwook Kim on 2023/04/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                ResultView()
                SummaryView()
            }
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
