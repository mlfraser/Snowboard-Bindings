difference() {
ankle_strap();
translate([64,-27,25])rotate([90,0,-110])buckle_connector();

translate([-70,4,25])rotate([90,0,90])strap();
}
module ankle_strap() {
difference() {
cylinder(d=150, $fn=360, h=55);

cylinder(d=120, $fn=360, h=55);
    
translate([-100,0,-1])cube([200,100,60]);  
  translate([0,0,45])cylinder(d2=150, d1=120, h=10, $fn=360);  
}
}



module strap() {
    difference() {
    translate([-10,0,0])cylinder(r=23, $fn=360, h=5);
        translate([-50,-25,0])cube([40,50,6]);
        
    }
    translate([-7,0,-10])cylinder(d=5, h=25, $fn=360);
    translate([-9,5,0])cube([3,15,6]);
    translate([-9,-20,0])cube([3,15,6]);
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
    union() {
    union() {
    difference() {
    translate([-28.5,-17,0])cube([35,35,3]);
        
        
    }
   
    translate([-18,-13,0])cube([15,5,6]);
    translate([-18,9,0])cube([15,5,6]);
}
translate([0,0,-10])cylinder(d=5, h=25, $fn=360);
    translate([-20,0,-5])cylinder(d=5, h=20, $fn=360);
}
}


