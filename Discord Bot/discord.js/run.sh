#
#
#   Counter-Strike server software built using Rehlds. 
#
#
#                   SOCIAL MEDIA
#   Youtube: https://www.youtube.com/androcyber
#   Instagram: https://www.instagram.com/androcyber0
#   Twitter: https://www.twitter.com/androcyber0
#   Discord: https://www.discord.com/invite/EBUS4TYSY2
#   Github: https://www.github.com/androcyber
#
#
#   Made by androcyber.
#
cd /home/container

INTERNAL_IP=$(ip route get 1 | awk '{print $(NF-2);exit}')
export INTERNAL_IP

# Startup Variables
echo "-------------------------------------------------------------------------------------------------------------"
echo "HIVERIA | Sunucu başlatılıyor..."
echo "-------------------------------------------------------------------------------------------------------------"

# Run the Server
eval ${STARTUP}
