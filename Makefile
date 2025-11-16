.PHONY: help list up down restart logs ps clean

# Default target
help:
	@echo "Docker Compose Services Management"
	@echo ""
	@echo "Usage:"
	@echo "  make list                    - List all available services"
	@echo "  make up <service>            - Start a service"
	@echo "  make down <service>          - Stop a service"
	@echo "  make restart <service>       - Restart a service"
	@echo "  make logs <service>          - View service logs"
	@echo "  make ps <service>            - Show service status"
	@echo "  make clean <service>         - Stop service and remove volumes"
	@echo ""
	@$(MAKE) --no-print-directory list
	@echo ""
	@echo "Examples:"
	@echo "  make up postgres"
	@echo "  make logs kafka"
	@echo "  make down redis"

list:
	@echo "Available services:"
	@ls -1 services/ | grep -v ".md" | sed 's/^/  /'

up:
	@if [ -z "$(SERVICE)" ] && [ -z "$(filter-out $@,$(MAKECMDGOALS))" ]; then \
		echo "Error: Service name required. Usage: make up <service>"; \
		exit 1; \
	fi
	@SERVICE_NAME=$(or $(SERVICE),$(filter-out $@,$(MAKECMDGOALS))); \
	docker compose -f services/$$SERVICE_NAME/compose.yaml up -d

down:
	@if [ -z "$(SERVICE)" ] && [ -z "$(filter-out $@,$(MAKECMDGOALS))" ]; then \
		echo "Error: Service name required. Usage: make down <service>"; \
		exit 1; \
	fi
	@SERVICE_NAME=$(or $(SERVICE),$(filter-out $@,$(MAKECMDGOALS))); \
	docker compose -f services/$$SERVICE_NAME/compose.yaml down -v

restart:
	@if [ -z "$(SERVICE)" ] && [ -z "$(filter-out $@,$(MAKECMDGOALS))" ]; then \
		echo "Error: Service name required. Usage: make restart <service>"; \
		exit 1; \
	fi
	@SERVICE_NAME=$(or $(SERVICE),$(filter-out $@,$(MAKECMDGOALS))); \
	docker compose -f services/$$SERVICE_NAME/compose.yaml restart

logs:
	@if [ -z "$(SERVICE)" ] && [ -z "$(filter-out $@,$(MAKECMDGOALS))" ]; then \
		echo "Error: Service name required. Usage: make logs <service>"; \
		exit 1; \
	fi
	@SERVICE_NAME=$(or $(SERVICE),$(filter-out $@,$(MAKECMDGOALS))); \
	docker compose -f services/$$SERVICE_NAME/compose.yaml logs -f

ps:
	@if [ -z "$(SERVICE)" ] && [ -z "$(filter-out $@,$(MAKECMDGOALS))" ]; then \
		echo "Error: Service name required. Usage: make ps <service>"; \
		exit 1; \
	fi
	@SERVICE_NAME=$(or $(SERVICE),$(filter-out $@,$(MAKECMDGOALS))); \
	docker compose -f services/$$SERVICE_NAME/compose.yaml ps

clean:
	@if [ -z "$(SERVICE)" ] && [ -z "$(filter-out $@,$(MAKECMDGOALS))" ]; then \
		echo "Error: Service name required. Usage: make clean <service>"; \
		exit 1; \
	fi
	@SERVICE_NAME=$(or $(SERVICE),$(filter-out $@,$(MAKECMDGOALS))); \
	docker compose -f services/$$SERVICE_NAME/compose.yaml down -v

# Catch-all target to prevent "No rule to make target" errors when using service names as arguments
%:
	@:
