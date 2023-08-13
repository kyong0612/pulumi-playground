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
	gcloud config set project $(PROJECT_ID)
	gcloud auth application-default login
