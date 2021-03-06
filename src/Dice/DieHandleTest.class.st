Class {
	#name : #DieHandleTest,
	#superclass : #TestCase,
	#category : #Dice
}

{ #category : #tests }
DieHandleTest >> testAddingTwiceTheSameDice [
	| handle |
	handle := DieHandle new.
	handle addDie: (Die withFaces: 6).
	self assert: handle diceNumber = 1.
	handle addDie: (Die withFaces: 6).
	self assert: handle diceNumber = 2.
]

{ #category : #tests }
DieHandleTest >> testCreationAdding [
	| handle |
	handle := DieHandle new 
		addDie: (Die withFaces: 6);
		addDie: (Die withFaces: 10);		
		yourself.
	self assert: handle diceNumber = 2.
]

{ #category : #tests }
DieHandleTest >> testRolling [ 

	| handle |
	handle := DieHandle new 
		addDie: (Die withFaces: 6);
		addDie: (Die withFaces: 10);	
		yourself.
	100 timesRepeat: 
	[ |i| i:= handle roll. self assert: 1 < i & i < 17 ]
]

{ #category : #tests }
DieHandleTest >> testSimpleHandle [

	self assert: 2 D20 diceNumber = 2.
]

{ #category : #tests }
DieHandleTest >> testSumming [

	| handle |
	handle := 2 D20 + 3 D10.
	self assert: handle diceNumber = 5.
]
