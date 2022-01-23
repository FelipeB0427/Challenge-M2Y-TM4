//
//  HomeMoviesListViewModel.swift
//  Challenge-M2Y-TM4
//
//  Created by Felipe Brigagão de Almeida on 22/01/22.
//

import Foundation

class HomeMoviesListViewModel: ObservableObject {
    @Published var movies: [MoviesList]?
    
    init() {
        ApiManager.shared.getMoviesList(url: "https://api.themoviedb.org/577922/movie/550?api_key=3066657fbf3c19a5a89806e76ea61a19") { result in
            switch result {
            case .success(let movies):
                self.movies = movies
                
            case .failure:
                self.movies = nil
            }
        }
    }
}
