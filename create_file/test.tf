resource "local_file" "name1" {
	filename="/deletethefile.txt"
 	content="just terraform checking"

}

resource "random_string" "ran-string"{
	length=10
	special=true
	override_special="<>#$"
		
}

output "ran-string"{
	value=random_string.ran-string[*].result
}
