Shader "Custom/BlockShader" {
	
	Properties {
		_Emission ("Emission Color", Color) = (1,1,1,1)
		_MainTex ("Main Texture", 2D) = "surface" {}
	}

	SubShader {
		Tags { "RenderType"="Opaque" }
		
		CGPROGRAM
		#pragma surface surf Lambert

		sampler2D _MainTex;
		float _Flash;
		float _Pan;
		float4 _Emission;

		struct Input {
			float2 uv_MainTex;
		};

		void surf (Input IN, inout SurfaceOutput o) {
			float2 panAmt = {_Pan,0};
			half4 c = tex2D (_MainTex, IN.uv_MainTex);
			half4 cg = tex2D (_MainTex, IN.uv_MainTex + panAmt);
			o.Emission = (c.rrr + cg.ggg)*_Emission.rgb*2+_Flash;
			o.Alpha = c.a;
		}
		ENDCG
	} 
	FallBack "VertexLit"
}
