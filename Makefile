test:
	@cd tests && terraform init
	@cd tests && terraform validate
	@cd tests && terraform plan
	@cd tests && terraform apply
