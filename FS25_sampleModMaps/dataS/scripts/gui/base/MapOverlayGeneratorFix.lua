--
-- MapOverlayGeneratorFix
--
-- @author:		JoPi
-- @date:		18/04/25
-- @version:	v1.0
-- @history:	v1.0 - initial version
--
-- free for non-commercial usage

MapOverlayGenerator.generateFruitTypeOverlay = Utils.overwrittenFunction(MapOverlayGenerator.generateFruitTypeOverlay, function(self, superFunc, growthStateFilter, fruitTypeFilter, ...)
	local newFruitTypeFilter = {};
	for i, displayCropType in ipairs(self.displayCropTypes) do
		newFruitTypeFilter[displayCropType.fruitTypeIndex] = fruitTypeFilter[i];
	end;
	return superFunc(self, growthStateFilter, newFruitTypeFilter, ...);
end);