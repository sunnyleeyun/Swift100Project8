//
//  ViewController.swift
//  project8
//
//  Created by Mac on 2017/10/25.
//  Copyright © 2017年 Sunny, Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var tableView: UITableView!
  
  // MARK: - Properties
  var movies = SampleData.generateMoviesData()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    tableView.dataSource = self
    tableView.delegate = self
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  


}

extension ViewController{
  @IBAction func cancelToMoviesViewController(_ segue: UIStoryboardSegue) {
  }
  
  @IBAction func savePlayerDetail(_ segue: UIStoryboardSegue) {
    guard let addItemViewController = segue.source as? AddItemViewController,
          let movie = addItemViewController.movie else { return }
    movies.append(movie)
    let indexPath = IndexPath(row: movies.count - 1, section: 0)
    tableView.insertRows(at: [indexPath], with: .automatic)
  }
}
extension ViewController: UITableViewDataSource, UITableViewDelegate {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return movies.count
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MovieCell
    
    let movie = movies[indexPath.row]
    cell.movie = movie
    return cell
  }
  
  
  
}
