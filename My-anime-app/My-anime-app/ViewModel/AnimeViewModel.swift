//
//  AnimeViewModel.swift
//  My-anime-app
//
//  Created by Raduchiu da Costa Amaral on 20/06/23.
//


import Combine
import Foundation

class AnimeViewModel: ObservableObject {
    @Published private(set) var animes = [Anime]()
    private var cancellables = Set<AnyCancellable>()
    private let jsonDecoder = JSONDecoder()
    
    func fetchAnimes() {
        guard let url = URL(string: "https://api.jikan.moe/v4/top/anime") else { return }
        
        jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
        
        URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: AnimeDataResponse.self, decoder: jsonDecoder)
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case .failure(let error):
                    print("Error: \(error)")
                case . finished:
                    print("finished")
                }
            } receiveValue: { [weak self] response in
                self?.animes = response.data
            }
            .store(in: &cancellables)
    }
}
