#Code that adds a green border (indicating change detected) or red border 
#(indicating no change detected) to each image based on the algorithmic result.
#It makes the distinction based on the image name given, i.e. images with change
#need to be named by a specific notation in comparison to those without change

mkdir Experiment2A100
mkdir Experiment2B100
#Creates two directories to contain the annotated imagery, one for each image of the pair

for f in `ls Experiment1A/Experiment1A_Change*`
#runs through each image in the Experiment1A folder, adding a green border to any filename
#ending in 'Change'
do
    g=`(echo $f | sed 's!1A!1B!g')`
    hA=`(echo $f | sed 's!.*/Experiment1A!Experiment2A100/Experiment2A100!g')`
    echo convert -gravity west greenside.png $f greenside.png +append $hA | bash
    echo convert -gravity north greentop.png $hA greentop.png -append $hA | bash
done

for f in `ls Experiment1A/Experiment1A_r*`
#runs through each image in the Experiment1A folder, adding a red border to any filename
#not ending in 'Change'
do
    g=`(echo $f | sed 's!1A!1B!g')`
    hA=`(echo $f | sed 's!.*/Experiment1A!Experiment2A100/Experiment2A100!g')`
    echo convert -gravity west redside.png $f redside.png +append $hA | bash
    echo convert -gravity north redtop.png $hA redtop.png -append $hA | bash
done

for f in `ls Experiment1B/Experiment1B_Change*`
#runs through each image in the Experiment1B folder, containing the corresponding 
#images to folder Experiment1A, adding a green border to any filename
#ending in 'Change'
do
    g=`(echo $f | sed 's!1A!1B!g')`
    hA=`(echo $f | sed 's!.*/Experiment1B!Experiment2B100/Experiment2B100!g')`
    echo convert -gravity west greenside.png $f greenside.png +append $hA | bash
    echo convert -gravity north greentop.png $hA greentop.png -append $hA | bash
done

for f in `ls Experiment1B/Experiment1B_r*`
#runs through each image in the Experiment1B folder, containing the corresponding 
#images to folder Experiment1A, adding a red border to any filename
#not ending in 'Change'
do
    g=`(echo $f | sed 's!1A!1B!g')`
    hA=`(echo $f | sed 's!.*/Experiment1B!Experiment2B100/Experiment2B100!g')`
    echo convert -gravity west redside.png $f redside.png +append $hA | bash
    echo convert -gravity north redtop.png $hA redtop.png -append $hA | bash
done