//
//  CauseView.swift
//  npm6
//
//  Created by Morris Albers on 4/10/21.
//

import SwiftUI

struct CauseView: View {
    
    @State var actionOption = 0
    @State var internalid = ""
    @State var causeID = ""
    @State var court = ""
    @State var level = ""
    @State var charge = ""
    @State var note = ""

    @EnvironmentObject var contentModel: ContentModel

    var body: some View {
        
        VStack {
            Text("Current Cause")
                .bold()
                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                .padding(.bottom)
            CauseDetailView()
            
            Text(/*@START_MENU_TOKEN@*/"Options:"/*@END_MENU_TOKEN@*/)
                .padding(.vertical)
            HStack {
                Button("New Cause", action: {
                    actionOption = 1
                })
                Button("Edit Cause", action: {
                    
                })
            }
            if (actionOption == 1) {
                NavigationView {
                    Form {
                        TextField("Internal ID", text: $internalid)
                        TextField("Cause Number", text: $causeID)
                        TextField("Court (CC or 155th)", text: $court)
//                        Toggle(isOn: $receivewhatever) { Text("Whatever") }
//                        Stepper(value: $numberstuff, in: 1...10 {
//                            Text("\(numberstuff) Notification\(numberstuff > 1 ? "s" : "") per week") // pretty cool
//                        })
//                        Picker(selection: $selectionvariable, label: Text("Whatever")) {
//                            Text("1").tag(1)
//                            Text("2").tag(2)
//                        }
//                        DatePicker($datevariable) { Text("date") }
//                        TextField()
//                        .textFieldStyle(.roundedBorder)
                    }
                }
                .navigationBarTitle("Whatever")            } else if (actionOption == 2) {
                Text("action option is 2")
            }
  //           Button("Main Page", action: {
            
//            HStack(alignment: .center) {
//                Text("Username:")
//                    .font(.callout)
//                    .bold()
//                TextField("Enter username...", text: $username)
//                    .textFieldStyle(RoundedBorderTextFieldStyle())
//            }.padding()contentModel.mainPage() } )
        }
        .environmentObject(ContentModel())
    }
}

struct CauseView_Previews: PreviewProvider {
    static var previews: some View {
        CauseView().environmentObject(ContentModel())

    }
}
