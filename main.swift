//
//  main.swift
//  This program tests the stack class
//
//  Created by Matthew Lourenco on 22/03/18.
//  Copyright © 2018 MTHS. All rights reserved.
//

class MyStack<InType> {
	//this is a class that defines a stack

	enum MyError : Error {
    	case IndexOutOfRange(String)
	}

	private var list = [InType]()

	public func push(object: InType) {
		//append an object to the end of the stack
		list.append(object)
	}

	public func pop() throws -> InType {
		//pop the last object from the stack and return it

		if list.count == 0 {
			throw MyError.IndexOutOfRange("The list is empty")
		}

		let value = list[list.count - 1]
		list.removeLast()
		return value
	}
	
	public func getAt(index: Int) -> InType{
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
	let stackObject = MyStack<Int>()
	stackObject.push(object: Int(input!)!)
	print("Added \(stackObject.getAt(index: 0))")
	stackObject.printContents()
	print("Removed \(try stackObject.pop())")
	stackObject.printContents()
	print(try stackObject.pop())
}