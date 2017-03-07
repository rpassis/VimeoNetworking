//
//  SubscriptionCollection.swift
//  Pods
//
//  Created by Lim, Jennifer on 1/20/17.
//
//

/// Represents all the subscriptions with extra informations
public class SubscriptionCollection: VIMModelObject
{
    // MARK: - Properties

    /// Represents the uri
    public var uri: String?
    
    /// Represents the modified time
    public var modifiedTime: NSDate?
    
    /// Represents the subscription
    public var subscription: Subscription?
    
    // MARK: - VIMMappable
    
    public override func getObjectMapping() -> AnyObject!
    {
        return ["modified_time": "modifiedTime",
                "subscriptions": "subscription"]
    }
    
    public override func getClassForObjectKey(key: String!) -> AnyClass!
    {
        if key == "subscriptions"
        {
            return Subscription.self
        }
        
        return nil
    }
}