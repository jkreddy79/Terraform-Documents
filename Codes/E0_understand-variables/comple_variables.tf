# Lists with Integers
variable "mylist" {
    type = list(number)
    default = [1,2,3]
}

# Lists with Strings
variable "mylist-1" {
    type = list(string)
    default = ["hello", "world"]
}

# Tuples
variable "mytuples" {
    default = ["Hello My age is", 20]
}

# Map 
variable "mymap" {
    type = map
    default = {
        company_name = "Amazon"
        profile = "Devops Engineer"
        Experience = 15
    }
}

# Objects 
variable "myobject" {
    default = {
        name = "Arun"
        Age = 15
    }
}