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
            return _taskName
            }
        set(valueTask){
            _taskName = valueTask
            }
    }
    var _taskTime: String? {
        get{
            return _taskTime
            }
        set(valueTime){
            _taskTime = valueTime
            }
    }
    var _taskDescription: String? {
        get{
            return _taskDescription
            }
        set(valueDescription){
            _taskDescription = valueDescription
            }
    }
    var _createdBy: String? {
        get{
            return _createdBy
            }
        set(valueCreated){
            _createdBy = valueCreated
            }
    }
    var _assignedTo: String? {
        get{
            return _assignedTo
            }
        set(valueAssigned){
            _assignedTo = valueAssigned
            }
    }
    var _completed: Bool {
        get{
            return _completed
            }
        set(isCompleted){
            _completed = isCompleted
            }
    }
    var _taskID: Int {
        get{
            return _taskID
            }
        set(valueID){
            _taskID = valueID
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
