//
//  SG_Real_VC.swift
//  RefactoringGuru.Patterns
//
//  Created by Maxim Eremenko on 5/8/18.
//  Copyright © 2018 Eremenko Maxim. All rights reserved.
//

import UIKit

class BaseVC: UIViewController, MessageSubscriber {
    
    func accept(new messages: [Message]) {
        /// handle new messages in the base class
    }
    
    func accept(removed messages: [Message]) {
        /// handle removed messages in the base class
    }
    
    func startReceiveMessages() {
        
        /// The singleton can be injected as a dependency.
        /// However, from an informational perspective, this example calls
        /// FriendsChatService directly to illustrate the intent of the pattern,
        /// which is: "...to provide the global point of access to the instance..."
        
        FriendsChatService.shared.add(subscriber: self)
    }
}

class MessagesListVC: BaseVC {
    
    override func accept(new messages: [Message]) {
        /// handle new messages in the child class
    }
    
    override func accept(removed messages: [Message]) {
        /// handle removed messages in the child class
    }
}

class ChatVC: BaseVC {
    
    override func accept(new messages: [Message]) {
        /// handle new messages in the child class
    }
    
    override func accept(removed messages: [Message]) {
        /// handle removed messages in the child class
    }
}

