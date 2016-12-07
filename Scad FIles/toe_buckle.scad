


difference() {
union() {
//bottom base
translate([0,-10,0])cube([28,40,3]);

//left wall
translate([0,-10,0])translate([0,0,3])cube([3.75,40,10]);

//right wall
translate([24.25,-10,3])cube([3.75,40,10]);
}

translate([14,1,0])cylinder(d1=5, d2=8, h=3, $fn=360);
translate([14,21,0])cylinder(d1=5, d2=8, h=3, $fn=360);
}
//two beams across walls
translate([0,27,10])cube([28,3,3]);
translate([0,-10,10])cube([28,3,3]);
translate([0,3,10])cube([28,3,3]);

//latch to press down on strap
translate([6.5,5,10.75])
difference() {
rotate([-20,0,0])cube([15,15,2]);
 translate([0,13.5,-15])cube([20,5,15]);
}

//pull on latch
translate([6.5,16.5,7])cube([15,2,11]);
translate([6.5, 17.5, 20])rotate([0,90,0])cylinder(r=5, h=15, $fn=360);





//supports
translate([6.5,7,0])cube([1,3,10]);
translate([12,7,0])cube([1,3,10]);
translate([16.5,7,0])cube([1,3,10]);
translate([20.5,7,0])cube([1,3,10]);

translate([6.5,11,0])cube([1,3,9]);
translate([12,11,0])cube([1,3,9]);
translate([16.5,11,0])cube([1,3,9]);
translate([20.5,11,0])cube([1,3,9]);

translate([6.5,15.5,0])cube([1,3,7]);
translate([12,15,0])cube([1,3,7]);
translate([16.5,15,0])cube([1,3,7]);
translate([20.5,15,0])cube([1,3,7]);

//translate([11.5,7.5,0])cube([5,1,12.1]);
//
//translate([7,10,0])cube([1,3,10]);
//translate([11,10,0])cube([1,3,10]);
//translate([15,10,0])cube([1,3,10]);
//translate([19,10,0])cube([1,3,10]);
//translate([21,10,0])cube([1,3,10]);
//
translate([5,27,0])cube([1,3,10]);
translate([9,27,0])cube([1,3,10]);
translate([13,27,0])cube([1,3,10]);
translate([17,27,0])cube([1,3,10]);
translate([21,27,0])cube([1,3,10]);

translate([5,3,0])cube([1,3,10]);
translate([9,3,0])cube([1,3,10]);
translate([13,3,0])cube([1,3,10]);
translate([17,3,0])cube([1,3,10]);
translate([21,3,0])cube([1,3,10]);

translate([5,-10,0])cube([1,3,10]);
translate([9,-10,0])cube([1,3,10]);
translate([13,-10,0])cube([1,3,10]);
translate([17,-10,0])cube([1,3,10]);
translate([21,-10,0])cube([1,3,10]);




