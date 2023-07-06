/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 1477C1BA
/// @DnDArgument : "key" "vk_up"
var l1477C1BA_0;
l1477C1BA_0 = keyboard_check(vk_up);
if (l1477C1BA_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 1AED0D0B
	/// @DnDApplyTo : {Alus}
	/// @DnDParent : 1477C1BA
	/// @DnDArgument : "direction" "image_angle"
	with(Alus) direction = image_angle;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 0D40F34D
	/// @DnDParent : 1477C1BA
	/// @DnDArgument : "speed" "5"
	speed = 5;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 74FEF382
/// @DnDArgument : "key" "vk_up"
/// @DnDArgument : "not" "1"
var l74FEF382_0;
l74FEF382_0 = keyboard_check(vk_up);
if (!l74FEF382_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 65F12F60
	/// @DnDParent : 74FEF382
	speed = 0;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 66B65F9F
/// @DnDArgument : "key" "vk_left"
var l66B65F9F_0;
l66B65F9F_0 = keyboard_check(vk_left);
if (l66B65F9F_0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 7D6E1B05
	/// @DnDParent : 66B65F9F
	/// @DnDArgument : "angle" "+2"
	/// @DnDArgument : "angle_relative" "1"
	image_angle += +2;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 2586AC35
/// @DnDArgument : "key" "vk_right"
var l2586AC35_0;
l2586AC35_0 = keyboard_check(vk_right);
if (l2586AC35_0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 5F62DB30
	/// @DnDParent : 2586AC35
	/// @DnDArgument : "angle" "-2"
	/// @DnDArgument : "angle_relative" "1"
	image_angle += -2;
}

/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
/// @DnDVersion : 1
/// @DnDHash : 5DB626E8
gravity = 1;