## Version Control Best Practices

This project includes a `.gitignore` file to prevent committing sensitive or unnecessary files (such as `.env`, Python cache files, and editor settings) to your repository. Always check that your `.env` and other local files are excluded from version control.

# Quick AI Project Starter (Docker Edition)

This repository provides a simple terminal-based chatbot using OpenAI's API, now fully containerized with Docker for easy setup and reproducibility.

## Features
- Chatbot powered by OpenAI (GPT-4o-mini)
- Zero local Python setup required—just use Docker
- Uses environment variables for API keys

## Files
- `app.py`: Main chatbot script
- `requirements.txt`: Python dependencies
- `Dockerfile`: Docker build instructions
- `docker-compose.yml`: (Optional) Compose file for easy management
- `.env`: Environment variables (not committed)

## Setup
1. **Clone this repository**
2. **Set your OpenAI API key:**
    - Copy the provided `.env.example` to `.env`:
       ```bash
       cp .env.example .env
       ```
    - Edit `.env` and fill in your actual OpenAI API key.
3. **Build the Docker image:**
   ```bash
   docker build -t app-docker-image .
   ```

## Usage

### Run with Docker
```bash
docker run --env-file .env -it app-docker-image
```

### Or use Docker Compose
```bash
docker compose up
```

Type your message and interact with the bot. Type `exit`, `bye`, or `quit` to end the session.

## Dependencies
All dependencies are managed via Docker and listed in `requirements.txt`:
- openai
- python-dotenv

## License
MIT (or specify your license)
