extends Control



func _on_button_pressed():
	$Label.text = "My name is Benjamin Trumpy. I am proficient in Python, C++, TI Extended BASIC, and HTML"


func _on_button_2_pressed():
	$Label.text = ""


func _on_button_3_pressed():
	get_tree().quit()
