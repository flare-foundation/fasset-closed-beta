address=0xd2150783D0be9D8ce64B956dbF98c09FdBccB0
agents=$(./user-bot.sh agents --all -f FfakeXRP | grep -oP ^[0-9a-zA-Z]{40})

if echo "$agents" | grep -q "$address"; then
  echo "Correct configuration setup!!"
else
  echo "Invalid configuration setup!"
fi