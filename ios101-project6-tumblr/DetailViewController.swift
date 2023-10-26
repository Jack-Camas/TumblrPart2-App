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
	
	@IBOutlet weak var postText: UITextView!
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
		if let photoPath = post.photos.first {
			let photo = photoPath.originalSize.url
			Nuke.loadImage(with: photo, into: postImageView)
		}
		
		postText.text = post.caption.trimHTMLTags()
		postText.isEditable = false
		postText.showsVerticalScrollIndicator = false
		
		navigationItem.largeTitleDisplayMode = .never
    }
	

}
