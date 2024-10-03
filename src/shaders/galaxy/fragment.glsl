varying vec3 vColor;

void main() {
    


    //circle
    // float strenght = distance(gl_PointCoord, vec2(0.5));
    // strenght = 1.0 - step(0.5, strenght);

    //diffuse point
    // float strenght = distance(gl_PointCoord, vec2(0.5));
    // strenght = 1.0 -(strenght * 2.0);

    //light point
    float strenght = distance(gl_PointCoord, vec2(0.5));
    strenght = 1.0 - strenght;
    strenght = pow(strenght, 10.0);

    gl_FragColor = vec4(vColor, strenght);
    #include <colorspace_fragment>
}