//
//  ViewController.swift
//  Verregular App
//
//  Created by Юлия Дегтярева on 2025-04-11.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Properties
    private var dataSource = IrregularVerbs()
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource.configureVerbs()
        let nib = UINib(nibName: "VerbTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "VerbTableViewCell")
    }
    
    // MARK: - Methods
}

// MARK: - UITableViewDataSource
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        dataSource.verbs.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "VerbTableViewCell",
                                                       for: indexPath) as? VerbTableViewCell else {
            return UITableViewCell() }
        
        cell.configure(for: dataSource.verbs[indexPath.row])
        
        return cell
    }
}

// MARK: - UITableViewDelegate
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView,
                   heightForRowAt indexPath: IndexPath) -> CGFloat {
        69
    }
}

