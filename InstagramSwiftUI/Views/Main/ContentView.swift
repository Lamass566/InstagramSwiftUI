//
//  ContentView.swift
//  InstagramSwiftUI
//
//  Created by Macbook on 05.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.black
            
            VStack{
                
                HeaderView()
                
                Spacer()
                
            }.padding(.top, 30)
        }.ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
