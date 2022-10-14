Class {
	#name : #MyNode,
	#superclass : #Object,
	#instVars : [
		'value',
		'nextNode',
		'prevNode'
	],
	#category : #TD4
}

{ #category : #accessing }
MyNode >> nextNode [
	^nextNode
]

{ #category : #accessing }
MyNode >> nextNode: aValue [
	nextNode:= aValue 
]

{ #category : #accessing }
MyNode >> prevNode [
	^prevNode
]

{ #category : #accessing }
MyNode >> prevNode: aValue [
	prevNode:= aValue
]

{ #category : #accessing }
MyNode >> value [
	^value
]

{ #category : #accessing }
MyNode >> value: aValue [
	value:= aValue 
]
