echo "input canvas width in pixels:"
read canW
echo "input canvas height in pixels:"
read canH
mkdir "coolPicMaker$canW$canH"
cat coolPicMaker.pde > "./coolPicMaker$canW$canH/coolPicMaker$canW$canH.pde" 
sed -i "s/REPLACEMEONE/$canW/g" "./coolPicMaker$canW$canH/coolPicMaker$canW$canH.pde"
sed -i "s/REPLACEMETWO/$canH/g" "./coolPicMaker$canW$canH/coolPicMaker$canW$canH.pde"
