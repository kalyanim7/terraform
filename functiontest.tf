variable "alphalist" {

  type = "list"
  default = [["a", "b"], ["b", "c", "d"], ["c"]]

description = "original list"
}

output "Original_list"{

value = "${var.alphalist}"

}
locals{
flatten_list = "${flatten(var.alphalist)}"
}

output "flatten_list"{
value = "${flatten(var.alphalist)}"

}

#output "Distinct_list"{
#value = "${distinct(flatten(var.alphalist))}"
#}

output "Distinct_list"{
value = "${distinct(local.flatten_list)}"
}

output "element_list" {
value = "${element(distinct(local.flatten_list), 2)}"

}

output "index_list" {
value = "${index(distinct(local.flatten_list), "a")}"

}

output "contains_value" {
value = "${contains(distinct(local.flatten_list), "a")}"

}

output "notcontains_value" {
value = "${contains(distinct(local.flatten_list), "g")}"

}


output "length_value" {
value = "${length(distinct(local.flatten_list))}"

}


output "fulllength_value" {
value = "${length(var.alphalist)}"

}


output "key_value" {
value = "${keys({a=1, e=2, d=3})}"

}

#output "merge_value" {
#value = "${merge((var.alphalist), [1,2,3])}"
#}


output "range_value" {
value = "${range(5)}"
}


output "range_value2" {
value = "${range(4,10,2)}"
}


output "reverse_value" {
value = "${reverse(var.alphalist)}"

}

output "setintersection_value" {
value = "${setintersection(var.alphalist)}"

}


output "setunion_value" {
value = "${setunion(var.alphalist)}"

}
