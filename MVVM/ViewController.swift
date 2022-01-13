//
//  ViewController.swift
//  VIPER
//
//  Created by Pixel4it on 09/01/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var models = [Person]()
    
    private let tableView: UITableView = {
        let table = UITableView()
        table.register(PersonCell.self, forCellReuseIdentifier: PersonCell.identifier)
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurePersons()
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.frame = view.bounds
        
    }
    
    func configurePersons(){
        let names = [
            "person1", "person2", "person3", "person4"
        ]
        
        for name in names {
            models.append(Person(name: name, username: name))
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let person = models[indexPath.row]
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PersonCell.identifier, for: indexPath) as? PersonCell else {
            return UITableViewCell()
        }
        
        cell.configure(with: PersonViewModel(with: person))
        cell.delegate = self
        
        return cell
        
    }


}

extension ViewController: PersonFollowingTableViewCellDelegate {
    func personFollowingTableViewCell(_ cell: PersonCell, didTapWith viewModel: PersonViewModel) {
        
    }
    
    
}
