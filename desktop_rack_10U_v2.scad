$fn=360;
depth=400;
height=650;

difference()
{
    intersection(){
        square([depth,height+200]);
 
        //backside
//         #translate([5500,100])
//         circle(r=5500);
    }
    
//frontside
#translate([852,506])
circle(r=740);

//alu plates with holes
cat=11;
translate([810,490])rotate([0,0,33])sidePlate3U();
translate([810,490])rotate([0,0,33-cat*1])sidePlate3U();
translate([808,505])rotate([0,0,33-cat*2.05])sidePlate4U();
// translate([810,490])rotate([0,0,33-cat*3])sidePlate();
// translate([810,490])rotate([0,0,33-cat*4])sidePlate();

//backholes
hund=15;
#translate([10,100])backholes();
#translate([10,200])backholes();
#translate([10,300])backholes();
#translate([10,400])backholes();
#translate([10,500])backholes();
 
//8 mm holes
#translate ([13,470]) circle(r=4); // top
#translate ([13,12]) circle(r=4); // back
#translate ([198,12]) circle(r=4); // buttom

//big holes
#translate ([80,124]) circle(r=50);
#translate ([59,238]) circle(r=32);
#translate ([50,325]) circle(r=23);
// #translate ([46,400]) circle(r=20);
// #translate ([47,465]) circle(r=15);
// #translate ([49,518]) circle(r=8);

#translate([115,-46])circle(r=85);
#translate([180,780])rotate([0,0,])square([400,600],center=true);
#translate([300,-0])rotate([0,0,-44])square([100,100],center=true);

}
 
module backholes()
{
    circle(r=1.5875);
}

module sidePlate3U()
{
    circle(r=10);
    translate([-700-18,0])
        union()
        {
            difference()
            {
                square([30,134],center=true);
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
                square([30,178],center=true);
            }
        }
}