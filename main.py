#!/usr/bin/env python3
"""
OpenMontage - AI-powered Video Production System
Main entry point for the application
"""

import os
import sys
from pathlib import Path
from dotenv import load_dotenv
import click

# Load environment variables
load_dotenv()

# Create necessary directories
output_dir = Path(os.getenv('VIDEO_OUTPUT_DIR', './output'))
output_dir.mkdir(exist_ok=True)

@click.group()
def cli():
    """OpenMontage - Transform ideas into videos with AI"""
    pass

@cli.command()
@click.option('--prompt', prompt='Enter your video idea', help='Description of the video to create')
@click.option('--output', default='output', help='Output directory for the video')
@click.option('--quality', default='1080p', help='Video quality (720p, 1080p, 4k)')
def create(prompt, output, quality):
    """Create a new video from a text prompt"""
    click.echo(f"🎬 Creating video: {prompt}")
    click.echo(f"📊 Quality: {quality}")
    click.echo(f"📁 Output: {output}")
    
    try:
        # Placeholder for video creation logic
        click.echo("\n✅ Video creation started!")
        click.echo("📝 Steps:")
        click.echo("  1. Analyzing prompt...")
        click.echo("  2. Generating script...")
        click.echo("  3. Creating visuals...")
        click.echo("  4. Rendering video...")
        click.echo("\n💡 Note: This is a setup template. Connect to AI agent for full functionality.")
        
    except Exception as e:
        click.echo(f"❌ Error: {str(e)}", err=True)
        sys.exit(1)

@cli.command()
def status():
    """Check OpenMontage status and configuration"""
    click.echo("🔍 OpenMontage Status Report")
    click.echo("=" * 50)
    
    # Check Python version
    click.echo(f"✅ Python version: {sys.version.split()[0]}")
    
    # Check environment
    api_keys = {
        'GOOGLE_VEO_API_KEY': 'Google Veo',
        'RUNWAY_API_KEY': 'Runway',
        'OPENAI_API_KEY': 'OpenAI',
        'ANTHROPIC_API_KEY': 'Anthropic'
    }
    
    click.echo("\n🔑 API Configuration:")
    for key, name in api_keys.items():
        value = os.getenv(key, '')
        status_icon = "✅" if value else "⚪"
        click.echo(f"  {status_icon} {name}: {'Configured' if value else 'Not configured'}")
    
    # Check output directory
    output_dir = Path(os.getenv('VIDEO_OUTPUT_DIR', './output'))
    click.echo(f"\n📁 Output directory: {output_dir}")
    click.echo(f"   {'✅' if output_dir.exists() else '❌'} {'Exists' if output_dir.exists() else 'Missing'}")
    
    click.echo("\n" + "=" * 50)
    click.echo("🚀 Ready to create videos!")

@cli.command()
def config():
    """Show current configuration"""
    click.echo("⚙️  OpenMontage Configuration")
    click.echo("=" * 50)
    
    config_vars = [
        ('VIDEO_OUTPUT_DIR', './output'),
        ('VIDEO_QUALITY', '1080p'),
        ('VIDEO_FPS', '30'),
        ('TTS_ENGINE', 'piper'),
        ('TTS_VOICE', 'en_US-amy-medium'),
        ('LOG_LEVEL', 'INFO'),
        ('DEBUG_MODE', 'false'),
    ]
    
    for var, default in config_vars:
        value = os.getenv(var, default)
        click.echo(f"{var}: {value}")
    
    click.echo("=" * 50)
    click.echo("📝 To change configuration, edit .env file")

if __name__ == '__main__':
    cli()
