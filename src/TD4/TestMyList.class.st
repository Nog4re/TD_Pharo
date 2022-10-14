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
	self assert: (l at: 1) equals: 5.
	l add: 9.
	self assert: (l at: 1) equals: 5.
	self assert: (l at: 2) equals: 9.

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
	

	self assert: (l at: 1) equals: 5.
	self assert: (l at:2) equals: 6.
	self assert: (l at: 3) equals: 7.
	self assert: (l at: 4) equals: 8.
	self assert: (l at: 6) equals: nil.
	
	
]

{ #category : #tests }
TestMyList >> testAtPut [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| l |
	l:= MyList new.
	
	l add: 5.
	l add: 6.
	l add: 7.
	l add: 8.
	
	l at: 3 put:6.

	self assert: (l at: 1) equals: 5.
	self assert: (l at:2) equals: 6.
	self assert: (l at: 3) equals: 6.
	self assert: (l at: 4) equals: 8.
	self assert: (l at: 6) equals: nil.
	
	l at: 8 put:6.
	
	self assert: (l at: 1) equals: 5.
	self assert: (l at:2) equals: 6.
	self assert: (l at: 3) equals: 6.
	self assert: (l at: 4) equals: 8.
	self assert: (l at: 6) equals: nil.
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

{ #category : #removing }
TestMyList >> testRemoveAt [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| l |
	l:= MyList new.
	
	l add: 6.
	l add: 'lol'.
	l add: 36.
	l removeAt: 2.
	
	self assert: l size equals: 2.
	self assert: (l at: 1) equals: 6.
	self assert: (l at: 2) equals: 36.
	self assert: (l at: 3) equals: nil.
	
	l removeAt: 2.
	
	self assert: l size equals: 1.
	self assert: (l at: 1) equals: 6.
	self assert: (l at: 2) equals: nil.
	
	l removeAt: 1.
	
	self assert: l size equals: 0.
	self assert: (l at: 1) equals: nil.
	self assert: (l at: 2) equals: nil.
]

{ #category : #tests }
TestMyList >> testSize [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| l |
	l:= MyList new.

	
	self assert: l size equals: 0.
	
	l add: 6.
	l add: 'lol'.
	
	self assert: l size equals: 2.
	
]
