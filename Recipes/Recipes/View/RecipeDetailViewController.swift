//
//  RecipeDetailViewController.swift
//  Recipes
//
//  Created by Joel Groomer on 9/4/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

class RecipeDetailViewController: UIViewController {
    
    @IBOutlet weak var txtRecipeName: UILabel!
    @IBOutlet weak var txtvRecipe: UITextView!

    var recipe: Recipe? { didSet { updateViews() } }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    func updateViews() {
        guard let recipe = recipe, self.isViewLoaded else { return }
        txtRecipeName.text = recipe.name
        txtvRecipe.text = recipe.instructions
    }
}
