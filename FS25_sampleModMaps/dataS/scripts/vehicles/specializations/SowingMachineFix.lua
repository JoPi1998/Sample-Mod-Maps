--
-- SowingMachineFix
--
-- @author:		JoPi
-- @date:		13/04/25
-- @version:	v1.0
-- @history:	v1.0 - initial version
--
-- free for non-commercial usage

-- INFO: removing the foliage type from the map i3d file should have the same effect and does not require this script

SowingMachine.onStartWorkAreaProcessing = Utils.appendedFunction(SowingMachine.onStartWorkAreaProcessing, function(self, dt)
	local spec = self.spec_sowingMachine;
	if spec.workAreaParameters.canFruitBePlanted then
		local fruitTypeDesc = g_fruitTypeManager:getFruitTypeByIndex(spec.workAreaParameters.seedsFruitType);
		if fruitTypeDesc ~= nil and not fruitTypeDesc.allowsSeeding then
			spec.showFruitCanNotBePlantedWarning = true;
			spec.workAreaParameters.canFruitBePlanted = false;
		end;
	end;
end);