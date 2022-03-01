
Shader "ShaderMan/blah"
	{

	Properties{
	//Properties
	}

	SubShader
	{
	Tags { "RenderType" = "Transparent" "Queue" = "Transparent" }

	Pass
	{
	ZWrite Off
	Blend SrcAlpha OneMinusSrcAlpha

	CGPROGRAM
	#pragma vertex vert
	#pragma fragment frag
	#include "UnityCG.cginc"

	struct VertexInput {
    fixed4 vertex : POSITION;
	fixed2 uv:TEXCOORD0;
    fixed4 tangent : TANGENT;
    fixed3 normal : NORMAL;
	//VertexInput
	};


	struct VertexOutput {
	fixed4 pos : SV_POSITION;
	fixed2 uv:TEXCOORD0;
	//VertexOutput
	};

	//Variables

	fixed noise(fixed3 p) //Thx to Las^Mercury
{
	fixed3 i = floor(p);
	fixed4 a = dot(i, fixed3(1., 57., 21.)) + fixed4(0., 57., 21., 78.);
	fixed3 f = cos((p-i)*acos(-1.))*(-.5)+.5;
	a = lerp(sin(cos(a)*a),sin(cos(1.+a)*(1.+a)), f.x);
	a.xy = lerp(a.xz, a.yw, f.y);
	return lerp(a.x, a.y, f.z);
}

fixed sphere(fixed3 p, fixed4 spr)
{
	return length(spr.xyz-p) - spr.w;
}

fixed flame(fixed3 p)
{
	fixed d = sphere(p*fixed3(1.,.5,1.), fixed4(.0,-1.,.0,1.));
	return d + (noise(p+fixed3(.0,_Time.y*2.,.0)) + noise(p*3.)*.5)*.25*(p.y) ;
}

fixed scene(fixed3 p)
{
	return min(100.-length(p) , abs(flame(p)) );
}

fixed4 raymarch(fixed3 org, fixed3 dir)
{
	fixed d = 0.0, glow = 0.0, eps = 0.02;
	fixed3  p = org;
	bool glowed = false;
	
	[unroll(100)]
for(int i=0; i<64; i++)
	{
		d = scene(p) + eps;
		p += d * dir;
		if( d>eps )
		{
			if(flame(p) < .0)
				glowed=true;
			if(glowed)
       			glow = fixed(i)/64.;
		}
	}
	return fixed4(p,glow);
}





	VertexOutput vert (VertexInput v)
	{
	VertexOutput o;
	o.pos = UnityObjectToClipPos (v.vertex);
	o.uv = v.uv;
	//VertexFactory
	return o;
	}
	fixed4 frag(VertexOutput i) : SV_Target
	{
	
	fixed2 v = -1.0 + 2.0 * i.uv / 1;
	v.x *= 1/1;
	
	fixed3 org = fixed3(0., -2., 4.);
	fixed3 dir = normalize(fixed3(v.x*1.6, -v.y, -1.5));
	
	fixed4 p = raymarch(org, dir);
	fixed glow = p.w;
	
	fixed4 col = lerp(fixed4(1.,.5,.1,1.), fixed4(0.1,.5,1.,1.), p.y*.02+.4);
	
	return lerp(fixed4(0.,0.,0.,0.), col, pow(glow*2.,4.));
	//return lerp(fixed4(1.,1.,1.,1.), lerp(fixed4(1.,.5,.1,1.),fixed4(0.1,.5,1.,1.),p.y*.02+.4), pow(glow*2.,4.));


	}
	ENDCG
	}
  }
}

