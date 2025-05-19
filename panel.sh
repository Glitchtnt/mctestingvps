#!/bin/bash

# Display the banner
cat << "EOF"
███╗   ███╗ █████╗ ██╗  ██╗██╗███╗   ███╗ ██████╗ ██████╗ 
████╗ ████║██╔══██╗██║  ██║██║████╗ ████║██╔═══██╗██╔══██╗
██╔████╔██║███████║███████║██║██╔████╔██║██║   ██║██████╔╝
██║╚██╔╝██║██╔══██║██╔══██║██║██║╚██╔╝██║██║   ██║██╔═══╝ 
██║ ╚═╝ ██║██║  ██║██║  ██║██║██║ ╚═╝ ██║╚██████╔╝██║     
╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝     ╚═╝ ╚═════╝ ╚═╝     
                                                          
EOF

echo "🚀 Cloning the Oversee repository..."
git clone https://github.com/marwanbd83487/Oversee.git && cd Oversee

if [ $? -ne 0 ]; then
  echo "❌ Failed to clone or change directory to Oversee."
  exit 1
fi

echo "📦 Installing dependencies..."
npm install

echo "🌱 Seeding the database..."
npm run seed

echo "👤 Creating a new user..."
npm run createUser

echo "🚀 Starting Oversee..."
node .

echo "📢 Don't forget to subscribe to my YouTube channel for more content! 👉 https://youtube.com/@Glitchtnt 🎥🎮"
