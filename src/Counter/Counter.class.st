"
Compteur
Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	count:		<Object>


    Implementation Points
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #Counter
}

{ #category : #accessing }
Counter class >> startingAt: anInteger [
	
	^ self new count: anInteger 
]

{ #category : #accessing }
Counter >> count [ 
	^ count
]

{ #category : #accessing }
Counter >> count: anInteger [ 
	count := anInteger
]

{ #category : #accessing }
Counter >> decrement [ 

	count := count - 1
]

{ #category : #accessing }
Counter >> decrement2 [ 

	count := count - 2
]

{ #category : #accessing }
Counter >> increment [ 

	count := count + 1
]

{ #category : #accessing }
Counter >> initialize [ 

	super initialize.
	count := 0
]
