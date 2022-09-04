// Simple passthrough fragment shader
	
	varying vec2 v_vTexcoord;
	varying vec4 v_vColour;
	
	uniform float Time;

	void main()
	{
		vec4 OutTex = texture2D(gm_BaseTexture, v_vTexcoord);
	    gl_FragColor = v_vColour * vec4(mix(OutTex.rgb, vec3(1.), Time), OutTex.a);
	}
