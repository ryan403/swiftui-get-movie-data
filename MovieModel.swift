import Foundation

struct Movie:Decodable{
    var vote_count:Int
    var id:Int
    var vote_average:Float
    var title:String
    var poster_path:String
    var original_title:String
    var adult:Bool
    var overview:String
    var release_date:String
}

struct MovieList:Decodable{
    var results:[Movie]
}