import UIKit

class NewsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var ConfigButton: UIButton!
    @IBOutlet weak var cardTableView: UITableView!
    
    let pictures: [UIImage] = [UIImage(named: "Noticias1.png")!, UIImage(named: "Noticias2.png")!, UIImage(named: "Noticias3.png")!, UIImage(named: "Noticias4.png")!, UIImage(named: "Noticias5.png")!]
    let titles: [String] = ["Programas", "Nos estamos renovando", "Alimentando Corazones", "Nos estamos renovando", "Nos estamos renovando"]
    let descriptions: [String] = ["Programas para personas interesadas en apoyar desde su trinchera", "Gracias a tu apoyo estamos trabajando en expandirnos.", "Conoce nuestro nuevo programa que busca mejorar la vida de las personas", "Conoce nuestro nuevo programa que busca mejorar la vida de las personas", "Conoce nuestro nuevo programa que busca mejorar la vida de las personas"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        ConfigButton.addTarget(self, action: #selector(tapOnButton), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    
    @objc func tapOnButton(){
        let story = UIStoryboard(name: "Main", bundle: nil)
        
        let controller = story.instantiateViewController(identifier: "") as! ConfigurationViewController
    }
    ///How many rows in the table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    ///Defines what cells are being used
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cardCell", for: indexPath) as! CardCell
        
        cell.configure(picture: pictures[indexPath.row], title: titles[indexPath.row], description: descriptions[indexPath.row])
        
        return cell
    }


}
