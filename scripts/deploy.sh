
#!/bin/bash

set -e

echo "🚀 Starting DataCollectPro deployment..."

# Environment validation
if [ -z "$NODE_ENV" ]; then
    export NODE_ENV=production
fi

echo "📋 Environment: $NODE_ENV"

# Install dependencies
echo "📦 Installing dependencies..."
npm install --production

# Build client
echo "🏗️ Building client application..."
cd client
npm run build
cd ..

# Run database migrations
echo "🔄 Running database migrations..."
npm run migrate

# Start application
echo "🌐 Starting DataCollectPro server..."
npm start
