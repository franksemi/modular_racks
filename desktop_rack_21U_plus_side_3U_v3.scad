$fn=360;
depth=600;
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
#translate([910,590])
circle(r=700);

//alu plates with holes
hest=11;
translate([910,590])rotate([0,0,33-hest*-1])sidePlate();
translate([910,590])rotate([0,0,33])sidePlate();
translate([910,590])rotate([0,0,33-hest*1])sidePlate();
translate([910,590])rotate([0,0,33-hest*2])sidePlate();
translate([910,590])rotate([0,0,33-hest*3])sidePlate();
translate([910,590])rotate([0,0,33-hest*4])sidePlate();
translate([910,590])rotate([0,0,33-hest*5])sidePlate();

    
//for power wood plates
translate([100,820])rotate([0,0,0])powerPlates(); // from top
translate([85,685])rotate([0,0,0])powerPlates();
translate([75,540])rotate([0,0,0])powerPlates();
translate([85,390])rotate([0,0,0])powerPlates();
translate([100,240])rotate([0,0,0])powerPlates();
translate([310,10])rotate([0,0,90])powerPlates();

//side rails
translate([20,65])rotate([0,0,0])sideRails();


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

#translate([95,-40])circle(r=85);
#translate([180,1070])rotate([0,0,0])square([500,200],center=true);
#translate([500,-0])rotate([0,0,-44])square([100,100],center=true);
 
//8 mm holes
#translate ([12,958]) circle(r=4); // top
#translate ([12,12]) circle(r=4); // back
#translate ([425,12]) circle(r=4); // buttom
}

module powerPlates()
{
    square([20,100]);
}

module sideRails()
{
    square([200,134]);
}

module backholes()
{
    circle(r=10);
    translate([-500+10,0]) circle(r=1.5875);
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