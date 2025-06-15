# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Docker-based Python development environment with the following structure:
- Simple Python application (`app/app.py`) that prints "Hello Python!"
- Docker containerization with Python 3.11 base image
- Development environment setup with volume mounting for live code changes

## Key Commands

### Docker Development
```bash
# Build and run the container
docker-compose up --build

# Run container in detached mode
docker-compose up -d

# Execute commands inside the running container
docker-compose exec web bash

# Stop and remove containers
docker-compose down
```

### Python Environment
```bash
# Install dependencies (inside container)
pip install -r requirements.txt

# Run the main application
python app.py
```

## Architecture Notes

- **Containerized Development**: The application runs inside a Docker container with volume mounting (`./app:/app`) for development
- **Environment Configuration**: Uses Japanese locale (`jp_JP.UTF-8`) and JST timezone
- **Service Setup**: Single web service with interactive TTY enabled for development
- **Dependency Management**: Uses `requirements.txt` with OpenAI package as the main dependency
- **Startup Script**: `start.sh` provides alternative startup approach with cron daemon

## Development Workflow

The container is configured for interactive development with:
- Volume mounting for live code changes
- TTY enabled for interactive sessions
- Port 8094:8501 available but currently commented out
- Optional startup command via `start.sh` (currently disabled)