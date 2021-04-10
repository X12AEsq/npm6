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
        Text(/*@START_MENU_TOKEN@*/"Cause View"/*@END_MENU_TOKEN@*/)
 //           Button("Main Page", action: { contentModel.mainPage() } )
        }
    }
}

struct CauseView_Previews: PreviewProvider {
    static var previews: some View {
        CauseView()
    }
}
