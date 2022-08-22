default:
	blockMesh
	surfaceFeatureExtract
	decomposePar -force
	foamJob -parallel -screen snappyHexMesh -overwrite
	reconstructParMesh -constant
	decomposePar -force
	foamJob -parallel -screen potentialFoam
	foamJob -parallel -screen simpleFoam
	reconstructPar
