//
//  ProfileView.swift
//  AIM -iOS
//
//  Created by Rexford Machu on 6/22/22.
//

import SwiftUI

enum Profile: String, CaseIterable, Identifiable {
    case personal, programme, contact
    var id: Self { self }
}

struct ProfileView: View {
    @State var selectedProfileTab: Profile = .personal
    var body: some View {
        VStack(alignment:.leading){
            VStack {
                Picker("Topping", selection: $selectedProfileTab) {
                    ForEach(Profile.allCases) { profile in
                        Text(profile.rawValue.capitalized)
                    }
                }
            }
            .pickerStyle(.segmented)
            
            List{
                VStack(alignment:.leading){
                    Text("Username")
                    Text("cakwakye")
                        .bold()
                }           .padding(.bottom,20)
                
                VStack(alignment:.leading){
                    Text("Surname")
                    Text("KWAKYE")
                        .bold()
                }                .padding(.bottom,20)
                
                VStack(alignment:.leading){
                    Text("Other Names")
                    Text("Clifford Agyabeng")
                        .bold()
                }                .padding(.bottom,20)
                
                VStack(alignment:.leading){
                    Text("Gender")
                    Text("Male")
                        .bold()
                }                .padding(.bottom,20)
                
                VStack(alignment:.leading){
                    Text("Date Of Birth")
                    Text("14 Jun 2000")
                        .bold()
                }                .padding(.bottom,20)
                
                VStack(alignment:.leading){
                    Text("Passport Number")
                    Text("N/A")
                        .bold()
                }                .padding(.bottom,20)
                
                VStack(alignment:.leading){
                    Text("Country")
                    Text("Ghana")
                        .bold()
                }                .padding(.bottom,20)
                
                VStack(alignment:.leading){
                    Text("Region")
                    Text("EASTERN")
                        .bold()
                }                .padding(.bottom,20)
                
                VStack(alignment:.leading){
                    Text("Religion")
                    Text("Christian")
                        .bold()
                }
                .padding(.bottom,20)
                VStack(alignment:.leading){
                    Text("Denomination/Group")
                    Text("N/A")
                        .bold()
                }
            }
            
        }
        .padding()
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
