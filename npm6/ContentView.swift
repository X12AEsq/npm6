//
//  ContentView.swift
//  npm6
//
//  Created by Morris Albers on 4/8/21.
//

import SwiftUI
import Firebase

struct ContentView: View {
    var body: some View {
        
        TabView {
            SummaryPageView()
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("Summary")
                }
            Text("Another Tab")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Second")
                }
            Text("The Last Tab")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Third")
                }
        }
        .font(.headline)    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
