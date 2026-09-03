#!/bin/bash

# Highrise Premium Bot - Installation Script

echo "🤖 Installing Highrise Premium Bot..."

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 is not installed. Please install Python 3.10+ first."
    exit 1
fi

echo "✅ Python found: $(python3 --version)"

# Create virtual environment
echo "📦 Creating virtual environment..."
python3 -m venv venv

# Activate virtual environment
echo "🔌 Activating virtual environment..."
source venv/bin/activate  # On Windows: venv\Scripts\activate

# Install dependencies
echo "📥 Installing dependencies..."
pip install -r requirements.txt

echo ""
echo "✅ Installation complete!"
echo ""
echo "📋 Next steps:"
echo "1. Edit main.py and update API_TOKEN and ROOM_ID"
echo "2. Run: python main.py"
echo ""
echo "🚀 To deploy to Render:"
echo "1. Push to GitHub"
echo "2. Go to render.com"
echo "3. Create new Web Service"
echo "4. Connect your GitHub repo"
echo "5. Set build command: pip install -r requirements.txt"
echo "6. Set start command: python main.py"
echo "7. Add environment variables (API_TOKEN, ROOM_ID)"
echo ""
