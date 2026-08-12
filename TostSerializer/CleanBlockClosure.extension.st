Extension { #name : 'CleanBlockClosure' }

{ #category : '*TostSerializer' }
CleanBlockClosure >> correctTostMaterializationWith: materializedWordSize [
	"CleanBlockClosure (and its subclass ConstantBlockClosure) has no difference in binary presentation in 32 and 64 bit images.
	Therefore nothing to do here"

	
]

{ #category : '*TostSerializer' }
CleanBlockClosure class >> createTostInstanceWith: aTostTransporter [
	"CleanBlockClosure has no difference in binary presentation in 32 and 64 bit images.
	Therefore the instantiation method here is simplified to Object version"

	^ self basicNew: aTostTransporter readPositiveInteger
]

{ #category : '*TostSerializer' }
CleanBlockClosure >> writeTostBodyWith: aTostTransporter [
	"CleanBlockClosure has no difference in binary presentation in 32 and 64 bit images.
	Therefore the serialization method here is simplified to Object version"

	aTostTransporter writePositiveInteger: self size
]
