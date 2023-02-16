//
//  ViewController.swift
//  simpsonBook
//
//  Created by Ragıb Gormez on 16.02.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    
    @IBOutlet weak var tableView: UITableView!
    
    var myLotr = [Lotr]()
    var choosenLotr : Lotr?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableView.delegate = self
        tableView.dataSource = self
        
        //simpson object
        let aragorn = Lotr(nameInit: "aragorn", raceInit: "insan", imageInit: .init(named: "aragorn")!)
        let frodo = Lotr(nameInit: "frodo", raceInit: "hobbit", imageInit: .init(named: "frodo")!)
        let galadriel = Lotr(nameInit: "galadriel", raceInit: "elf", imageInit: .init(named: "galadriel")!)
        let gandalf = Lotr(nameInit: "gandalf", raceInit: "istari", imageInit: .init(named: "gandalf")!)
        
        myLotr.append(aragorn)
        myLotr.append(frodo)
        myLotr.append(galadriel)
        myLotr.append(gandalf)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myLotr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = myLotr[indexPath.row].name
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        choosenLotr = myLotr[indexPath.row]
        self.performSegue(withIdentifier: "toDetailVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedLotr = choosenLotr
        }
    }

}

