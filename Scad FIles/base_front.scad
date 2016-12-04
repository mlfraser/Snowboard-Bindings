difference() {
base();
translate([-5,-2,-20])rounded_edge();
    translate([-34,-2,40])rotate([0,90,0])rounded_edge();
    translate([180,-5,-20])rotate([0,0,90])rounded_edge();
    translate([-5,55,-1])rotate([90,0,0])rounded_edge();
    translate([136,-2,-20])rounded_edge();
    translate([105,-2,40])rotate([0,90,0])rounded_edge();
}

translate([0,0,0])rotate([90,0,0])rounded_edge();





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
