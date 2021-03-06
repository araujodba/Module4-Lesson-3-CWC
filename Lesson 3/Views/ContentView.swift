//
//  ContentView.swift
//  Lesson 3
//
//  Created by Marcello Lima on 22/09/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var tabIndex: Int = 1
    
    var body: some View {
        NavigationView {
            TabView(selection:  $tabIndex) {
                // MARK: Tab 1
                List {
                    Text( "This tab’s tag is \(tabIndex).")
                }
                    .tabItem {
                        Image(systemName: "tortoise.fill")
                        Text("Tab 1")
                    }.tag(1)
                
                //MARK: Tab 2
                List {
                    Button(action: {
                        tabIndex = 3
                    }, label: {
                        Text("Take me to tab 3!")
                        })
                }
                    .tabItem {
                        Image(systemName: "arrow.right")
                        Text("Tab 2")
                    }.tag(2)
                
                //MARK: Tab 3
                List {
                    ForEach(1..<101) { item in
                        Text("\(item). This is Tab3!")
                    }
                    
                }
                    .tabItem {
                            Image(systemName: "hands.clap.fill")
                            Text("Tab 3")
                    }.tag(3)
                    
            }.navigationBarTitle("Tab \(tabIndex)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
