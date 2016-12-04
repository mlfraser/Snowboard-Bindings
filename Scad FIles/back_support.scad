difference() {
    union() {
difference(){

translate([78.8,90,0])
    scale([1.1,1,1])difference() {
        cylinder(r=54, h=180, $fn=360);
        translate([0,0,-.5])cylinder(r=48, h=190, $fn=360);
        translate([-70,-125,-1])cube([140,125,200]);
        translate([-65,28,-50])rotate([40,0,0])cube([130,100,50]);
        
        
        //translate([-65,0,25])rotate([40,0,0])cube([130,100,50]);
    }
    cube([160,120,9]);
    translate([15,-4,75])rotate([-20,0,0])cube([150,100,200]);
}



difference() {
    union() {
translate([19.4,82,18])rotate([0,90,0])cylinder(r=9, $fn=360, h=6.62);
translate([131.6,82,18])rotate([0,90,0])cylinder(r=9, $fn=360, h=6.62); 
    }
translate([-.1,80,15])rotate([0,90,0])cylinder(d=5, h=200, $fn=360);


}

translate([19.4,87,14.5])rotate([45,0,0])cube([6.62,25,15]);

translate([131.6,87,14.5])rotate([45,0,0])cube([6.62,30,15]);


translate([19.4,83,9])cube([6.62,15,15]);

translate([131.6,83,9])cube([6.62,15,15]);


}



difference(){

translate([78.8,90,0])
    scale([1.1,1,1])difference() {
        cylinder(r=60, h=180, $fn=360);
        translate([0,0,-.5])cylinder(r=54, h=190, $fn=360);
        translate([-70,-125,-1])cube([140,125,200]);
        translate([-65,28,-50])rotate([40,0,0])cube([130,100,50]);
        
        
        //translate([-65,0,25])rotate([40,0,0])cube([130,100,50]);
    }
    cube([160,120,9]);
    translate([15,-4,75])rotate([-20,0,0])cube([150,100,200]);
}
}



