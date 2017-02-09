import UIKit

class ViewController: UIViewController {

    @IBOutlet var images: [UIImageView]!
    
    @IBOutlet var labels: [UILabel]!
    
    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var containerWidth: NSLayoutConstraint!
    
    @IBOutlet weak var nilImage: UIImageView!
    
    override func viewDidLoad() {
        print(#function)
        super.viewDidLoad()
        images[0].image = UIImage(named: "150x20")
        images[1].image = UIImage(named: "250x20")
        images[2].image = UIImage(named: "150x20")
        // Do any additional setup after loading the view, typically from a nib.
        nilImage.image = nil
    }
    
    override func viewDidLayoutSubviews() {
        print(#function)
        super.viewDidLayoutSubviews()
        var max: CGFloat = 0
        for (i, image) in images.enumerate() {
            if image.frame.width > max {
                max = image.frame.width
            }
            labels[i].text = String(image.frame.width)
            print(image.superview!.frame.width)
        }
        print("max: \(max)")
        containerWidth.constant = max
        print(images[0].superview!.frame.width)
        containerView.layoutIfNeeded()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

