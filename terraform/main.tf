resource "aws_instance" "Test_machine" {
    ami           = "ami-0f918f7e67a3323f0" # Update with your preferred AMI
    instance_type = "t2.micro"

    tags = {
        Name = "Test_machine"
    }
}