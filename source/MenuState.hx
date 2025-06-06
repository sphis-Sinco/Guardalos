package;

class MenuState extends FlxState
{
	public var character:FlxSprite;

	override public function create():Void
	{
		character = new FlxSprite();
		character.loadGraphic(FileManager.getImageFile('menus/mainmenu-character'));
		add(character);

		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
