#Code that stitches two corresponding images side by side to create a new image

mkdir sidebysidegap
#Creates a directory called 'sidebysidegap'

for f in `ls Experiment1A/Experiment*`
#Loops through each image in the 'Experiment1A' folder, beginning wiht the name Experiment...
do
    g=`(echo $f | sed 's!1A!1B!g')`
    hA=`(echo $f | sed 's!.*/Experiment1A!sidebysidegap/Experiment1A-1B!g')`
    echo convert -gravity west $f gap.png $g +append $hA | bash
    #Creates a new image comprising of the image in folder Experiment1A, to the left of
    #the correspondingly named image in folder Experiment1B. A gap is added inbetween 
    #(gap.png) to make the different images clear to the viewer.
done
