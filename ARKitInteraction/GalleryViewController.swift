//
//  GalleryViewController.swift
//  ARKitInteraction
//
//  Created by Vivian on 12/6/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class GalleryViewController: UIViewController {
    
    

    @IBOutlet weak var imageView: UIImageView!
    
    
    var imgName:String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the
        imgName = "img" + String(mainInstance.count) + ".png"
      
        self.getImage(imageName: imgName)
    }
    
    
    func getImage(imageName: String){
          let fileManager = FileManager.default
          let imagePath = (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as NSString).appendingPathComponent(imageName)
        
          print(imagePath)
          if fileManager.fileExists(atPath: imagePath){
             imageView.image = UIImage(contentsOfFile: imagePath)
          }else{
             print("Panic! No Image!")
          }
       }


//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
//
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
//
//        imgName = "img" + String(mainInstance.count) + ".png"
//        let imagePath = getImageCol(imageName: imgName)
//        cell.travelImageView.image = UIImage(contentsOfFile: imagePath)
//        cell.TravelLabel.text = imgName
//
//        return cell
//    }
    
//
//    func getImageCol(imageName: String) -> String{
//          let fileManager = FileManager.default
//          let imagePath = (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as NSString).appendingPathComponent(imageName)
//
//          print(imagePath)
//          if fileManager.fileExists(atPath: imagePath){
////             imageView.image = UIImage(contentsOfFile: imagePath)
//            return imagePath
//          }else{
//             print("Panic! No Image!")
//          }
//          return ""
//       }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
