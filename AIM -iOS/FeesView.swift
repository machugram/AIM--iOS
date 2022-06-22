//
//  FeesView.swift
//  AIM -iOS
//
//  Created by Rexford Machu on 6/22/22.
//

enum Topping: String, CaseIterable, Identifiable {
    case bill, transactions
    var id: Self { self }
}

import SwiftUI

struct FeesView: View {
    @State private var selectedTopping: Topping = .bill

    var body: some View {
        ScrollView(.vertical){
            VStack{
                ZStack{
                    Color.gray
                    HStack{
                        Text("GHS")
                            .font(.system(size: 29))
                        
                        Spacer()
                        VStack(alignment: .trailing){
                            Text("0.00")
                                .bold()
                            Text("Amount You Owe")
                        }
                    }
                    .padding()
                }
                .frame(width: screen.width * 0.95, height: screen.height*0.2)
                .cornerRadius(30)
                
                HStack{
                    ZStack{
                        Color.gray
                        VStack(alignment: .trailing){
                            Text("0.00")
                                .bold()
                            Text("Amount You Owe")
                        }
                    }
                    .frame(width: screen.width * 0.45, height: screen.height*0.15)
                    .cornerRadius(30)
                    ZStack{
                        Color.gray
                        VStack(alignment: .trailing){
                            Text("0.00")
                                .bold()
                            Text("Amount You Owe")
                        }
                    }
                    .frame(width: screen.width * 0.45, height: screen.height*0.15)
                    .cornerRadius(30)
                }
                
                HStack{
                    ZStack{
                        Color.gray
                        VStack(alignment: .trailing){
                            Text("0.00")
                                .bold()
                            Text("Amount You Owe")
                        }
                    }
                    .frame(width: screen.width * 0.45, height: screen.height*0.15)
                    .cornerRadius(30)
                    ZStack{
                        Color.gray
                        VStack(alignment: .trailing){
                            Text("0.00")
                                .bold()
                            Text("Amount You Owe")
                        }
                    }
                    .frame(width: screen.width * 0.45, height: screen.height*0.15)
                    .cornerRadius(30)
                }
                
                VStack {
                    Picker("Topping", selection: $selectedTopping) {
                        ForEach(Topping.allCases) { topping in
                            Text(topping.rawValue.capitalized)
                        }
                    }
                }
                .pickerStyle(.segmented)
            }
        }
    }
}

struct FeesView_Previews: PreviewProvider {
    static var previews: some View {
        FeesView()
    }
}
