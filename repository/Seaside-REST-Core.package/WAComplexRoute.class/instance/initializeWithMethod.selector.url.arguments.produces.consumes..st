initialization
initializeWithMethod: aString selector: aSymbol url: aUrl arguments: aCollectionOfStrings produces: aProducesMimeTypeMatch consumes: aConsumesMimeTypeMatch
	self
		initializeWithMethod: aString
		selector: aSymbol
		produces: aProducesMimeTypeMatch
		consumes: aConsumesMimeTypeMatch.
	pathMatches := self buildPathMatchesFrom: aUrl arguments: aCollectionOfStrings.
	parameterMatches := Dictionary new.
	self initializeQueryFieldParameters: aUrl queryFields arguments: aCollectionOfStrings.
	isOverlyComplex := pathMatches anySatisfy: [ :each | each matchesJustOneElement not ]