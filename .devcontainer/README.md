# Pipecat Devcontainer Setup

This devcontainer is optimized for working with Pipecat examples. It provides a complete development environment with Python 3.11, development tools, and helpful scripts.

## Quick Start

1. **Open in VS Code**: Make sure you have the "Dev Containers" extension installed, then:
   - Open this repository in VS Code
   - When prompted, click "Reopen in Container" or run `Dev Containers: Reopen in Container` from the command palette

2. **Set up an example**: Use the provided helper script:
   ```bash
   setup-example simple-chatbot
   ```
   
   This will:
   - Create a virtual environment in the example's server directory
   - Install all dependencies from requirements.txt
   - Copy env.example to .env (if it exists)

3. **Add your API keys**: Edit the `.env` file in your example's server directory:
   ```bash
   cd examples/simple-chatbot/server
   code .env
   ```

4. **Activate the environment and run**:
   ```bash
   cd examples/simple-chatbot/server
   source venv/bin/activate
   python server.py
   ```

## Available Examples

Run `setup-example <name>` for any of these:
- `simple-chatbot` - Basic voice-driven conversational bot
- `storytelling-chatbot` - Collaborative storytime experience
- `translation-chatbot` - Real-time translation bot
- `moondream-chatbot` - Vision-enabled chatbot
- `patient-intake` - Function-calling demonstration
- `phone-chatbot` - PSTN/SIP phone integration
- And many more in the `/examples` directory!

## What's Included

### Development Tools
- Python 3.11 with pip
- Git and Docker support
- Node.js 20 (for client examples)
- VS Code extensions for Python development
- Ruff for formatting and linting
- Pytest for testing

### VS Code Extensions
- Python language support with debugging
- Ruff formatter and linter
- Jupyter notebooks support
- Tailwind CSS support (for frontend examples)
- GitHub Copilot (if you have access)

### Port Forwarding
The following ports are automatically forwarded:
- 7860 - Common for Pipecat examples
- 8000 - FastAPI/Uvicorn default
- 3000 - React/Next.js development
- 5000 - Flask/general development

## Working with Multiple Examples

Each example should have its own virtual environment:

```bash
# Set up multiple examples
setup-example simple-chatbot
setup-example storytelling-chatbot

# Work with simple-chatbot
cd examples/simple-chatbot/server
source venv/bin/activate
python server.py

# Switch to storytelling-chatbot (in a new terminal)
cd examples/storytelling-chatbot/server
source venv/bin/activate
python bot_runner.py
```

## Environment Variables

Most examples require API keys for various services:
- OpenAI API key
- ElevenLabs API key  
- Daily API key
- Deepgram API key
- And others depending on the example

The `setup-example` script automatically creates a `.env` file from `env.example` when available. You'll need to add your actual API keys.

## Troubleshooting

### Virtual Environment Issues
If you have issues with the virtual environment:
```bash
cd examples/your-example/server
rm -rf venv
python -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
```

### Missing Dependencies
Some examples may require additional system dependencies. If you encounter issues, check the example's specific README.md file.

### Port Conflicts
If ports are already in use, you can modify the `forwardPorts` array in `.devcontainer/devcontainer.json`.

## Tips

1. **Keep terminals organized**: Use VS Code's integrated terminal to manage multiple examples
2. **Use the built-in debugger**: Set breakpoints in Python files and use F5 to debug
3. **Check logs**: Most examples output helpful logs to understand what's happening
4. **Read example READMEs**: Each example has specific setup instructions and requirements

## Need Help?

- Check the main [examples README](../examples/README.md)
- Visit the [Pipecat Discord](https://discord.gg/pipecat)
- Check individual example README files for specific instructions 