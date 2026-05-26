NAME := $(shell awk '/^name:/{print $$2}' daml.yaml)
VERSION := $(shell awk '/^version:/{print $$2}' daml.yaml)
DAR := .daml/dist/$(NAME)-$(VERSION).dar
DAR_DIR := dist

.PHONY: build
build:
	daml build
	mkdir -p $(DAR_DIR)
	cp $(DAR) $(DAR_DIR)/
