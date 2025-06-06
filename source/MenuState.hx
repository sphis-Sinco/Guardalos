package;

import flixel.tweens.FlxTween;

class MenuState extends FlxState
{
	public var character:FlxSprite;
	public var characterTween:Void->Void;

	override public function create():Void
	{
		character = new FlxSprite();
		character.loadGraphic(FileManager.getImageFile('menus/mainmenu-character'), true, 32, 32);
		character.animation.add('move', [0, 1], 6);
		character.animation.play('move');
		character.scale.set(2, 2);
		character.screenCenter(Y);
		add(character);

		characterTween = function()
		{
			character.x = -(character.width * 2);
			FlxTween.tween(character, {x: FlxG.width + character.width * 2}, 4, {
				onComplete: _tween ->
				{
					character.x = -(character.width * 2);
					characterTween();
				}
			});
		};

		characterTween();

		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
