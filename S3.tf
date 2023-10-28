resource "aws_s3_bucket" "project-s3" {
 count = length(var.s3-bucket-name)
  bucket = "${var.s3-bucket-name[count.index]}-${var.unique-id[count.index]}-${local.project-tag["env"]}"

  tags = local.project-tag
}