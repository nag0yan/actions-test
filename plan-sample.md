https://developer.hashicorp.com/terraform/tutorials/cli/plan
data.aws_ami.ubuntu: Reading...
data.aws_ami.ubuntu: Read complete after 0s [id=ami-055744c75048d8296]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # random_pet.instance will be created
  + resource "random_pet" "instance" {
      + id        = (known after apply)
      + length    = 2
      + separator = "-"
    }

  # module.ec2-instance.aws_instance.main will be created
  + resource "aws_instance" "main" {
## ...

Plan: 4 to add, 0 to change, 0 to destroy.

───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Saved the plan to: tfplan

To perform exactly these actions, run the following command to apply:
    terraform apply "tfplan"
