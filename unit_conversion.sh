
# a. 1ft = 12 in then 42 in = ? ft

echo "Given 1 ft = 12 in"

inch=42

ft=`echo $inch | awk '{print $inch/12}'`

echo "42 in = " $ft "ft"

echo ""

# b. Rectangular Plot of 60 feet x 40 feet in meters

len=60
bth=40

echo "length = " $len "feet"
len_m=`echo $len | awk '{print $len*0.3048}'`
echo "length in meter = " $len_m "m"

echo "breadth = " $bth "feet"
bth_m=`echo $bth | awk '{print $bth*0.3048}'`
echo "breadth in meter = " $bth_m "m"

echo ""

area=`echo $lth_m $bth_m | awk '{print $lth_m*$bth_m}'`
echo "Area of the rectangular plot = " $area " sq m"

echo ""

# c. Calculate area of 25 such plots in acres

area_25=`echo $area | awk "{print $area*25}"`
echo "Area of 25 such plots = " $area_25 " sq m"

area_ac=`echo $area_25 | awk '{print $area_25/4047}'`
echo "Area in acres = " $area_ac " acres"
