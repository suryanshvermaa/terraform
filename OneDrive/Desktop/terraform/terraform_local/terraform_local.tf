resource "local_file" "devops" {
    filename= "devops.txt"
    content = "Hi i am suryansh and currently, i am learning terraform!"
}

resource "random_string" "rand_string"{
    length= 15
    special =true
    override_special="!#$&*(){}[]@?_-"
}

output "rand_string" {
     value= random_string.rand_string[*].result
}