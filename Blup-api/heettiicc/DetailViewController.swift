//
//  DetailViewController.swift
//  heettiicc
//
//  Created by Laurence on 04/05/2017.
//  Copyright © 2017 neopixl. All rights reserved.
//

import UIKit
import AlamofireImage

class DetailViewController: UIViewController {
    
    @IBOutlet weak var episodeImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var lendDate: UILabel!
    
    var selectedEpisode = Episode()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = selectedEpisode.title
        descriptionLabel.text = selectedEpisode.summary
        lendDate.text = selectedEpisode.lendDate
        //Créer une url à partir d'une string
        let urlOfImage = URL(string: selectedEpisode.imageURL)
        //AlamofireImage
        
        episodeImageView.af_setImage(withURL: urlOfImage!)
        
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

