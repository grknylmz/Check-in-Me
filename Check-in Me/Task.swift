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
    var _taskDescription: String = ""
    var _createdBy: String = ""
    var _assignedTo: String = ""
    var _completed: Bool = false
    var _taskID: Int = 0
    
    
    
    init( taskName : String, taskTime: String ){ //, taskDescription: String,createdBy: String ,assignedTo:
    //String, completed: Bool, taskID: Int ) {
        
        self._taskName = taskName
        self._taskTime = taskTime
        
    }
    
    
    // MARK: TaskName
    func getTaskName()->String{
        return self._taskName!
    }
    func setTaskName ( taskName : String ){
        self._taskName = taskName
    }
    
    
    // MARK: TaskTime
    func getTaskTime()->String{
        return self._taskTime!
    }
    func setTaskTime ( taskTime : String ){
        self._taskTime = taskTime
    }
    
    
    // MARK: TaskDescription
    func getTaskDescription()->String{
        return self._taskDescription
    }
    func setTaskDescription( taskDescription : String ){
        self._taskDescription = taskDescription
    }
    
    
    //MARK: CreatedBy
    func getCreatedBy()->String{
        return self._createdBy
    }
    func setCreatedBy( createdBy : String ){
        self._createdBy =  createdBy
    }
    
    
    //MARK: AssignedTo
    func getAssignedTo()->String{
        return self._assignedTo
    }
    func setAssignedTo( assignedTo : String ){
        self._assignedTo = assignedTo
    }
    
    
    //MARK: Completed
    func getCompleted()->Bool{
        return self._completed
    }
    func setCompleted( completed : Bool ){
        self._completed = completed
    }
    
    
    //MARK:TaskID
    func getTaskID()->Int{
        return self._taskID
    }
    func setTaskID( taskID: Int ){
        self._taskID = taskID
    }
    
    
}
