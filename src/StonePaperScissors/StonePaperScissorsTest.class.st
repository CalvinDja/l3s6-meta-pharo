Class {
	#name : #StonePaperScissorsTest,
	#superclass : #TestCase,
	#category : #StonePaperScissors
}

{ #category : #tests }
StonePaperScissorsTest >> testPaperIsWinning [

	self assert: (Stone new play: Paper new) equals: #paper
]

{ #category : #tests }
StonePaperScissorsTest >> testScissorsIsWinning [

	self assert: (Scissors new play: Paper new) equals: #scissors
]

{ #category : #tests }
StonePaperScissorsTest >> testStoneAgainsStone [

	self assert: (Stone new play: Stone new) equals: #draw
]

{ #category : #tests }
StonePaperScissorsTest >> testStonelsWinning [

	self assert: (Stone new play: Scissors new) equals: #stone
]
