//
//  DetailViewController.swift
//  codepath-flickz
//
//  Created by Kyle Leung on 2/7/17.
//  Copyright © 2017 Kyle Leung. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var infoView: UIView!
    @IBOutlet weak var scrollViewLabel: UIScrollView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var plotLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    var movie: NSDictionary!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(movie)
        let title = movie["title"] as? String
        titleLabel.text = title
        let overview = movie["overview"] as? String
        plotLabel.text = overview
        plotLabel.sizeToFit()
        if let poster = movie["poster_path"] as? String {
            let baseURL = "http://image.tmdb.org/t/p/w500"
            let imageURL = NSURL(string: baseURL + poster)
            posterImageView.setImageWith(imageURL as! URL)
        }
        else {
            posterImageView.image = nil
        }
        scrollViewLabel.contentSize = CGSize(width: scrollViewLabel.frame.size.width, height: infoView.frame.origin.y + infoView.frame.size.height)


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
