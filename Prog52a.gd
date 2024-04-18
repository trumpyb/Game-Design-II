extends Control


func _on_btn_calc_pressed():
	var length = int($txtLength.text)
	var width = int($txtWidth.text)
	
	var area = length * width
	var perim = 2*length + 2*width
	
	$lblArea.text = "Area: "+str(area)
	$lblPerim.text = "Perimeter: "+str(perim)

func _on_btn_clear_pressed():
	$lblArea.text = "Area:"
	$lblPerim.text = "Perimeter:"
	$txtLength.text = ""
	$txtWidth.text = ""


func _on_btn_exit_pressed():
	get_tree().quit()
