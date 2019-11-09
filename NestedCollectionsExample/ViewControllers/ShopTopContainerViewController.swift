//
//  ShopTopContainerViewController.swift
//  Poogle
//
//  Created by Mahmoud Abdellatief on 15/09/2019.
//  Copyright © 2019 Mahmoud Abdellatief. All rights reserved.
//

import UIKit

class ShopTopContainerViewController: UIViewController, UIScrollViewDelegate {

    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    // page control function
    @IBAction func pageControlSelectionAction(_ sender: UIPageControl) {
        let page: Int? = sender.currentPage
        var frame: CGRect = self.scrollView.frame
        frame.origin.x = frame.size.width * CGFloat(page ?? 0)
        frame.origin.y = 0
        self.scrollView.scrollRectToVisible(frame, animated: true)
    }
    // this slides variable will be used later to return images for each page
    var slides:[UIImageView] = []
 
    var contentWidth: CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // set self as scrollView delegate
        scrollView.delegate = self
        // color for the dot which indicates which page we are at
        pageControl.currentPageIndicatorTintColor = UIColor.green
        // color for the dots for unselected pages
        pageControl.pageIndicatorTintColor = UIColor.gray
        // call back for set slides function to return slides into the slides variable we created earlier
        slides = createSlides()
        // call back for the function to setup the horizontal scroll
        setupSlideScrollView(slides: slides)
        
        // number of slides to return
        pageControl.numberOfPages = slides.count
        
        // add the pagecontrol view to our viewcontroller
        view.bringSubviewToFront(pageControl)
        

        // Do any additional setup after loading the  view.
    }
    
        // update the dots to show which slide you are viewing
         func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
            // Get the current page based on the scroll offset
            let page : Int = Int(round(scrollView.contentOffset.x / 200))

            // Set the current page, so the dots will update
            pageControl.currentPage = page
        }
    
    // adding offer images to our slides as UIImageView
    func createSlides() -> [UIImageView] {
        
        let slide1:UIImageView = UIImageView.init(image: UIImage(named: "offer1"))
   
        let slide2:UIImageView = UIImageView.init(image: UIImage(named: "offer2"))

        
        let slide3:UIImageView = UIImageView.init(image: UIImage(named: "offer1"))
        
      
        let slide4:UIImageView = UIImageView.init(image: UIImage(named: "offer2"))
       
        return [slide1, slide2, slide3, slide4]
    }
    
    // in the following function setup the width and height you want for each offer image
    func setupSlideScrollView(slides : [UIImageView]) {
        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        scrollView.contentSize = CGSize(width: 200 * slides.count, height: 100)
        scrollView.isPagingEnabled = true
        
        for i in 0 ..< slides.count {
            slides[i].frame = CGRect(x: 200 * CGFloat(i), y: 0, width: 200, height: 100)
            scrollView.addSubview(slides[i])
            
        }
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
