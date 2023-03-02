import UIKit

class ViewController: UIViewController {
    
    // MARK: Models
    // Create individual detail model
    let backstory = Detail(title: "My Cool Backstory", image: UIImage(named: "backstoryImage")!,info: "American teenager Peter Parker, a poor sickly orphan, is bitten by a radioactive spider. As a result of the bite, he gains superhuman strength, speed, and agility, along with the ability to cling to walls, turning him into Spider-Man.")
    let weakness = Detail(title: "My only weakness", image: UIImage(named: "weaknessImage")!,info: "Ethyl chloride is essentially Spider-Man's Kryptonite and it renders anyone's spider-powers null and void. This makes ethyl chloride extremely powerful against Spider-Man, but this chemical cocktail doesn't have nearly the same reputation as Superman's Kryptonite.")
    let lift = Detail(title: "How much can I lift?", image: UIImage(named: "weaknessImage")!,info: "Like his namesake, Spider-Man's strength and agility stand far above those of the average human, allowing him to lift nearly ten tons and to leap and move at incredible speeds with high accuracy.")
    
    // Array for storing detail
    var details: [Detail] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view

        // Store detail of spiderman models
        details = [backstory, weakness, lift]
    }
//
//    @IBAction func didTapDetail(_ sender: UITapGestureRecognizer) {
//            if let tappedView = sender.view {
//                performSegue(withIdentifier: "detailSegue", sender: tappedView)
//            }
//        }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.detail = details[0]
            } else if tappedView.tag == 1 {
                detailViewController.detail = details[1]
            } else if tappedView.tag == 2 {
                detailViewController.detail = details[2]
            } else {
                print("no detail was tapped, please check your selection.")
            }
        }
    }
    
   

 
}

