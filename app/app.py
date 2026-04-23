from flask import Flask, jsonify
import os

app = Flask(__name__)

# Version for testing Rollback
APP_VERSION = "1.0.0"

@app.route('/')
def home():
    return f"""
    <h1>Stark Industry: Suit Analysis Platform</h1>
    <p>Version: {APP_VERSION}</p>
    <p>Status: <span style='color: green;'>Online</span></p>
    <hr>
    <h3>Engine Diagnostics:</h3>
    <ul>
        <li>Reactor Output: 100%</li>
        <li>Flight Thrusters: Ready</li>
        <li>AI Assistance (JARVIS): Connected</li>
    </ul>
    """

@app.route('/health')
def health():
    # Simple health check endpoint
    return jsonify(status="healthy", version=APP_VERSION), 200

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 80))
    app.run(host='0.0.0.0', port=port)
