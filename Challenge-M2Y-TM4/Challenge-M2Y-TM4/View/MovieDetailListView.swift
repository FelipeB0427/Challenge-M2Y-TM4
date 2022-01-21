//
//  MovieDetailListView.swift
//  Challenge-M2Y-TM4
//
//  Created by Felipe Brigagão de Almeida on 21/01/22.
//

import SwiftUI

struct MovieDetailListView: View {
    var body: some View {
        HStack(spacing: 15) {
            Image(systemName: "square.fill")
                .resizable()
                .frame(width: 100, height: 160)
            
            VStack(alignment: .leading) {
                Text("Edward Scissorhands")
                
                HStack {
                    Text("1990")
                    Text("Drama, Fantasy")
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
        MovieDetailListView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
