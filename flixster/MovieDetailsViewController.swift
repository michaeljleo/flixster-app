//
//  MovieDetailsViewController.swift
//  flixster
//
//  Created by Michael Leo on 9/7/21.
//

import UIKit
import AlamofireImage
class MovieDetailsViewController: UIViewController {

    @IBOutlet weak var movieBackdropImage: UIImageView!
    @IBOutlet weak var moviePosterImage: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieSynopsis: UILabel!
    
    
    
    
    var movie: [String:Any]!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieTitle.text = movie["title"] as? String
        movieSynopsis.text = movie["overview"] as? String
        
        let baseURL = "https://image.tmdb.org/t/p/w185"
        let posterURL = movie["poster_path"] as! String
        let imageURL = URL(string: baseURL + posterURL)
        
        moviePosterImage.af.setImage(withURL: imageURL!)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropURL = URL(string: "https://image.tmdb.org/t/p/original" + backdropPath)!
        movieBackdropImage.af.setImage(withURL: backdropURL)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
