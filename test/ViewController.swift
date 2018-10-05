//
//  ViewController.swift
//  test
//
//  Created by Bipin on 10/5/18.
//  Copyright © 2018 Tootle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let request0 = FriendRequest(id: 0, name: "A")
        let request1 = FriendRequest(id: 11, name: "B")
        let request2 = FriendRequest(id: 2, name: "C")
        let request3 = FriendRequest(id: 32, name: "D")
        let request4 = FriendRequest(id: 4, name: "E")
        var requests = [request1, request0, request2, request4, request3]
        print("Real Array: ", requests)
        
        // Remove array index with reference to custom object
        if let index = requests.index(of: request0){
            requests.remove(at: index)
        }
        print("Real Array-AterRemoved: ",requests)
        
        // After sorting in ascending orider
        let ascSorting = requests.sorted { $0.id < $1.id }
        print("Real Array-AfterAscSorting: ", ascSorting)
        
        // After sorting in descending orider
        let descSorting = requests.sorted { $0.id > $1.id }
        print("Real Array-AfterSorting: ", descSorting)
        
        
    }
    
}

class FriendRequest {
    let id: Int
    let name:String
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}

extension FriendRequest: Equatable {}
func ==(left: FriendRequest, right: FriendRequest) -> Bool {
    return left.id == right.id
        && left.name == right.name
}

