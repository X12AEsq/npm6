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
            HStack{
                Text("ID:")
                Text(String(contentModel.currentCause.id))
            }
        Text(/*@START_MENU_TOKEN@*/"Cause View"/*@END_MENU_TOKEN@*/)
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
