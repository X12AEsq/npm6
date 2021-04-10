//
//  CauseDetailView.swift
//  npm6
//
//  Created by Morris Albers on 4/10/21.
//

import SwiftUI

struct CauseDetailView: View {
    
    @EnvironmentObject var contentModel: ContentModel

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("ID:")
                Text(String(contentModel.currentCause.id))
                Text("Cause:")
                Text(contentModel.currentCause.causeID)
                Text("Court:")
                Text(contentModel.currentCause.court)
                Text("Level:")
                Text(contentModel.currentCause.level)
            }
            HStack {
                Text("Charge:")
                Text(contentModel.currentCause.charge)
            }
            HStack {
                Text("Note:")
                Text(contentModel.currentCause.note)
            }
        }
        .padding(.all)
        .border(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
        .environmentObject(ContentModel())
    }
}

struct CauseDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CauseDetailView().environmentObject(ContentModel())
    }
}
