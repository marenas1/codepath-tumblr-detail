//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Matthew Arenas on 4/1/24.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    var post: Post!
    
    
    @IBOutlet weak var myTextView: UITextView!
    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myTextView.backgroundColor=UIColor(red: 0.1, green: 0.3, blue: 0.6, alpha: 0.5)
       
        myTextView.text=post.caption.trimHTMLTags()
        if let photo = post.photos.first {
            let url = photo.originalSize.url
            Nuke.loadImage(with: url, into: myImageView)
        }
        //let imageUrl=URL(string:)

        // Do any additional setup after loading the view.
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
