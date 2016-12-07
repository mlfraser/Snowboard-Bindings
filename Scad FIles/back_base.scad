difference() {
union() {
difference() {
translate([160,110,0])rotate([0,0,180])
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
    
}
translate([-1,-1,-15])cube([250,250,15]);
}
translate([142,-.1,0])connector();
translate([3.5,-.1,0])connector();
scale([1.02,1.02,1.02])translate([79,0,-1])rotate([0,0,180])half_plate();
}
heel();
}

//hole to connect back strap
translate([-.1,100,18])rotate([0,90,0])cylinder(d=5, h=200, $fn=360);
//hole to attach binding back
translate([-.1,80,15])rotate([0,90,0])cylinder(d=5, h=200, $fn=360);
//big cylinder gaps for back heel plate
translate([16,98,23])rotate([0,90,0])cylinder(d=28, h=127, $fn=360);
translate([159,-1,-1])cube([170,170,100]);
}


module heel() {
    translate([78.8,90,0])
    scale([1.1,1,1])difference() {
        cylinder(r=63, h=80, $fn=360);
        translate([0,0,-.5])cylinder(r=55, h=81, $fn=360);
        translate([-70,-125,-1])cube([140,125,125]);
        translate([-65,28,-50])rotate([40,0,0])cube([130,100,50]);
        translate([-65,0,25])rotate([40,0,0])cube([130,100,50]);
    }
}


module base() {
difference() {
    cube([160,110,35]);

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
rotate([0,0,180])union(){
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

module connector() {
difference() {
union() {
rotate([0,45,0])cube([10,17,10]);
translate([7,0,5])rotate([-90,0,0])cylinder(r=5, $fn=360, h=17);
}
translate([-1,-1,-20])cube(20,22,20);
}

}