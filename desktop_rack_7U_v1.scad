$fn=360;
depth=400;
height=650;

difference()
{
    intersection(){
        square([depth,height+200]);
    }
    
//frontside
#translate([808,498])
circle(r=700);

//alu plates with holes
hest=11;
translate([807,490])rotate([0,0,33])sidePlate3U();
translate([796,516])rotate([0,0,33-hest*1])sidePlate4U();
// translate([810,490])rotate([0,0,33-hest*2])sidePlate();
// translate([810,490])rotate([0,0,33-hest*3])sidePlate();
// translate([810,490])rotate([0,0,33-hest*4])sidePlate();

//backholes
hund=0.5;
#translate([5500,100])rotate([0,0,0.5])backholes();
#translate([5500,100])rotate([0,0,0.5-hund*1])backholes();
#translate([5500,100])rotate([0,0,0.5-hund*2])backholes();
#translate([5500,100])rotate([0,0,0.5-hund*3])backholes();
#translate([5500,100])rotate([0,0,0.5-hund*4])backholes();
#translate([5500,100])rotate([0,0,0.5-hund*5])backholes();
// #translate([5500,100])rotate([0,0,0.5-hund*6])backholes();
// #translate([5500,100])rotate([0,0,0.5-hund*7])backholes();
// #translate([5500,100])rotate([0,0,0.5-hund*8])backholes();
// #translate([5500,100])rotate([0,0,0.5-hund*9])backholes();
// #translate([5500,100])rotate([0,0,0.5-hund*10])backholes();
// #translate([5500,100])rotate([0,0,0.5-hund*11])backholes();
// #translate([5500,100])rotate([0,0,0.5-hund*12])backholes();
// #translate([5500,100])rotate([0,0,0.5-hund*13])backholes();

#translate([180,654])rotate([0,0,0])square([400,600],center=true);
#translate([115,-40])circle(r=85);
#translate([300,-0])rotate([0,0,-44])square([100,100],center=true);
 
//8 mm holes
#translate ([13,342]) circle(r=4); // top
#translate ([13,12]) circle(r=4); // back
#translate ([198,12]) circle(r=4); // buttom

//8 big holes
#translate ([80,124]) circle(r=50);
#translate ([59,238]) circle(r=32);
}
 
module backholes()
{
    circle(r=10);
    translate([-5500+10,0]) circle(r=1.5875);
}

module sidePlate3U()
{
    circle(r=10);
    translate([-700-18,0])
        union()
        {
            difference()
            {
                square([30.5,134],center=true);
//                translate([0,-42])circle(r=1.5875);
//                translate([0,42])circle(r=1.5875);
            }
        }
}

module sidePlate4U()
{
    circle(r=10);
    translate([-700-18,0])
        union()
        {
            difference()
            {
                square([30.5,183],center=true);
//                translate([0,-42])circle(r=1.5875);
//                translate([0,42])circle(r=1.5875);
            }
        }
}