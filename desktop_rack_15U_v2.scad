$fn=360;
depth=400;
height=650;

difference()
{
    intersection(){
        square([depth,height+200]);
 
        //backside
        #translate([5500,100])
        circle(r=5500);
    }
    
//frontside
#translate([810,490])
circle(r=700);

//alu plates with holes
hest=11;
translate([810,490])rotate([0,0,33])sidePlate();
translate([810,490])rotate([0,0,33-hest*1])sidePlate();
translate([810,490])rotate([0,0,33-hest*2])sidePlate();
translate([810,490])rotate([0,0,33-hest*3])sidePlate();
translate([810,490])rotate([0,0,33-hest*4])sidePlate();

//backholes
/*
hund=0.5;
#translate([5500,100])rotate([0,0,0.5])backholes();
#translate([5500,100])rotate([0,0,0.5-hund*1])backholes();
#translate([5500,100])rotate([0,0,0.5-hund*2])backholes();
#translate([5500,100])rotate([0,0,0.5-hund*3])backholes();
#translate([5500,100])rotate([0,0,0.5-hund*4])backholes();
#translate([5500,100])rotate([0,0,0.5-hund*5])backholes();
#translate([5500,100])rotate([0,0,0.5-hund*6])backholes();
#translate([5500,100])rotate([0,0,0.5-hund*7])backholes();
#translate([5500,100])rotate([0,0,0.5-hund*8])backholes();
#translate([5500,100])rotate([0,0,0.5-hund*9])backholes();
#translate([5500,100])rotate([0,0,0.5-hund*10])backholes();
#translate([5500,100])rotate([0,0,0.5-hund*11])backholes();
#translate([5500,100])rotate([0,0,0.5-hund*12])backholes();
#translate([5500,100])rotate([0,0,0.5-hund*13])backholes();
*/
#translate([115,-40])circle(r=85);
#translate([180,860])rotate([0,0,0])square([400,300],center=true);
#translate([300,-0])rotate([0,0,-44])square([100,100],center=true);
 
//8 mm holes
#translate ([49,696]) circle(r=4); // top
#translate ([13,12]) circle(r=4); // back
#translate ([198,12]) circle(r=4); // buttom

//8 big holes
#translate ([80,124]) circle(r=50);
#translate ([59,238]) circle(r=32);
#translate ([50,325]) circle(r=25);
#translate ([46,400]) circle(r=20);
#translate ([47,465]) circle(r=15);
#translate ([49,518]) circle(r=8);
}
 
module backholes()
{
    circle(r=10);
    translate([-5500+10,0]) circle(r=1.5875);
}

module sidePlate()
{
    circle(r=10);
    translate([-700-18,0])
        union()
        {
            difference()
            {
                square([30,134],center=true);
//               translate([0,-42])circle(r=1.5875);
//               translate([0,42])circle(r=1.5875);
            }
        }
}