//
//  ScavengerHuntItem.swift
//  Scavenger Hunt
//
//  Created by AP  on 4/29/15.
//  Copyright (c) 2015 AP . All rights reserved.
//

import UIKit

class ScavengerHuntItem: NSObject {
    let name: String
    var photo: UIImage?
    var isComplete: Bool {
        get {
           return photo != nil
        }
    }
    let nameKey = "NameKey"
    let photoKey = "PhotoKey"
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(name, forKey: nameKey)
        if let thePhoto = photo {
            aCoder.encodeObject(thePhoto, forKey: photoKey)
        }
    }
    
    required init(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObjectForKey(nameKey) as String
        photo = aDecoder.decodeObjectForKey(photoKey) as? UIImage
    }
    
    init(name: String) {
        self.name = name
    }
}
