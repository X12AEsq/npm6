//
//  CauseView.swift
//  npm6
//
//  Created by Morris Albers on 4/10/21.
//

import SwiftUI

struct CauseView: View {
    
    @EnvironmentObject var contentModel: ContentModel

    var body: some View {
        
        VStack {
            Text("Current Cause")
                .bold()
                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                .padding(.bottom)
            CauseDetailView()
        Text(/*@START_MENU_TOKEN@*/"Options:"/*@END_MENU_TOKEN@*/)
  //           Button("Main Page", action: { contentModel.mainPage() } )
        }
        .environmentObject(ContentModel())
    }
}

struct CauseView_Previews: PreviewProvider {
    static var previews: some View {
        CauseView().environmentObject(ContentModel())

    }
}
