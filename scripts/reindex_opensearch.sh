#!/bin/bash
# OpenSearch Reindex Script for Sail
# Run from the project root or server directory

# Navigate to server directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

if [ -d "$PROJECT_ROOT/server" ]; then
    cd "$PROJECT_ROOT/server"
elif [ -f "manage.py" ]; then
    : # Already in server dir
else
    echo "❌ Cannot find server directory. Run from project root."
    exit 1
fi

echo "🔄 Reindexing OpenSearch..."
echo ""

# Check if OpenSearch is running
if ! curl -s http://localhost:9200 > /dev/null 2>&1; then
    echo "❌ OpenSearch is not running on localhost:9200"
    echo "   Start it with: docker-compose up -d opensearch"
    exit 1
fi

echo "✅ OpenSearch is running"
echo ""

# Run the reindex command
python manage.py search_reindex

echo ""
echo "✅ Reindexing complete!"
