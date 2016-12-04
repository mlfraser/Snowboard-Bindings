


difference() {
    union() {
difference() {
intersection() {
    base();
    curved_edge();
}
hole();
}
tip();
}
 translate([0,130,0])rotate([75,0,0])cube([40,20,20]);
//cubes are cutouts around hole to attach
cube([5,15,6]);
translate([15,0,0])cube([5,15,6]);
translate([-5.5,4.5,0])rotate([0,0,45])cube([15,15,10]);
translate([25.7,4.5,0])rotate([0,0,45])cube([15,15,10]);

strap_line();
}

module strap_line() {
    for(i= [0:35]) {
        translate([0,i*4,0])indent();
    }
}
module indent() {
translate([0,20,0])
difference() {
rotate([-20,0,0])translate([-1,-5,2.5])cube([26,5,3]);
translate([-1.5,.85,0])cube([30,10,15]);
}

}


module tip() {
    translate([0,10,0])
    intersection() {
    translate([10,109,0])cylinder(r=10, h=4, $fn=360);
        intersection() {
    base();
    curved_edge();
}
    }
}


module hole(){
translate([10,5,-.5])cylinder(d=5, $fn=360, h=10);
}

module base() {
    translate([0,10,0])cube([20,110,4]);
    translate([10,10,0])cylinder(r=10, h=4, $fn=360);
}

module curved_edge() {
    difference() {
        scale([1,1,.5])translate([10,0,0])rotate([-90,0,0])cylinder(r=10, h=165, $fn=360);

        translate([-2,-15,-30])cube([30,300,30]);
    }
}