Class {
	#name : #MyList,
	#superclass : #Object,
	#instVars : [
		'size',
		'begin',
		'end'
	],
	#category : #TD4
}

{ #category : #adding }
MyList >> add: aValue [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| lastNode  newNode|
	lastNode:= end prevNode.
	
	newNode := MyNode new.
	newNode value: aValue.
	newNode nextNode: end.
	newNode prevNode: lastNode.
	
	lastNode nextNode: newNode.
	end prevNode: newNode.
	size:= size + 1.
]

{ #category : #accessing }
MyList >> at: index [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| node |
	(self isEmpty or: index> size)
	ifTrue: [ 
		^nil
		 ]
	ifFalse: [ 
		node:=begin.
		1 to: index do: [ 
			:i|node:= node nextNode
			 ]
		 ].
	 ^(node value)
]

{ #category : #accessing }
MyList >> at: index put:aValue [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| node |
	(self isEmpty or: index > size)
	ifTrue: [ 
		^nil
		 ]
	ifFalse: [ 
		node:=begin.
		1 to: index do: [ 
			:i|node:= node nextNode
			 ].
		node value: aValue.
		 ].
	 
	
]

{ #category : #initialization }
MyList >> initialize [

	|nilNode|
	
	nilNode:= MyNode new.
	nilNode value:nil.
	nilNode prevNode: nilNode.
	nilNode nextNode: nilNode.
	super initialize.
	size:=0.
	begin:=nilNode.
	end:=nilNode.
	
	
]

{ #category : #accessing }
MyList >> isEmpty [
	^(size == 0)
]

{ #category : #adding }
MyList >> removeAt: anIndex [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| lastNode  nextNode|
	
	(self isEmpty or: anIndex > size)
	ifTrue: [ 
		^nil
		 ]
	ifFalse: [ 
		lastNode:=begin.
		1 to: anIndex - 1 do: [ 
			:i|lastNode:= lastNode nextNode
			 ].
		 ].
	nextNode:= lastNode nextNode nextNode.
	
	lastNode nextNode: nextNode.
	nextNode prevNode: lastNode.
	
	size:= size - 1.
]

{ #category : #accessing }
MyList >> size [
	^size
]
