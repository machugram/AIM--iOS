//
//  HomePageView.swift
//  AIM -iOS
//
//  Created by Rexford Machu on 6/22/22.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        VStack(alignment:.leading){
            HStack{
                VStack(alignment: .leading){
                    Text("Good Evening,")
                        .font(.title2)
                    Text("Clifford")
                        .bold()
                        .font(.title2)
                }
                Spacer()
                
                Image(systemName: "person.fill")
            }
            .padding()
            
            VStack(alignment:.leading){
                Text("Your next class")
                    .padding(.leading,20)
                NextClassView()
                    .padding(.leading,20)
            }
            VStack(alignment: .leading){
                Text("What would you like to do?")
                    .padding(.leading,20)
                ScrollView(.horizontal){
                    HStack{
                        CardView(title: "Check Results",image: "chart.bar.xaxis")
                        CardView(title: "Pay Fees",image: "wallet.pass")
                        CardView(title: "Register Courses",image: "books.vertical.fill")
                    }
                    .padding(.leading,10)
                }
            }
            Spacer()
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
