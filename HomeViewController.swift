//
//  HomeViewController.swift
//  BlupApp
//
//  Created by SUONG KÉVIN TAN on 07/06/2017.
//  Copyright © 2017 Suong Kevin Tan. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var BtnPret: UIButton!
    @IBOutlet weak var BtnEmprunts: UIButton!
    @IBOutlet weak var UnderlinePret: UnderlineUIView!
    @IBOutlet weak var UnderlineEmprunt: UnderlineUIView!
    @IBOutlet weak var UITableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showPrets()
        hideEmprunts()
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = .clear
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        UITableView.delegate = self
        UITableView.dataSource = self
        
        self.getItemDatas()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showPrets() -> Void {
        BtnPret.alpha = 1
        UnderlinePret.alpha = 1;
    }
    func hidePrets() -> Void {
        BtnPret.alpha = 0.75
        UnderlinePret.alpha = 0;
    }
    func showEmprunts() -> Void {
        BtnEmprunts.alpha = 1
        UnderlineEmprunt.alpha = 1;
    }
    func hideEmprunts() -> Void {
        BtnEmprunts.alpha = 0.75
        UnderlineEmprunt.alpha = 0;
    }
    
    @IBAction func ClicPrets(_ sender: Any) {
        showPrets()
        hideEmprunts()
    }

    @IBAction func ClicEmprunt(_ sender: Any) {
        showEmprunts()
        hidePrets()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.episodes.count // your number of cell here
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = UIView()
        header.backgroundColor = UIColor.clear
        return header
    }
    
    // Set the spacing between sections
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 25; // space b/w cells
    }
    
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        let cell  = tableView.cellForRow(at: indexPath as IndexPath)
        cell!.contentView.backgroundColor = UIColor.clear
        self.performSegue(withIdentifier: "openDetails", sender: self)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath)
        cell.backgroundColor = UIColor.clear
        cell.selectionStyle = .none
        let myEpisode = episodes[indexPath.row]
        
        let seasonNumber = String(myEpisode.summary)
        let lendDate = String(myEpisode.lendDate)
        print(seasonNumber, lendDate)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // cell selected code here
//        print(indexPath)
    }
    
    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "openDetails"{
            _ = segue.destination as! DetailsViewController
        }
    }
    
    var episodes: [Item] = [Item]()
    
    func getItemDatas() {
        NetworkManager.getItem { (episodesFromAPI) in
            
            //Remplir le tableau d'épisodes
            self.episodes = episodesFromAPI
            
            //Force reload Data
            self.UITableView.reloadData()
    
        }
    }
}
