include .env

NOW := $(shell date +"%Y%m%d")

.PHONY: today
today:
	@echo "Today is ${NOW}"
	@touch docs/${NOW}.md
	@echo "# ${NOW}" >> docs/${NOW}.md


.PHONY: gcp.project.list
gcp.project.list:
	gcloud projects list

.PHONY: gcp.project.init
gcp.project.init:
	gcloud auth login
	gcloud auth application-default login
	pulumi config set gcp:project $(PROJECT_ID)
