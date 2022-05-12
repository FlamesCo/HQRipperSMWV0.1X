## write a game generator idea
echo "Fetching api ideas for nintendo romhacks for smwcentral.net"
echo "Please wait..."
## fetch api ideas
api=$(curl -s https://api.github.com/repos/smwcentral/romhacks/issues?state=open | jq -r '.[] | .title')
## generate a random new romhack name and lore and save it to a txt file in documents
echo "Generating a new romhack name and lore..."
echo "Please wait..."
## generate a random new romhack name and lore and save it to a txt file in documents
newname=$(echo $api | cut -d " " -f 1)
newlore=$(echo $api | cut -d " " -f 2)
## ask for a new romhack name and lore
echo "Enter a new romhack name"
read newname
echo "Enter a new romhack lore"
read newlore
echo "New romhack name: $newname"

echo "New romhack lore: $newlore"
echo "Saving to documents..."
## save to documents
 ## generate a .rtf file where you want to save your romhack
echo "Generating a .rtf file..."
echo "Please wait..."
## generate a .rtf file where you want to save your romhack
touch ~/Documents/$newname.rtf
echo "Romhack name: $newname" >> ~/Documents/$newname.rtf
echo "Romhack lore: $newlore" >> ~/Documents/$newname.rtf
echo "Romhack saved to ~/Documents/$newname.rtf"
echo "Done!"
echo "Please check your documents folder for the new romhack name and lore."
exit 0