# Provider :
provider "aws" {
    region = var.AWS_REGION
}

# Create new user :
resource "aws_iam_user" "lb_user" {
    name = "lb000"
}

# Create new group
resource "aws_iam_group" "lb_group" {
  name = "lb-administrator"
}

# Adding user to group
resource "aws_iam_user_group_membership" "lb_user_add" {
  user = aws_iam_user.lb_user.name
  groups = [aws_iam_group.lb_group.name]
}

