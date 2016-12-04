//TODO
/*
move latch to where top barrier is
make latch longer
make spherical part of latch longer
place beams to keep strap flat



*/




//bottom base
cube([28,20,3]);

//left wall
translate([0,0,3])cube([3.75,20,10]);

//right wall
translate([24.25,0,3])cube([3.75,20,10]);

//two beams across walls
translate([0,17,7])cube([28,3,3]);
translate([0,10,10])cube([28,3,3]);

translate([0,0,7])cube([28,3,3]);

//latch to press down on strap
translate([6.5,19.1,9])
difference() {
rotate([-20,0,0])cube([15,10,1.5]);
 translate([0,9.3,-15])cube([20,5,15]);
}

//spherical part of latch
difference() {
translate([11.5, 16.4,7])
difference() {
rotate([0,90,0])translate(15,0,20)cylinder(r=12, h=5, $fn=360);
rotate([0,90,0])translate(15,0,20)cylinder(r=9.5, h=6, $fn=360);


}

//subtracts spherical part of latch
translate([0,15.5,-15])rotate([50,0,0])cube([30,24,26]);
}

//straight end of release latch
difference() {
translate([11.5,8,12])rotate([35,0,0])cube([5,12,3]);
translate([11.5,15,22])rotate([0,90,0])cylinder(r=3, h=6, $fn=360);
}






//supports
//
//translate([6.5,27.4,0])cube([15,1,6]);
//translate([6.5,24.5,0])cube([15,1,8]);
//translate([6.5,21.5,0])cube([15,1,9]);
//
//translate([11.5,7.5,0])cube([5,1,12.1]);
//
//translate([7,10,0])cube([1,3,10]);
//translate([11,10,0])cube([1,3,10]);
//translate([15,10,0])cube([1,3,10]);
//translate([19,10,0])cube([1,3,10]);
//translate([21,10,0])cube([1,3,10]);
//
//translate([5,17,0])cube([1,3,8]);
//translate([9,17,0])cube([1,3,8]);
//translate([13,17,0])cube([1,3,8]);
//translate([17,17,0])cube([1,3,8]);
//translate([21,17,0])cube([1,3,8]);
//
//translate([11.5,17,10])cube([.75,3,8]);
//translate([15.5,17,10])cube([.75,3,8]);
//
//tri_support();
//
//translate([4,0,0])tri_support();






module tri_support() {
translate([11.5,18,13])
difference() {
rotate([45,0,0])cube([.75,5,5]);
    translate([-.5,-3,5])cube([2,5,5]);
}
}