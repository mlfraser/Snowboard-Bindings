difference() {
    scale([2.9,1,1])
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
    translate([80,-50,2])cube([100,100,10]);
    translate([-180,-50,2])cube([100,100,10]);
    translate([-90,0,0])cylinder(d=5, h=5, $fn=360);
}