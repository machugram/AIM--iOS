//
//  NextClassView.swift
//  AIM -iOS
//
//  Created by Rexford Machu on 6/22/22.
//

import SwiftUI
var screen = UIScreen.main.bounds
struct NextClassView: View {
    var body: some View {
        ZStack{
            Color.gray
            VStack{
                Text("Your next class will appear here")
            }
        }
        .frame(width: screen.width*0.9, height: screen.height*0.2)
        .cornerRadius(30)

    }
}

struct NextClassView_Previews: PreviewProvider {
    static var previews: some View {
        NextClassView()
    }
}
