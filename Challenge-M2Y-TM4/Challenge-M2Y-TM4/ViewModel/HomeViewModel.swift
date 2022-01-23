//
//  HomeViewModel.swift
//  Challenge-M2Y-TM4
//
//  Created by Felipe Brigagão de Almeida on 21/01/22.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var movie: Movie?
    
    init() {
        ApiManager.shared.getMovie(url: "https://api.themoviedb.org/3/movie/577922?api_key=3066657fbf3c19a5a89806e76ea61a19") { result in
            switch result {
            case .success(let movie):
                self.movie = movie
                
            case .failure:
                self.movie = nil
            }
        }
    }
    
//    func getImage(imageUrl: String) -> String {
//        let url = URL(string: <#T##String#>)
//    }
}
