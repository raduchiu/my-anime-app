//
//  ContentView.swift
//  My-anime-app
//
//  Created by Raduchiu da Costa Amaral on 20/06/23.
//

import SwiftUI




struct ContentView: View {
    
    @StateObject private var viewModel = AnimeViewModel()
    
    var body: some View {
        NavigationStack {
            List(viewModel.animes, id: \.malId) { anime in
                AnimeView(anime: anime)
            }
            .navigationTitle("Animes")
            .onAppear {
                viewModel.fetchAnimes()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
