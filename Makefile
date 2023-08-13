include .env


.PHONY: gcp.project.list
gcp.project.list:
	gcloud projects list

.PHONY: gcp.project.init
gcp.project.init:
	gcloud auth login
	gcloud config set project $(PROJECT_ID)
	gcloud auth application-default login
