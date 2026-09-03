# Highrise Premium Bot - Deployment Guide

## What You Need:

1. **Bot API Token**: `b5d74823255656efc10d9d8f386180dca66a4ad99662afb3e29f11b3970c8941` ✅
2. **Room ID**: `6a394123cd2ff755d187ae89` ✅
3. **User ID**: Not required (bot uses its own credentials)

## Features Included:

✅ **200+ Emotes** - All included in the bot  
✅ **VIP System** - Users can buy VIP with !buyvip  
✅ **Floor/Teleport System** - Set custom points with !setfloor and !tp  
✅ **Prison System** - Send rule breakers to prison with !prison  
✅ **Full Moderation** - kick/ban/mute/freeze/void commands  
✅ **Subscriber Broadcast** - DM subs with !broadcast  
✅ **Auto Greeting** - Welcomes users on join  
✅ **Fun Commands** - rizz, roast, slap, punch, bomb  
✅ **Anti-Cheat System** - Position tracking  
✅ **24/7 Uptime** - Runs continuously on Render  

## Deployment Steps (Render):

### Step 1: Push to GitHub
```bash
git clone https://github.com/joshuaoluka/highrise-premium-bot.git
cd highrise-premium-bot
git add .
git commit -m "Deploy premium bot"
git push origin main
```

### Step 2: Create Render Service
1. Go to https://render.com
2. Click "New +" → "Web Service"
3. Connect your GitHub repository
4. Fill in:
   - **Name**: `highrise-premium-bot`
   - **Runtime**: `Python 3.10+`
   - **Build Command**: `pip install -r requirements.txt`
   - **Start Command**: `python main.py`

### Step 3: Set Environment Variables
In Render Dashboard → Environment:
```
API_TOKEN=b5d74823255656efc10d9d8f386180dca66a4ad99662afb3e29f11b3970c8941
ROOM_ID=6a394123cd2ff755d187ae89
```

### Step 4: Deploy
Click "Deploy" and wait ~5 minutes for the bot to start!

## Command List:

### VIP Commands:
- `!buyvip` - Purchase VIP status
- `!vipstatus` - Check VIP status

### Moderation:
- `!kick @username` - Kick user
- `!ban @username` - Ban user
- `!mute @username` - Mute user
- `!unmute @username` - Unmute user
- `!freeze @username` - Freeze user
- `!unfreeze @username` - Unfreeze user

### Prison:
- `!prison @username` - Send to prison
- `!release @username` - Release from prison

### Floors/Teleport:
- `!setfloor name x y z` - Set custom floor location
- `!tp floor_name` - Teleport to floor
- `!floors` - List all floors

### Fun Commands:
- `!rizz` - Get a pickup line
- `!roast @username` - Roast someone
- `!slap @username` - Slap someone
- `!punch @username` - Punch someone
- `!bomb` - Throw a bomb

### Subscriber System:
- `!subscribe` - Subscribe for announcements
- `!broadcast message` - Send broadcast

### Other:
- `!emote name` - Send 200+ emotes (love, fire, cool, happy, etc.)
- `!help` - Show all commands
- `!checkanticheat` - Verify anti-cheat is active

## What Data is Used:

- **API Token**: Authenticates the bot with Highrise servers
- **Room ID**: Identifies which room the bot joins
- **User ID**: NOT NEEDED - the bot automatically identifies itself

## 24/7 Uptime on Render:

- Free tier sleeps after 15 mins of inactivity
- Upgrade to **Paid Plan** ($7/month) for true 24/7 uptime
- Or use a uptime monitoring service (UptimeRobot) to ping the bot every 5 mins

## Troubleshooting:

**Bot not responding?**
- Check Render logs: Dashboard → Bot Service → Logs
- Verify API Token and Room ID are correct
- Ensure bot is invited to the room

**Commands not working?**
- Make sure you're typing exactly: `!command`
- Check the bot has proper permissions in the room

**Want to add more features?**
- Edit `main.py` and push to GitHub
- Render will auto-redeploy within 2-3 mins

## Support:
For issues with Highrise SDK, visit: https://github.com/highrise-game/sdk-py
