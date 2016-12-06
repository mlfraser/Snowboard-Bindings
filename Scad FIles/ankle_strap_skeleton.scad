


strap();
translate([0,-50,0])buckle_connector();


module strap() {
    translate([10,-10,0])cube([75,20,3]);
    translate([85,-10,0])rotate([0,0,45])cube([14,14,3]);
    difference() {
    translate([-10,0,0])cylinder(r=23, $fn=360, h=4);
        translate([-50,-25,0])cube([40,50,6]);
        translate([-7,0,0])cylinder(d=5, h=4, $fn=360);
    }
    translate([-9,5,0])cube([3,15,5]);
    translate([-9,-20,0])cube([3,15,5]);
    translate([-20,12.25,0])cube([10,2.5,2.5]);
    translate([-20,20.25,0])cube([10,2.5,2.5]);
    translate([-20,-23.25,0])cube([10,2.5,2.5]);
    translate([-20,-15.25,0])cube([10,2.5,2.5]);
    translate([-20,4.25,0])cube([10,2.5,2.5]);
    translate([-20,-6.25,0])cube([10,2.5,2.5]);
    translate([65,0,0])difference() {
    union() {
translate([12,-3.5,0])cube([30,7,3]);
translate([42, 0, 0])cylinder(h=3, d=7, $fn=360);
    }
    
    translate([42, 0, 0])cylinder(d=5, h=3, $fn=360);
}
}

module buckle_connector() {
    difference() {
    union() {
    difference() {
    translate([-28.5,-17,0])cube([35,35,3]);
        
        
    }
   
    translate([-18,-13,0])cube([15,5,6]);
    translate([-18,9,0])cube([15,5,6]);
}
translate([0,0,0])cylinder(d=5, h=5, $fn=360);
    translate([-20,0,0])cylinder(d=5, h=5, $fn=360);
}
}


