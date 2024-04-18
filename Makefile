.PHONY: format_swagger

# Check if swag is installed
SWAG_INSTALLED := $(shell command -v swag 2> /dev/null)

# Define the target to format Swagger configuration
format_swagger:
	@if [ ! "$(SWAG_INSTALLED)" ]; then \
		echo "Swag is not installed. Please run 'make swag_install' to install swag"; \
	else \
		swag fmt; \
	fi

# Define the target to install swag
swag_install:
	go install github.com/swaggo/swag/cmd/swag@latest
