


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
 translate([0,175,0])rotate([75,0,0])cube([40,20,20]);
cube([8,21,6]);
translate([16,0,0])cube([8,21,6]);
translate([-2.7,10.5,0])rotate([0,0,45])cube([15,15,10]);
translate([26.6,10.5,0])rotate([0,0,45])cube([15,15,10]);
strap_line();
}


module strap_line() {
    for(i= [0:24]) {
        translate([0,i*6+10,0])indent();
    }
}
module indent() {
translate([0,20,0])
difference() {
rotate([-20,0,0])translate([-1,-7,2])cube([26,8,3]);
translate([-1.5,.85,0])cube([30,10,15]);
}

}


module tip() {
    translate([0,10,0])
    intersection() {
    translate([12,153,0])cylinder(r=12, h=4, $fn=360);
        intersection() {
    base();
    curved_edge();
}
    }
}


module hole(){
translate([12,5,-.5])cylinder(d=5, $fn=360, h=10);
}

module base() {
    translate([0,12,0])cube([24,153,4]);
    translate([12,12,0])cylinder(r=12, h=4, $fn=360);
}

module curved_edge() {
    difference() {
        scale([1,1,.5])translate([12,0,0])rotate([-90,0,0])cylinder(r=12, h=165, $fn=360);
        //translate([-15,2,-15])cube([30,30,30]);
        //translate([-15,-32,-15])cube([30,30,30]);
        translate([-2,-15,-30])cube([30,300,30]);
    }
}