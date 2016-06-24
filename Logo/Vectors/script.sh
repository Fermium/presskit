
#echo "Converting to original sizes"
#find . -type f -name '*.pdf' -print0 |
#while IFS= read -r -d '' file
#do convert "${file}" "../Rasters/${file%.*}.png"
#echo "Converted to ${file%.*}.pdf"
#done


echo "Converting to 5000px"
find . -type f -name '*.pdf' -print0 |
while IFS= read -r -d '' file
do convert -resize 5000 "${file}" "../Rasters/${file%.*}_5000px.png"
echo "Converted to ${file%.*}.pdf"
done


echo "Converting 2500px"
find . -type f -name '*.pdf' -print0 |
while IFS= read -r -d '' file
do convert -resize 2500 "${file}" "../Rasters/${file%.*}_2500px.png"
echo "Converted to ${file%.*}.pdf"
done


echo "Converting 1500px"
find . -type f -name '*.pdf' -print0 |
while IFS= read -r -d '' file
do convert -resize 1500 "${file}" "../Rasters/${file%.*}_1500px.png"
echo "Converted to ${file%.*}.pdf"
done


echo "Converting 1000px"
find . -type f -name '*.pdf' -print0 |
while IFS= read -r -d '' file
do convert -resize 1000 "${file}" "../Rasters/${file%.*}_1000px.png"
echo "Converted to ${file%.*}.pdf"
done


echo "Converting 500px"
find . -type f -name '*.pdf' -print0 |
while IFS= read -r -d '' file
do convert -resize 500 "${file}" "../Rasters/${file%.*}_500px.png"
echo "Converted to ${file%.*}.pdf"
done


echo "Converting 250px"
find . -type f -name '*.pdf' -print0 |
while IFS= read -r -d '' file
do convert -resize 250 "${file}" "../Rasters/${file%.*}_250px.png"
echo "Converted to ${file%.*}.pdf"
done

echo "Converting 100px"
find . -type f -name '*.pdf' -print0 |
while IFS= read -r -d '' file
do convert -resize 100 "${file}" "../Rasters/${file%.*}_100px.png"
echo "Converted to ${file%.*}.pdf"
done

echo "Converting 64px"
find . -type f -name '*.pdf' -print0 |
while IFS= read -r -d '' file
do convert -resize 64 "${file}" "../Rasters/${file%.*}_64px.png"
echo "Converted to ${file%.*}.pdf"
done
