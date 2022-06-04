function onCreate()
	makeLuaSprite('Warning', 'Warning', -690, 0);
	setLuaSpriteScrollFactor('Warning', 0, 0);
	scaleObject('Warning', 1.375, 1.3);
	

	addLuaSprite('Warning', true);

	setProperty('gf.visible', false)
	doTweenAlpha('Warning', 'Warning', 0, 13, 'SineIn')
end

function onStartCountdown()
	cameraSetTarget('dad')
end