//
//  HomeMoviesListViewModel.swift
//  Challenge-M2Y-TM4
//
//  Created by Felipe Brigagão de Almeida on 22/01/22.
//

import Foundation

class HomeMoviesListViewModel: ObservableObject {
    @Published var movies: [MoviesList]?
    
    /// Ao inicializar essa classe, é feita uma conexão com a API para receber os dados dos filmes similares especificados no link, utilizando um (switch) a resposta de sucesso ou falha define se a variável [movies] conterá os dados.
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