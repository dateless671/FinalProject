//
//  TaskViewModel.swift
//  FinalProject
//
//  Created by Yernur Makenov on 06.12.2022.
//

import Foundation

class TaskViewModel{
    
    private var task: Task!
    
    private let taskType: [TaskType] = [
        TaskType(symbolName: "star", typeName: "Priority"),
        TaskType(symbolName: "iphone", typeName: "Develop"),
        TaskType(symbolName: "gamecontroller", typeName: "Gaming"),
        TaskType(symbolName: "wand.and.stars.inverse", typeName: "Editing")
    ]
    
    private var selectedIndex = -1 {
        didSet{
            // task type
            self.task.taskType = self.getTaskType()[selectedIndex]
            
        }
    }
    
    private var hours = Box(0)
    private var minutes = Box(0)
    private var seconds = Box(0)
    
    
    init() {
        task = Task(taskName: "", taskDescription: "", taskType: .init(symbolName: "", typeName: ""), seconds: 0, timeStamp: 0)
    }
    
    func setSelectedIndex(to value:Int){
        self.selectedIndex = value
    }
    func setTaskName(to value: String){
        self.task.taskName = value
    }
    func setTaskDescription(to value: String){
        self.task.taskDescription = value
    }
    func getSelectedIndex() -> Int{
        self.selectedIndex
    }
    func getTask() -> Task{
        return self.task
    }
    func getTaskType() -> [TaskType]{
        return self.taskType
    }
}
