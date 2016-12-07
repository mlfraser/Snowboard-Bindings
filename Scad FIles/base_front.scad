difference() {
translate([0,0,-7.1])
difference() {
base();
translate([-5,-2,-20])rounded_edge();
    translate([-34,-2,40])rotate([0,90,0])rounded_edge();
    translate([180,-5,-20])rotate([0,0,90])rounded_edge();
    translate([-5,55,-1])rotate([90,0,0])rounded_edge();
    translate([136,-2,-20])rounded_edge();
    translate([105,-2,40])rotate([0,90,0])rounded_edge();
    translate([105,-5,-1])rotate([90,0,90])rounded_edge();
    scale([.60,1,1])translate([235,-5,-40])rotate([0,0,90])rounded_edge();
    translate([-.1,40,35])scale([1,2,1])rotate([90,0,90])cylinder(h=8, r=15, $fn=360);
    translate([152.1,40,35])scale([1,2,1])rotate([90,0,90])cylinder(h=8, r=15, $fn=360);
    translate([140.9,40,35])scale([1,2,1])rotate([90,0,90])cylinder(h=5, r=15, $fn=360);
    translate([16.1,40,35])scale([1,2,1])rotate([90,0,90])cylinder(h=5, r=15, $fn=360);
}

scale([1.02,1.02,1.02])translate([80,126,-1])half_plate();
translate([-1,-1,-15])cube([250,250,15]);
translate([0,30,20])rotate([0,90,0])cylinder(d=5, h=200, $fn=360);
translate([0,50,20])rotate([0,90,0])cylinder(d=5, h=200, $fn=360);
translate([0,40,20])rotate([0,90,0])cylinder(d=5, h=200, $fn=360);
translate([5,5,-1])cube([10,110,10]);
translate([145,5,-1])cube([10,110,10]);


}
translate([4,125,0])connector();
translate([143,125,0])connector();





module connector() {
difference() {
union() {
rotate([0,45,0])cube([10,15,10]);
translate([7,0,5])rotate([-90,0,0])cylinder(r=5, $fn=360, h=15);
}
translate([-1,-1,-20])cube(20,22,20);
}

}

module base() {
difference() {
    cube([160,125,35]);

    translate([21,-1,15])cube([120,127,21]);
}
}


module rounded_edge() {
scale([1,200,1])
difference() {
    translate([0,0,50])cube([10,1,10]);
    translate([10,0,50])sphere(r=5, $fn=360);
}
}


//snowboard stuff


//main degree plate
r1=86.05/2;
r2=101/2;
h1=5.3;
h2=3.2;
module degree_plate(){
union(){
translate([0,0,h2])cylinder(h=h1,r1=r1,r2=r2,center=false,$fn=100);
translate([0,0,0])cylinder(h=h2,r=r1,center=false,$fn=100);
translate([0,0,(h1+h2)])cylinder(h=.8,r=r2,center=false,$fn=100);
}
}

//recess slot for mounting screws
r3=20.3/2;
h3=1.04;
l1=60;



//angle slot hole
r4=6.5/2;
h4=3;



//dip in base plate
module plate_dip() {
    translate([0,0,7.5])cylinder(r=45, h=2, $fn=360);
}





module ridge(){
rotate([-55,0,-90]) linear_extrude(height=(10.2),center=false)
polygon(points=[[0,0],[(3.2/2),2.1],[3.2,0]], paths=[[0,2,1],[3,4,5]]);
}
module half_plate() {
difference() {
union(){
for ( i = [0 : 120] ) //number of ridges
{
    rotate( i * 360 / 121, [0, 0,1]) 
    translate([41.8,0,3])
		ridge();
}

degree_plate();
    plate_dip();
}

translate([-51,0,-1])cube([110,110,110]);

}

}