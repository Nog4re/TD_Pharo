Class {
	#name : #TestMyNode,
	#superclass : #TestCase,
	#category : #TD4
}

{ #category : #tests }
TestMyNode >> testNextNode [
	|n1 n2|
	n1:= MyNode new.
	
	n2:= MyNode new.
	n2 value: 7.
	
	n1 nextNode: n2.
	
	
	self assert: n1 nextNode value equals: 7.
]

{ #category : #tests }
TestMyNode >> testPrevNode [
	|n1 n2|
	n1:= MyNode new.
	n1 value: 6.
	n2:= MyNode new.
	
	
	n2 prevNode: n1.
	
	
	self assert: n2 prevNode value equals: 6.
]

{ #category : #tests }
TestMyNode >> testValue [
	
	|n|
	n:= MyNode new.
	n value: 6.
	
	self assert: n value equals: 6.
]
