Class {
	#name : #MyList,
	#superclass : #Object,
	#instVars : [
		'size',
		'isEmpty',
		'begin',
		'end'
	],
	#category : #TD4
}

{ #category : #adding }
MyList >> add: aValue [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| node |
	node:= MyNode new.
	node value: aValue.
	isEmpty
	ifTrue: [ 
		
		node prevNode: node.
		node nextNode: node.
		begin:= node.
		end:= node.
		isEmpty:= false.
		size:= size + 1.
		]
	ifFalse: [ 
		end nextNode: node.
		begin prevNode: node.
		node value: aValue.
		node prevNode: end.
		node nextNode: begin.
		end:=node.
		size:= size + 1.
		 ].
]

{ #category : #accessing }
MyList >> at: index [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| node |
	isEmpty
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
	isEmpty
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
	isEmpty:=true.
	begin:=nilNode.
	end:=nilNode.
	
	
]

{ #category : #accessing }
MyList >> isEmpty [
	^isEmpty
]

{ #category : #accessing }
MyList >> size [
	^size
]
