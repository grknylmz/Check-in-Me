//
//  Task.swift
//  Check-in Me
//
//  Created by Yonca Coskun on 21.11.2016.
//  Copyright © 2016 Gurkan Yilmaz. All rights reserved.
//

import Foundation

class Task{
    
    var _taskName: String? {
        get{
            return self._taskName
            }
        set(valueTask){
            self._taskName = valueTask
            }
    }
    var _taskTime: String? {
        get{
            return self._taskTime
            }
        set(valueTime){
            self._taskTime = valueTime
            }
    }
    var _taskDescription: String? {
        get{
            return self._taskDescription
            }
        set(valueDescription){
            self._taskDescription = valueDescription
            }
    }
    var _createdBy: String? {
        get{
            return self._createdBy
            }
        set(valueCreated){
            self._createdBy = valueCreated
            }
    }
    var _assignedTo: String? {
        get{
            return self._assignedTo
            }
        set(valueAssigned){
            self._assignedTo = valueAssigned
            }
    }
    var _completed: Bool {
        get{
            return self._completed
            }
        set(isCompleted){
            self._completed = isCompleted
            }
    }
    var _taskID: Int {
        get{
            return self._taskID
            }
        set(valueID){
            self._taskID = valueID
            }
    }
    
   
    
    init( taskName : String, taskTime: String , taskDescription: String,createdBy: String ,assignedTo: String, completed: Bool, taskID: Int ) {
        
        self._taskName = taskName
        self._taskTime = taskTime
        self._taskDescription = taskDescription
        self._createdBy = createdBy
        self._assignedTo = assignedTo
        self._completed = completed
        self._taskID = taskID
        
        
    }
    
    
    
}
