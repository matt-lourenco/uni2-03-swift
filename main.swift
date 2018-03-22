//
//  main.swift
//  This program tests the stack class
//
//  Created by Matthew Lourenco on 22/03/18.
//  Copyright © 2018 MTHS. All rights reserved.
//

class MyStack {
	//this is a class that defines a stack
	private var list: [Int] = []

	public func push(integer: Int) {
		//append an integer to the end of the stack
		list.append(integer)
	}

	public func pop() throws -> Int {
		//pop the last object from the stack and return it
		
		//if list.count == 0 {
		//	throw new 
		//}

		let value: Int = list[list.count - 1]
		list.removeLast()
		return value
	}
	
	public func getAt(index: Int) -> Int{
		//This method returns the item at the given index
		return list[index]
	}

	public func printContents() {
		//This method prints a string version of the array
		print("\(list)")
	}
}

print("enter an integer")
let input: String? = readLine(strippingNewline: true)
if Int(input!) != nil {
	let stackObject = MyStack()
	stackObject.push(integer: Int(input!)!)
	print("Added \(stackObject.getAt(index: 0))")
	stackObject.printContents()
	print("Removed \(stackObject.pop())")
	stackObject.printContents()
	stackObject.pop()
}