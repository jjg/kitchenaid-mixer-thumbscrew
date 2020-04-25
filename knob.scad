KNOB_DIAMETER = 20;
SHAFT_DIAMETER = 7.2;
SHAFT_HEIGHT = 20;

$fn=75;

difference(){
    union(){
        cylinder(r=KNOB_DIAMETER/2, h=SHAFT_HEIGHT);
        translate([0,0,SHAFT_HEIGHT]){
            sphere(r=KNOB_DIAMETER/2);
        }
    }
    
    // knurling
    translate([(KNOB_DIAMETER+2)/2,0,-1]){
        cylinder(r=(SHAFT_DIAMETER+1)/2,h=SHAFT_HEIGHT*2);
    }
    translate([-(KNOB_DIAMETER+2)/2,0,-1]){
        cylinder(r=(SHAFT_DIAMETER+1)/2,h=SHAFT_HEIGHT*2);
    }
    translate([0,(KNOB_DIAMETER+2)/2,-1]){
        cylinder(r=(SHAFT_DIAMETER+1)/2,h=SHAFT_HEIGHT*2);
    }
    translate([0,-(KNOB_DIAMETER+2)/2,-1]){
        cylinder(r=(SHAFT_DIAMETER+1)/2,h=SHAFT_HEIGHT*2);
    }
    
    // base
    translate([0,0,-1]){
        difference(){
            cylinder(r=(KNOB_DIAMETER+1)/2,h=4);
            cylinder(r=(SHAFT_DIAMETER+6.5)/2,h=5);
        }
    }
    
    // shaft
    translate([0,0,-1]){
        cylinder(r=(SHAFT_DIAMETER+.5)/2, h=SHAFT_HEIGHT);
    }
}