//
//  Task.swift
//  Check-in Me
//
//  Created by Yonca Coskun on 21.11.2016.
//  Copyright © 2016 Gurkan Yilmaz. All rights reserved.
//

import Foundation

class Task{
    
    var _taskName: String?
    var _taskTime: String?
    var _taskDescription: String?
    var _createdBy: String?
    var _assignedTo: String?
    var _completed: Bool
    var _taskID: Int
    
    
    
    init( taskName : String, taskTime: String , taskDescription: String,createdBy: String ,assignedTo: String, completed: Bool, taskID: Int ) {
        
        self._taskName = taskName
        self._taskTime = taskTime
        self._taskDescription = taskDescription
        self._createdBy = createdBy
        self._assignedTo = assignedTo
        self._completed = completed
        self._taskID = taskID
        
        
    }
    
    func getTaskName()->String{
        return self._taskName!
    }
    func setTaskName ( taskName : String ){
        self._taskName = taskName
    }
    //----------------------------------------
    func getTaskTime()->String{
        return self._taskTime!
    }
    func setTaskTime ( taskTime : String ){
        self._taskTime = taskTime
    }
    //----------------------------------------
    func getTaskDescription()->String{
        return self._taskDescription!
    }
    func setTaskDescription( taskDescription : String ){
        self._taskDescription = taskDescription
    }
    //----------------------------------------
    func getCreatedBy()->String{
        return self._createdBy!
    }
    func setCreatedBy( createdBy : String ){
        self._createdBy =  createdBy
    }
    //---------------------------------------
    func getAssignedTo()->String{
        return self._assignedTo!
    }
    func setAssignedTo( assignedTo : String ){
        self._assignedTo = assignedTo
    }
    //-----------------------------------------
    func getCompleted()->Bool{
        return self._completed
    }
    func setCompleted( completed : Bool ){
        self._completed = completed
    }
    //----------------------------------------
    func getTaskID()->Int{
        return self._taskID
    }
    func setTaskID( taskID: Int ){
        self._taskID = taskID
    }
    
    
}
