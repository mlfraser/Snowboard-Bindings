
difference() {
union() {
translate([0,0,-2])intersection() {
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
    union() {
    translate([80,-50,2])cube([100,100,10]);
    translate([-180,-50,2])cube([100,100,10]);
    }
}
scale([2.9,1,1])difference() {
            cylinder(h=2, d=62, $fn=360);
            cylinder(h=3, d=58, $fn=360);
    translate([-2.5,0,0])cube();
        }
        
}

translate([-75,-40,0])cube([150,80,5]);
translate([-90,0,0])cylinder(d=5, h=5, $fn=360);
}
strap();
binding_connector();

module strap() {
    difference() {
    union() {
translate([85,-7.5,0])cube([30,15,3]);
translate([115, 0, 0])cylinder(h=3, d=15, $fn=360);
    }
    
    translate([118, 0, 0])cylinder(d=5, h=3, $fn=360);
    
}
}

module binding_connector() {
    difference() {
    rotate([0,0,180])union() {
translate([80,-15,0])cube([25,30,3]);
translate([105, 0, 0])cylinder(h=3, d=30, $fn=360);
    }
    translate([-90,0,0])cylinder(d=5, h=5, $fn=360);
    translate([-110,0,0])cylinder(d=5, h=5, $fn=360);
}
}