//
//  File.swift
//  
//
//  Created by Dipon Sutradhar on 8/5/23.
//

import Foundation
import FirebaseMessaging

public class PushNotificationService{
    
    public func subscribeToTopic(_ topic: String) {
        Messaging.messaging().subscribe(toTopic: topic) { error in
            if let error = error {
                print(":::Error subscribing to topic \(topic): \(error.localizedDescription)")
            } else {
                print(":::Subscribed to topic \(topic) successfully")
            }
        }
    }
    
    public func unsubscribeFromTopic(_ topic: String) {
        Messaging.messaging().unsubscribe(fromTopic: topic) { error in
            if let error = error {
                print(":::Error unsubscribing from topic \(topic): \(error.localizedDescription)")
            } else {
                print(":::Unsubscribed from topic \(topic) successfully")
            }
        }
    }
    
}
