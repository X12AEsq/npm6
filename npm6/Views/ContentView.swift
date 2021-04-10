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
            Text("Appearance")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Appearance")
                }
            Text("Representation")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Representation")
                }
            Text("Client")
                .tabItem {
                    Image(systemName: "4.square.fill")
                    Text("Client")
                }
            CauseView()
                .tabItem {
                    Image(systemName: "5.square.fill")
                    Text("Cause")
                }
        }
        .font(.headline)
        .environmentObject(ContentModel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
