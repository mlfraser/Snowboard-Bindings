difference() {
    scale([2,1,1])
    union() {
        cylinder(h=2, d=65, $fn=360);
        difference() {
            translate([0,0,2])cylinder(h=2, d=65, $fn=360);
            translate([0,0,2])cylinder(h=3, d=62, $fn=360);
        }
        difference() {
            translate([0,0,2])cylinder(h=2, d=58, $fn=360);
            translate([0,0,2])cylinder(h=3, d=56, $fn=360);
        }
        difference() {
            translate([0,0,4])cylinder(h=1, d=65, $fn=360);
            translate([0,0,4])cylinder(h=3, d=56, $fn=360);
        }
        
    }
    
    translate([-150,-50,2])cube([100,100,10]);
    translate([-60,0,0])cylinder(d=5, h=5, $fn=360);
}
strap();
module strap() {
    difference() {
    union() {
translate([55,-7.5,0])cube([40,15,3]);
translate([95, 0, 0])cylinder(h=3, d=15, $fn=360);
    }
    
    translate([98, 0, 0])cylinder(d=5, h=3, $fn=360);
    
}
}