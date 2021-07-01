//
//  SecondViewController.swift
//  finaleapp
//
//  Created by  Scholar on 6/30/21.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var blogLabel: UILabel!
    
    @IBOutlet weak var replyText: UITextField!
    var finalPost = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        blogLabel.text = finalPost

        // Do any additional setup after loading the view.
    }
    
    @IBAction func replyButton(_ sender: UIButton) {
        replyText.isHidden = false
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

class MyCustomSegue: UIStoryboardSegue {
    
    private var selfRetainer: MyCustomSegue? = nil

    override func perform() {
        destination.transitioningDelegate = self
        selfRetainer = self
        destination.modalPresentationStyle = .overCurrentContext
        source.present(destination, animated: true, completion: nil)
    }
}

extension MyCustomSegue: UIViewControllerTransitioningDelegate {
    public func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return Presenter()
    }
    
    public func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        selfRetainer = nil
        return Dismisser()
    }
    
    private class Presenter: NSObject, UIViewControllerAnimatedTransitioning {
        func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
            return 1.5
        }
        
        func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
            let containerView = transitionContext.containerView
            let toView = transitionContext.view(forKey: .to)!
            
            containerView.addSubview(toView)
            toView.alpha = 0.0
            UIView.animate(withDuration: 1.5,
                           animations: {
                            toView.alpha = 1.0
            },
                           completion: { _ in
                            transitionContext.completeTransition(true)
            }
            )
        }
    }
    
    private class Dismisser: NSObject, UIViewControllerAnimatedTransitioning {
        func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
            return 0.2
        }
        
        func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
            // TODO: Animate transition
        }
    }
}

