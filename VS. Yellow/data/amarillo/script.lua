function onCreate()
	makeLuaSprite('Warning', 'Warning', -690, 0);
	setLuaSpriteScrollFactor('Warning', 0, 0);
	scaleObject('Warning', 1.375, 1.3);
	

	addLuaSprite('Warning', true);

	setProperty('gf.visible', false)
	doTweenAlpha('Warning', 'Warning', 0, 13, 'SineIn')

	makeLuaSprite('flash', 'Flash', -800, -600);
	setLuaSpriteScrollFactor('flash', 0, 0);
	scaleObject('flash', 5, 5);
end

function onStartCountdown()
	cameraSetTarget('dad')
end

function onUpdate(elapsed)
	if curBeat==308 then
		addLuaSprite('flash', true);
		doTweenAlpha('flash', 'flash', 0, .7, 'SineOut')

		setProperty('dad.visible', false)
		setProperty('health', 1)
	end
end