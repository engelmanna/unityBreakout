Shader "Custom/World UV Test" {

	Properties {
		_Color ("Main Color", Color) = (1,1,1,1)
		_Emission ("Emission Color", Color) = (1,1,1,1)
		_MainTex ("Main Texture", 2D) = "surface" {} 
		_Scale ("Texture Scale", Float) = 0.1
	}

	SubShader {

		Tags {"Queue"="Transparent" "IgnoreProjector"="True" "RenderType"="Transparent"}

		CGPROGRAM
		#pragma surface surf Lambert alpha

		sampler2D _MainTex;
		float4 _Color;
		float4 _Emission;
		float _Scale;

		struct Input {
			float3 worldPos;
		};

		void surf (Input IN, inout SurfaceOutput o) {

			float2 UV =   IN.worldPos.xz;
			fixed4 c =    tex2D(_MainTex, UV * _Scale).r;

			o.Albedo = c.r * _Color.rgb;
			o.Emission = c.r * _Emission.rgb;
			o.Alpha  = c.r;
		}
		ENDCG
	} 
	Fallback "VertexLit"
}