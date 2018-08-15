//
//  Task+CoreDataProperties.swift
//  TaskBuddyBeta1
//
//  Created by Jonathan Compton on 8/14/18.
//  Copyright © 2018 Jonathan Compton. All rights reserved.
//
//

import Foundation
import CoreData


extension Task {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Task> {
        return NSFetchRequest<Task>(entityName: "Task")
    }

    @NSManaged public var timeCreated: Double
    @NSManaged public var isComplete: Bool
    @NSManaged public var isPriority: Bool
    @NSManaged public var title: String?
    @NSManaged public var details: String?
    @NSManaged public var timeDue: Double
    @NSManaged public var taskID: String?
    @NSManaged public var userID: String?
    @NSManaged public var rank: Int32
    @NSManaged public var timeUpdated: Double

}
