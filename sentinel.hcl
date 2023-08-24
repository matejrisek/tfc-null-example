policy "policy1" {
  source            = "foo.sentinel"
  enforcement_level = "hard-mandatory"

  params = {
    "string" = "Sample"
  }
}
