Class {
	#name : #TestMyList,
	#superclass : #TestCase,
	#category : #TD4
}

{ #category : #tests }
TestMyList >> testAdd [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| l |
	l:= MyList new.
	
	l add: 5.
	
	
	self assert: l size equals: 1.
	self assert: l isEmpty equals: false.
	self assert: (l at: 0) equals: 5.
	l add: 9.
	self assert: (l at: 0) equals: 5.
	self assert: (l at: 1) equals: 9.

]

{ #category : #tests }
TestMyList >> testAt [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| l |
	l:= MyList new.
	
	l add: 5.
	l add: 6.
	l add: 7.
	l add: 8.
	

	self assert: (l at: 0) equals: 5.
	self assert: (l at:1) equals: 6.
	self assert: (l at: 2) equals: 7.
	self assert: (l at: 3) equals: 8.
	self assert: (l at: 5) equals: 6.
	
	
]

{ #category : #tests }
TestMyList >> testInitialize [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| l |
	l:= MyList new.
	
	self assert: l size equals: 0.
	self assert: l isEmpty equals: true.
]

{ #category : #tests }
TestMyList >> testIsEmpty [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| l |
	l:= MyList new.
	
	
	self assert: l isEmpty equals: true.
]

{ #category : #tests }
TestMyList >> testSize [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| l |
	l:= MyList new.
	
	self assert: l size equals: 0.
	
]
