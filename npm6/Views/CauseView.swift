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
                Button(action: {
                    actionOption = 1
                })
                {
                    Text("New Cause").font(.body)
                }
                .foregroundColor(.white)
                .padding(.all, 5.0)
                .background(Color.blue)
                .cornerRadius(16)
                Button(action: {
                    actionOption = 2
                })
                {
                    Text("Edit Cause").font(.body)
                }
                .foregroundColor(.white)
                .padding(.all, 5.0)
                .background(Color.blue)
                .cornerRadius(16)
            }
            if (actionOption == 1) {
                NavigationView {
                    Form {
                        TextField("Internal ID", text: $internalid)
                        TextField("Cause Number", text: $causeID)
                        Picker(selection: $court, label: Text("Court")) {
                            Text("CC").tag("CC")
                            Text("155th").tag("155th")
                        }
                        Picker(selection: $level, label: Text("Offense Level")) {
                            Text("Misdemeanor B").tag("M-B")
                            Text("Misdemeanor A").tag("M-A")
                            Text("State Jail Felony").tag("F-S")
                            Text("Felony 3").tag("F-3")
                            Text("Felony 2").tag("F-2")
                            Text("Felony 1").tag("F-1")
                        }
                        TextField("Charge", text: $charge)
                        TextField("Note", text: $note)
                        HStack {
                            Spacer()
                            Button(action: {
                                actionOption = 1
                            })
                            {
                                Text("Save").font(.body)
                            }
                            .foregroundColor(.white)
                            .padding(.all, 5.0)
                            .background(Color.blue)
                            .cornerRadius(16)
                            Spacer()
                            Button(action: {
                                actionOption = 2
                            })
                            {
                                Text("Quit").font(.body)
                            }
                            .foregroundColor(.white)
                            .padding(.all, 5.0)
                            .background(Color.blue)
                            .cornerRadius(16)
                            Spacer()
                        }
                    }
                }
                .navigationBarTitle("Whatever")
            } else if (actionOption == 2) {
                Text("action option is 2")
            }
        }
        .environmentObject(ContentModel())
    }
}

struct CauseView_Previews: PreviewProvider {
    static var previews: some View {
        CauseView().environmentObject(ContentModel())

    }
}
