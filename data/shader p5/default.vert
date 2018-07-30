uniform mat4 mvp;
uniform mat4 mv;
uniform mat4 normalMat;

attribute vec3 vpos;
attribute vec2 vtex;
attribute vec3 vnormal;

varying vec2 ftex;
varying vec4 fpositionobs;
varying vec3 fnormal;

void main() {
	gl_Position = mvp * vec4(vpos, 1);
	fnormal = (normalMat * vec4(vnormal, 0)).xyz;
	ftex = vtex;
	fpositionobs = mv * vec4(vpos, 1);
}