//
//  MovieDetailListView.swift
//  Challenge-M2Y-TM4
//
//  Created by Felipe Brigagão de Almeida on 21/01/22.
//

import SwiftUI

struct MovieDetailListView: View {
    var title: String
    var year: String
    var genres: String
    var url: String
    
    var body: some View {
        HStack(spacing: 15) {
            Image(systemName: "square.fill").loadImage(endPoint: "\(url)")
                .resizable()
                .frame(width: 80, height: 120)
            
            VStack(alignment: .leading) {
                Text(title)
                
                HStack {
                    Text(year)
                        .font(.system(.caption))
                    
                    Text(genres)
                        .font(.system(.caption))
                        .lineLimit(1)
                }
                .font(.subheadline)
            }
            Spacer()
            
            Image(systemName: "checkmark.circle.fill")
                .offset(y: -60)
        }
    }
}

struct MovieDetailListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailListView(title: "Test", year: "1990", genres: "Drama", url: "5ZoFGrFCKP0QrcfVwOIHiAwunBg.jpg")
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
