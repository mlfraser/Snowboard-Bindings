//snowboard stuff


//main degree plate
r1=86.05/2;
r2=101/2;
h1=5.3;
h2=3.2;
module degree_plate(){
union(){
translate([0,0,h2])cylinder(h=h1,r1=r1,r2=r2,center=false,$fn=100);
translate([0,0,0])cylinder(h=h2,r=r1,center=false,$fn=100);
translate([0,0,(h1+h2)])cylinder(h=.8,r=r2,center=false,$fn=100);
}
}

//recess slot for mounting screws
r3=20.3/2;
h3=1.04;
l1=60;



//angle slot hole
r4=6.5/2;
h4=3;



//dip in base plate
module plate_dip() {
    translate([0,0,7.5])cylinder(r=45, h=2, $fn=360);
}

module hole() {
    translate([0,0,-.5])cylinder(d=7, h=9, $fn=360);
    translate([0,0,6])cylinder(r1=3.5, r2=6, $fn=360, h=5);
}



module ridge(){
rotate([-55,0,-90]) linear_extrude(height=(10.2),center=false)
polygon(points=[[0,0],[(3.2/2),2.1],[3.2,0]], paths=[[0,2,1],[3,4,5]]);
}


union(){
for ( i = [0 : 120] ) //number of ridges
{
    rotate( i * 360 / 121, [0, 0,1]) 
    translate([41.8,0,3])
		ridge();
}

difference(){
degree_plate();
    plate_dip();
    translate([0,25,0])hole();
    translate([10,25,0])hole();
    translate([-10,25,0])hole();
    
    translate([-20,28,0])hole();
    translate([20,28,0])hole();
    translate([-20,20,0])hole();
    translate([20,20,0])hole();
    translate([-20,12,0])hole();
    translate([20,12,0])hole();
    
    translate([11,-13,0])hole();
    translate([32,-13,0])hole();
    translate([-11,-13,0])hole();
    translate([-32,-13,0])hole();
    translate([20,-13,0])hole();
    translate([-20,-13,0])hole();
    translate([22,-13,0])hole();
    translate([-22,-13,0])hole();
    translate([20,-20,0])hole();
    translate([-20,-20,0])hole();
    translate([20,-28,0])hole();
    translate([-20,-28,0])hole();
}
}






