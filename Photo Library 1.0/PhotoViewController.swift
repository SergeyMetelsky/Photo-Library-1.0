//
//  PhotoViewController.swift
//  Photo Library 1.0
//
//  Created by Sergey on 2/4/21.
//

import UIKit

class PhotoViewController: UIViewController {
    
    var image: UIImage?

    @IBOutlet weak var photoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        photoImageView.image = image
        // Do any additional setup after loading the view.
    }

    @IBAction func shareAction(_ sender: UIButton) {
        
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("Успешно")
            }
        }
        
        present(shareController, animated: true, completion: nil)
    }
    
}
