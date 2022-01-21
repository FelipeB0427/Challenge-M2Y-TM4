//
//  ContentView.swift
//  Challenge-M2Y-TM4
//
//  Created by Felipe Brigagão de Almeida on 21/01/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                // MARK: - COVER IMAGE
                ZStack {
                    Image("placeholder")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .ignoresSafeArea(.all)
                        .frame(minWidth: 0, maxWidth: .infinity)
                } //: COVER IMAGE
                
                // MARK: - TITLE
                HStack {
                    Text("The Very Best Of Johnny Depp")
                        .font(.system(size: 28))
                        .fontWeight(.heavy)
                        .padding()
                    
                    Spacer()
                    
                    Image(systemName: "heart.fill")
                        .font(.system(size: 26))
                        .padding(.trailing, 15)
                        .offset(y: -15)
                } //: TITLE
                
                // MARK: - STATS
                HStack {
                    Image(systemName: "heart.fill")
                        .frame(width: 20, height: 20)
                    Text("1.2K Likes")
                        .padding(.trailing, 20)
                    
                    Image(systemName: "circle.bottomhalf.filled")
                    Text("3 of 10 Watched")
                    
                    Spacer()
                } //: STATS
                .padding(.horizontal, 15)
                
                VStack {
                    ForEach(0..<5) { item in
                        MovieDetailListView()
                }
                    .padding(.top)
                    .padding(.horizontal)
                }
            }
        }
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
