Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'dices'
	],
	#category : #Dice
}

{ #category : #initialization }
DieHandle >> *Dice [  

]

{ #category : #initialization }
DieHandle >> addDie: aDie [

	dices add: aDie.

	
]

{ #category : #initialization }
DieHandle >> diceNumber [

	^ dices size
]

{ #category : #initialization }
DieHandle >> initialize [ 

	super initialize.
	dices := OrderedCollection new.
]

{ #category : #initialization }
DieHandle >> roll [

	^ dices inject: 0 into: [ :sum :i | sum + i roll ].
]
