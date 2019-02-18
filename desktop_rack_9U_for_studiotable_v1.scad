$fn=360;
depth=400;
height=650;

difference()
{
    intersection(){
        square([depth,height+400]);
 
        //backside
        #translate([500,100])
        #circle(r=1500);
    }
    
//frontside
#translate([860,490])
circle(r=700);

//alu plates with holes
hest=11;
//translate([860,490])rotate([0,0,33])sidePlate();
//translate([860,490])rotate([0,0,33-hest*1])sidePlate();
translate([860,490])rotate([0,0,30-hest*2])sidePlate();
translate([860,490])rotate([0,0,30-hest*3])sidePlate();
translate([860,490])rotate([0,0,30-hest*4])sidePlate();

#translate([63,678])circle(r=40);
#translate([63,529])circle(r=40);
#translate([63,380])circle(r=40);
#translate([63,260])circle(r=55);
#translate([0,740])rotate([0,0,0])square([500,400]);
#translate([0,-5])rotate([0,0,0])square([130,300]);
#translate([0,-25])rotate([0,0,0])square([500,300]);
#translate([200,220])rotate([0,0,-44])square([100,100],center=true);
 
//8 mm holes
#translate ([13,727]) circle(r=4); // top
#translate ([13,308]) circle(r=4); // back
#translate ([198,12]) circle(r=4); // buttom

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