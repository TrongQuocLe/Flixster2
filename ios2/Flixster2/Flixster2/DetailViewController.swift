//
//  DetailViewController.swift
//  Flixster2
//
//  Created by LE, TRONG QUOC on 3/15/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var voteAvg: UILabel!
    @IBOutlet weak var votes: UILabel!
    @IBOutlet weak var popularity: UILabel!
    @IBOutlet weak var movieDesc: UILabel!

    // A property to store the track object.
    // We can set this property by passing along the track object associated with the track the user tapped in the table view.
    var movie: Movie!

    override func viewDidLoad() {
        super.viewDidLoad()

        Nuke.loadImage(with: URL(string:"https://image.tmdb.org/t/p/w185" + movie.poster_path)!, into: movieImageView)

        movieNameLabel.text = movie.original_title
        movieDesc.text = movie.overview
        voteAvg.text = String(movie.vote_average)
        votes.text = String(movie.vote_count)
        popularity.text = String(movie.popularity)
    }



}
