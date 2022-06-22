//
//  ContentView.swift
//  AIM -iOS
//
//  Created by Rexford Machu on 10/16/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            TabView{
                HomePageView()
                .tabItem{
                        Image(systemName: "house.fill")
                    Text("Home")
                    }
                HomePageView()
                .tabItem{
                        Image(systemName: "person.fill")
                    Text("Registration")
                    }
                HomePageView()
                .tabItem{
                        Image(systemName: "person.fill")
                    Text("Downloads")
                    }
                HomePageView()
                .tabItem{
                        Image(systemName: "person.fill")
                    Text("Timetable")
                    }
                ProfileView()
                .tabItem{
                        Image(systemName: "person.fill")
                    Text("Settings")
                    }
                
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
