// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:True,stva:0,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:3,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33288,y:32415,varname:node_3138,prsc:2|emission-8334-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32710,y:32033,ptovrint:False,ptlb:Fond_Color,ptin:_Fond_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Lerp,id:8334,x:32983,y:32353,varname:node_8334,prsc:2|A-7241-RGB,B-4209-RGB,T-4976-OUT;n:type:ShaderForge.SFN_TexCoord,id:8499,x:31176,y:32751,varname:node_8499,prsc:2,uv:0;n:type:ShaderForge.SFN_Frac,id:9036,x:31411,y:32751,varname:node_9036,prsc:2|IN-8499-UVOUT;n:type:ShaderForge.SFN_RemapRange,id:5601,x:31598,y:32751,varname:node_5601,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-9036-OUT;n:type:ShaderForge.SFN_ComponentMask,id:941,x:31802,y:32642,varname:node_941,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-5601-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6000,x:31802,y:32815,varname:node_6000,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-5601-OUT;n:type:ShaderForge.SFN_Abs,id:5520,x:31960,y:32642,varname:node_5520,prsc:2|IN-941-OUT;n:type:ShaderForge.SFN_Power,id:385,x:32325,y:32648,varname:node_385,prsc:2|VAL-5520-OUT,EXP-4872-OUT;n:type:ShaderForge.SFN_Abs,id:1693,x:31960,y:32815,varname:node_1693,prsc:2|IN-6000-OUT;n:type:ShaderForge.SFN_Power,id:1901,x:32325,y:32802,varname:node_1901,prsc:2|VAL-1693-OUT,EXP-4872-OUT;n:type:ShaderForge.SFN_Add,id:5874,x:32521,y:32730,varname:node_5874,prsc:2|A-385-OUT,B-1901-OUT;n:type:ShaderForge.SFN_Clamp01,id:4976,x:32877,y:32653,varname:node_4976,prsc:2|IN-5600-OUT;n:type:ShaderForge.SFN_Time,id:2632,x:31549,y:32977,varname:node_2632,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8543,x:31744,y:33001,varname:node_8543,prsc:2|A-2632-T,B-3777-OUT;n:type:ShaderForge.SFN_Slider,id:3777,x:31392,y:33134,ptovrint:False,ptlb:Contour_vitesse_variation,ptin:_Contour_vitesse_variation,varname:node_3777,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:3,max:3;n:type:ShaderForge.SFN_Sin,id:5190,x:31917,y:33001,varname:node_5190,prsc:2|IN-8543-OUT;n:type:ShaderForge.SFN_RemapRange,id:4872,x:32112,y:33001,varname:node_4872,prsc:2,frmn:-1,frmx:1,tomn:10,tomx:20|IN-5190-OUT;n:type:ShaderForge.SFN_Color,id:4209,x:32634,y:32374,ptovrint:False,ptlb:Button_Color,ptin:_Button_Color,varname:_Contour_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4044118,c2:0.8521298,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:5600,x:32688,y:32653,varname:node_5600,prsc:2|A-5632-OUT,B-5874-OUT;n:type:ShaderForge.SFN_Slider,id:5632,x:32137,y:32463,ptovrint:False,ptlb:Contour_épaisseur,ptin:_Contour_paisseur,varname:node_5632,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:300,max:300;n:type:ShaderForge.SFN_Multiply,id:4468,x:32276,y:32776,varname:node_4468,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4880,x:32340,y:32840,varname:node_4880,prsc:2;proporder:7241-3777-4209-5632;pass:END;sub:END;*/

Shader "Shader Forge/SF_UI_OnStartScroll" {
    Properties {
        _Fond_Color ("Fond_Color", Color) = (0,0,0,1)
        _Contour_vitesse_variation ("Contour_vitesse_variation", Range(1, 3)) = 3
        _Button_Color ("Button_Color", Color) = (0.4044118,0.8521298,1,1)
        _Contour_paisseur ("Contour_épaisseur", Range(0, 300)) = 300
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            Stencil {
                Ref 0
                ZFail Invert
            }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float4 _Fond_Color;
            uniform float _Contour_vitesse_variation;
            uniform float4 _Button_Color;
            uniform float _Contour_paisseur;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float2 node_5601 = (frac(i.uv0)*2.0+-1.0);
                float4 node_2632 = _Time + _TimeEditor;
                float node_4872 = (sin((node_2632.g*_Contour_vitesse_variation))*5.0+15.0);
                float3 emissive = lerp(_Fond_Color.rgb,_Button_Color.rgb,saturate((_Contour_paisseur*(pow(abs(node_5601.r),node_4872)+pow(abs(node_5601.g),node_4872)))));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
