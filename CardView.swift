//
//  CardView.swift
//  AIM -iOS
//
//  Created by Rexford Machu on 6/22/22.
//

import SwiftUI

struct CardView: View {
    var title : String = "Check Results"
    var image : String = "chart.bar.xaxis"
    var body: some View {
        ZStack{
            Color.gray
            VStack(alignment: .leading){
                Image(systemName: image)
                    .padding(.bottom,3)
                Text(title)
                    .bold()
            }
        }
        .frame(width: screen.width*0.3, height: screen.height*0.15)
        .cornerRadius(30)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
