import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager:NetworkManager = NetworkManager()
    var body: some View {
        NavigationView(content: {
            List(networkManager.movies.results, id: \.id, rowContent: {
                movie in
                NavigationLink(destination: MovieDetailView(movie: movie)) { MovieRow(movie: movie) }
            })
            .navigationTitle("Movies")
        })
    }
}
