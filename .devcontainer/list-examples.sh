#!/bin/bash

echo "🤖 Available Pipecat Examples"
echo "============================="
echo
echo "Use 'setup-example <name>' to set up any of these examples:"
echo

# Check if examples directory exists
if [ ! -d "examples" ]; then
    echo "❌ Examples directory not found. Make sure you're in the project root."
    exit 1
fi

# List examples with descriptions
echo "📞 Communication Examples:"
echo "  simple-chatbot           - Basic voice-driven conversational bot"
echo "  phone-chatbot           - PSTN/SIP phone integration examples"
echo "  twilio-chatbot          - Twilio phone integration"
echo "  websocket               - WebSocket-based chatbot server"
echo

echo "🎨 Advanced Examples:"
echo "  storytelling-chatbot    - Collaborative storytime with AI-generated images"
echo "  translation-chatbot     - Real-time speech translation"
echo "  moondream-chatbot       - Vision-enabled chatbot (requires GPU)"
echo "  patient-intake          - Healthcare intake with function calling"
echo

echo "🔧 Integration Examples:"
echo "  daily-*                 - Various Daily.co integrations"
echo "  bot-ready-signalling    - WebRTC signaling examples"
echo "  p2p-webrtc              - Peer-to-peer WebRTC examples"
echo

echo "🛠️  Specialized Examples:"
echo "  news-chatbot            - News-based conversational bot"
echo "  freeze-test             - Connection freeze testing"
echo "  instant-voice           - Instant voice interaction"
echo "  local-input-select-stt  - Local speech-to-text selection"
echo

echo "📊 Monitoring & Deployment:"
echo "  sentry-metrics          - Error tracking with Sentry"
echo "  open-telemetry          - Observability examples"
echo "  deployment              - Various deployment examples"
echo

echo "🎮 Specialized AI:"
echo "  word-wrangler-gemini-live - Word game with Gemini Live"
echo "  fal-smart-turn          - Smart turn detection"
echo

echo "📚 Foundational:"
echo "  foundational            - Basic building blocks and tutorials"
echo

echo "Example usage:"
echo "  setup-example simple-chatbot"
echo "  cd examples/simple-chatbot/server"
echo "  source venv/bin/activate"
echo "  # Add your API keys to .env file"
echo "  python server.py"
echo

echo "💡 Pro tip: Each example has its own README with specific setup instructions!" 