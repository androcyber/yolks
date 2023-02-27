#
#
#   A compiler for Counter-Strike plugins. 
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

# Startup Variables
MODIFIED_STARTUP=$(echo -e ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')
echo -e ":/home/container$ ${MODIFIED_STARTUP}"
echo "HIVERIA | Sunucu başlatılıyor..."

# Run the Server
eval ${MODIFIED_STARTUP}
