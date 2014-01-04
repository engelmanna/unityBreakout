Shader "Custom/BlockShader" {
	
	Properties {
		_MainTex ("Main Texture", 2D) = "surface" {}
	}

	SubShader {
		Tags { "RenderType"="Opaque" }
		
		CGPROGRAM
		#include "UnityCG.cginc"
		#pragma surface surf Lambert

		sampler2D _MainTex;
		float _Pan;

		struct Input {
			float2 uv_MainTex;
			float4 color : COLOR;
		};

		void surf (Input IN, inout SurfaceOutput o) {

			float2 panAmt = {_Time.x*3,0};
			half3 cRed = tex2D (_MainTex, IN.uv_MainTex).rrr;
			half3 cGreen = tex2D (_MainTex, IN.uv_MainTex + panAmt).ggg;
			o.Emission = (cRed + cGreen) * IN.color.rgb * 2;
		}
		ENDCG
	} 
	FallBack "VertexLit"
}
