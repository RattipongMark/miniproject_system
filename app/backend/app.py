from flask import Flask, jsonify
from redis import Redis
import os

app = Flask(__name__)
redis = Redis(host='db', port=6379)

@app.route('/api/stats')
def stats():
    # Increment view counter in Redis
    hits = redis.incr('hits')
    return jsonify({
        "status": "Online",
        "suit_count": 42,
        "active_mission": "Save the World",
        "total_analysis_count": hits,
        "version": "2.0.0"
    })

@app.route('/health')
def health():
    return jsonify(status="healthy"), 200

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
