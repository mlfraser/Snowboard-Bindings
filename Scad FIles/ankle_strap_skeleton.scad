


strap();
translate([0,-50,0])buckle_connector();


module strap() {
    difference() {
    translate([-10,0,0])cylinder(r=23, $fn=360, h=3);
        translate([-50,-25,0])cube([40,50,4]);
    }
    translate([-9,-7.5,0])cube([3,15,6]);

    translate([-20,12,0])cube([10,3,3]);
    translate([-20,20,0])cube([10,3,3]);
    translate([-20,-23,0])cube([10,3,3]);
    translate([-20,-15,0])cube([10,3,3]);
    translate([-20,4,0])cube([10,3,3]);
    translate([-20,-6,0])cube([10,3,3]);
    difference() {
    union() {
translate([0,-6,0])cube([30,12,3]);
translate([30, 0, 0])cylinder(h=3, d=12, $fn=360);
    }
    
    translate([32, 0, 0])cylinder(d=5, h=3, $fn=360);
    
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


