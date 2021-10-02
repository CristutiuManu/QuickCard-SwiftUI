//
//  ContentView.swift
//  QuickCard
//
//  Created by Cristuțiu Emanuel on 02.10.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    ForEach(User.users) { user in
                        NavigationLink(destination: VisitorInfoView(user: user)) {
                            CardView(user: user)
                                .padding(.vertical)
                        }
                    }
                }
            }.navigationBarTitle("Quick Card")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

