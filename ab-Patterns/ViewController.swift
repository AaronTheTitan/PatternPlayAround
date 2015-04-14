//
//  ViewController.swift
//  ab-Patterns
//
//  Created by Aaron Bradley on 4/14/15.
//  Copyright (c) 2015 Aaron Bradley. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

  @IBOutlet weak var tableView: UITableView!

  var patterns = [Pattern]()

  override func viewDidLoad() {
    super.viewDidLoad()
    createTestPatterns()

    let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    let request = NSFetchRequest(entityName: "Pattern")
//    let result = context?.executeFetchRequest(request, error: nil)

    if let results = context?.executeFetchRequest(request, error: nil) {
      patterns = results as! [Pattern]

    }

    println("Number of items in the context is: \(patterns.count)")
  }

  func createTestPatterns() {
    if let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext {
      var pattern = NSEntityDescription.insertNewObjectForEntityForName("Pattern", inManagedObjectContext: context) as? Pattern
      pattern?.name = "This Pattern Name"
      context.save(nil)
    }
  }
}


extension ViewController: UITableViewDelegate, UITableViewDataSource {


  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return patterns.count
  }

  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = UITableViewCell()
    cell.textLabel?.text = "test text"
    return cell
  }

}