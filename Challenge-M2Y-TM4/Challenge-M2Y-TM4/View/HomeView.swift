//
//  HomeView.swift
//  Challenge-M2Y-TM4
//
//  Created by Felipe Brigagão de Almeida on 21/01/22.
//

import SwiftUI

struct HomeView: View {
    // MARK: - PROPERTIES
    @State var isLiked: Bool = false
    @StateObject var movieData = HomeViewModel()
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
        VStack {
            // MARK: - COVER IMAGE
            ZStack {
                Image("placeholder")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(minWidth: 0, maxWidth: .infinity)
            } //: COVER IMAGE
            
            // MARK: - TITLE
            HStack {
                Text(movieData.movie?.title ?? "No Title")
                    .font(.system(size: 28))
                    .fontWeight(.heavy)
                    .padding()
                
                Spacer()
                
                Image(systemName: isLiked ? "heart.fill" : "heart")
                    .font(.system(size: 26))
                    .padding(.trailing, 15)
                    .onTapGesture {
                        isLiked.toggle()
                    }
            } //: TITLE
            
            // MARK: - STATS
            HStack {
                Image(systemName: "heart.fill")
                    .frame(width: 20, height: 20)
                Text("\(movieData.movie?.vote_count ?? 0) Likes")
                    .padding(.trailing, 20)
                
                Image(systemName: "hands.sparkles.fill")
                Text("\(movieData.movie?.popularity ?? 0.0)")
                
                Spacer()
            } //: STATS
            .padding(.horizontal, 15)
            
        }
        
        ForEach(0..<5) { _ in
            MovieDetailListView()
                .padding()
            
            
        }
    }
    .ignoresSafeArea(.all)
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
    }
}