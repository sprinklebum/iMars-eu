#Code the creates a gif out of two images and adds to a new folder 'blinking'

mkdir blinking #creates 'blinking' folder
for f in `ls Experiment1B/Experiment1*` 
#Loops through each image file in the 'Experiment1B' folder, 
#with the filename beginning Experiment1...
do
    g=`(echo $f | sed 's!B!A!g')`
    h=`(echo $f | sed 's!.*/Experiment1B!blinking/Experiment1B-A!g' | sed 's/.jpg/.gif/')`
    echo convert -delay 50 -loop 0 $f $g $h | bash
    #creates a gif file out of the images in Experiment1B folder combined with their
    #namesake in the Experiment1A folder, with the with the naming format ending in 'B-A'
done
