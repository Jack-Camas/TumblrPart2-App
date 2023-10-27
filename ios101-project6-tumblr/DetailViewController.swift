//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Jack Camas on 10/25/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
	
	var post: Post!
	
	@IBOutlet weak var postImageView: UIImageView!
	
	@IBOutlet weak var postText: UILabel!
	
	@IBOutlet weak var postTextSummary: UILabel!
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
		if let photoPath = post.photos.first {
			let photo = photoPath.originalSize.url
			Nuke.loadImage(with: photo, into: postImageView)
		}
		
		navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
		

		
		postText.text = post.caption.trimHTMLTags()
		postText.numberOfLines = 0
		
		postTextSummary.text = post.summary
		postTextSummary.numberOfLines = 0
		
		postImageView.contentMode = .scaleAspectFill
		postImageView.layer.cornerRadius = 20
		
		navigationItem.largeTitleDisplayMode = .never
    }
	

}
