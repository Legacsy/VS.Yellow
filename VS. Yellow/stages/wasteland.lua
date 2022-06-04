
function onCreate()
makeLuaSprite('sky', 'wastelandBG', -800, -900);
makeLuaSprite('floor', 'wastelandGROUND', -1650, -550);
makeLuaSprite('mountains', 'wastelandMOUNTAINS', -800, -300);
makeLuaSprite('city', 'bgBUILDINGS', -500, -400);

setLuaSpriteScrollFactor('sky', .2, .2);
setLuaSpriteScrollFactor('floor', 1, 1);
setLuaSpriteScrollFactor('mountains', .2, .2);
setLuaSpriteScrollFactor('city', .3, .3);

scaleObject('sky', .75, .75);
scaleObject('floor', 1, 1);
scaleObject('mountains', .7, .7);
scaleObject('city', .7, .7);


addLuaSprite('sky', false);
addLuaSprite('mountains', false);
addLuaSprite('city', false);
addLuaSprite('floor', false);

	end