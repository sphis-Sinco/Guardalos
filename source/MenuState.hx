package;

class MenuState extends FlxState
{
	public var character:FlxSprite;

	override public function create():Void
	{
		character = new FlxSprite();
		character.loadGraphic(FileManager.getImageFile('menus/mainmenu-character'), true, 32, 32);
		character.animation.add('move', [0, 1], 12);
		character.animation.play('move');
		character.screenCenter();
		add(character);

		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
