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
        set{
            _taskName = "Hello Task"
            }
    }
    var _taskTime: String? {
        get{
            return _taskTime
            }
        set{
            _taskTime = "21.11.2016"
            }
    }
    var _taskDescription: String? {
        get{
            return _taskDescription
            }
        set{
            _taskDescription = "bu bir deneme taskıdır."
            }
    }
    var _createdBy: String? {
        get{
            return _createdBy
            }
        set{
            _createdBy = "yocoskun"
            }
    }
    var _assignedTo: String? {
        get{
            return _assignedTo
            }
        set{
            _assignedTo = "guyilmaz"
            }
    }
    var _completed: Bool {
        get{
            return _completed
            }
        set{
            _completed = true
            }
    }
    var _taskID: Int {
        get{
            return _taskID
            }
        set{
            _taskID = 1
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
