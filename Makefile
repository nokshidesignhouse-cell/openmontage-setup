.PHONY: setup install dependencies run clean help

help:
	@echo "OpenMontage Setup Commands:"
	@echo "  make setup       - Install all dependencies and configure environment"
	@echo "  make install     - Install Python dependencies"
	@echo "  make run         - Run OpenMontage"
	@echo "  make clean       - Clean up temporary files"
	@echo "  make help        - Show this help message"

setup: install
	@echo "✅ OpenMontage setup complete!"
	@echo "📝 Next steps:"
	@echo "   1. Create a .env file with your API keys (if needed)"
	@echo "   2. Run: make run"

install:
	@echo "📦 Installing OpenMontage dependencies..."
	python3 -m pip install --upgrade pip
	python3 -m pip install -r requirements.txt
	@echo "✅ Dependencies installed successfully!"

run:
	@echo "🎬 Starting OpenMontage..."
	python3 main.py

clean:
	@echo "🧹 Cleaning up..."
	find . -type d -name __pycache__ -exec rm -rf {} + 2>/dev/null || true
	find . -type f -name "*.pyc" -delete
	@echo "✅ Cleanup complete!"
