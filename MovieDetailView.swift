import SwiftUI
struct MovieDetailView:View{
    @State var imageName = "placeholder"
    var movie:Movie
    var body:some View{
        ScrollView{
            VStack{
                AsyncImage(url: URL(string:"https://image.tmdb.org/t/p/original/\(movie.poster_path)")!, content: {
                    image in
                    image.resizable(resizingMode:.stretch)
                }, placeholder: {
                    Image(imageName)
                        .resizable()
                        .frame(width: 240, height: 320)

                })
                .frame(width: 240, height: 320, alignment: .top)
                Text("劇情簡介")
                    .font(.title)
                Text(movie.overview)
                Spacer()
            }.navigationTitle(Text(movie.title))
            .padding()
        }
    }
}