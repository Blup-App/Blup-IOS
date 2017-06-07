//
//  HomeViewController.swift
//  heettiicc
//
//  Created by Joris Thiery on 27/04/2017.
//  Copyright © 2017 neopixl. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    
    var episodes: [Episode] = [Episode]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //inscription au delegate
        tableview.delegate = self
        tableview.dataSource = self
        
        //self.generateFakeDatas()
        self.getEpisodeDatas()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getEpisodeDatas() {
        NetworkManager.getEpisodesOfWalkingDead { (episodesFromAPI) in
            
            //Remplir le tableau d'épisodes
            self.episodes = episodesFromAPI
            
            //Force reload Data
            self.tableview.reloadData()
        }
    }
}

extension HomeViewController: UITableViewDelegate {
    //Une des lignes a été appuyée  entrée : tableview on a cliquée + quel index
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //On ouvre la vue de détail
        
        //get the episode desired to be displayed in my Cell
        let myEpisode = episodes[indexPath.row]
        
        //get storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        //get viewController from Storyboard (with ID)
        let detailController = storyboard.instantiateViewController(withIdentifier: "DetailID") as! DetailViewController
        
        detailController.selectedEpisode = myEpisode
        
        //Display View Controller in push (fullscreen + back button) mode
        self.navigationController?.pushViewController(detailController, animated: true)
    }
}

extension HomeViewController: UITableViewDataSource {
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //return the number of lines in my tableView
        return episodes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //get the episode desired to be displayed in my Cell
        let myEpisode = episodes[indexPath.row]
        
        //Create my Custom Cell (EpisodeTableViewCell) with 'reuse' method and identifier from storyboard
        let cell = tableview.dequeueReusableCell(withIdentifier: "episodeCellID") as! EpisodeTableViewCell

        let seasonNumberString = String(myEpisode.seasonNumber)
        let lendDate = String(myEpisode.lendDate)
        
        //setup my cell
        cell.episodeNameLabel.text = myEpisode.title
        cell.seasonNameLabel.text = seasonNumberString
        cell.episodeNumberLabel.text = lendDate
        
        return cell
    }
    
}
