// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:980,x:34640,y:32801,varname:node_980,prsc:2|emission-600-OUT;n:type:ShaderForge.SFN_TexCoord,id:5838,x:30954,y:32893,varname:node_5838,prsc:2,uv:0;n:type:ShaderForge.SFN_Blend,id:7830,x:32256,y:32659,varname:node_7830,prsc:2,blmd:5,clmp:True|SRC-4201-OUT,DST-2229-OUT;n:type:ShaderForge.SFN_OneMinus,id:4201,x:31958,y:32580,varname:node_4201,prsc:2|IN-8690-R;n:type:ShaderForge.SFN_OneMinus,id:2229,x:31974,y:32718,varname:node_2229,prsc:2|IN-8690-G;n:type:ShaderForge.SFN_Multiply,id:5751,x:31426,y:32588,varname:node_5751,prsc:2|A-2573-OUT,B-5838-UVOUT;n:type:ShaderForge.SFN_Slider,id:2573,x:30848,y:32616,ptovrint:False,ptlb:Wire_Thickness,ptin:_Wire_Thickness,varname:node_2573,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_ComponentMask,id:8690,x:31674,y:32588,varname:node_8690,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-5751-OUT;n:type:ShaderForge.SFN_OneMinus,id:4073,x:31250,y:33033,varname:node_4073,prsc:2|IN-5838-UVOUT;n:type:ShaderForge.SFN_Multiply,id:1092,x:31466,y:33015,varname:node_1092,prsc:2|A-4073-OUT,B-2573-OUT;n:type:ShaderForge.SFN_ComponentMask,id:2404,x:31682,y:33015,varname:node_2404,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1092-OUT;n:type:ShaderForge.SFN_OneMinus,id:7653,x:31937,y:33025,varname:node_7653,prsc:2|IN-2404-R;n:type:ShaderForge.SFN_OneMinus,id:8327,x:31937,y:33155,varname:node_8327,prsc:2|IN-2404-G;n:type:ShaderForge.SFN_Blend,id:4979,x:32260,y:33059,varname:node_4979,prsc:2,blmd:5,clmp:True|SRC-7653-OUT,DST-8327-OUT;n:type:ShaderForge.SFN_Blend,id:7298,x:32490,y:32841,varname:node_7298,prsc:2,blmd:5,clmp:True|SRC-7830-OUT,DST-4979-OUT;n:type:ShaderForge.SFN_Multiply,id:600,x:34070,y:32640,varname:node_600,prsc:2|A-3303-OUT,B-5527-OUT;n:type:ShaderForge.SFN_Color,id:4376,x:33525,y:32350,ptovrint:False,ptlb:Gradient_Color,ptin:_Gradient_Color,varname:node_4376,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Slider,id:5218,x:32328,y:33482,ptovrint:False,ptlb:Wire_Falloff_iMin,ptin:_Wire_Falloff_iMin,varname:node_5218,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.9616292,max:1;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:3120,x:32804,y:33619,varname:node_3120,prsc:2|IN-7298-OUT,IMIN-5218-OUT,IMAX-5216-OUT,OMIN-8157-OUT,OMAX-1174-OUT;n:type:ShaderForge.SFN_Slider,id:5216,x:32283,y:33587,ptovrint:False,ptlb:Wire_Falloff_iMax,ptin:_Wire_Falloff_iMax,varname:node_5216,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.974359,max:1;n:type:ShaderForge.SFN_Vector1,id:8157,x:32387,y:33674,varname:node_8157,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:1174,x:32451,y:33738,varname:node_1174,prsc:2,v1:1;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:1557,x:33652,y:33074,varname:node_1557,prsc:2|IN-9006-OUT,IMIN-4354-OUT,IMAX-2640-OUT,OMIN-5959-OUT,OMAX-6532-OUT;n:type:ShaderForge.SFN_Vector1,id:5959,x:33283,y:33216,varname:node_5959,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:6532,x:33283,y:33273,varname:node_6532,prsc:2,v1:0.2;n:type:ShaderForge.SFN_TexCoord,id:7266,x:32424,y:33234,varname:node_7266,prsc:2,uv:0;n:type:ShaderForge.SFN_RemapRange,id:4414,x:32658,y:33253,varname:node_4414,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-7266-UVOUT;n:type:ShaderForge.SFN_Length,id:494,x:32859,y:33242,varname:node_494,prsc:2|IN-4414-OUT;n:type:ShaderForge.SFN_Multiply,id:9006,x:32891,y:33034,varname:node_9006,prsc:2|A-7298-OUT,B-494-OUT;n:type:ShaderForge.SFN_Add,id:5527,x:33615,y:32838,varname:node_5527,prsc:2|A-3973-OUT,B-1557-OUT;n:type:ShaderForge.SFN_Clamp01,id:3973,x:33261,y:32900,varname:node_3973,prsc:2|IN-3120-OUT;n:type:ShaderForge.SFN_Vector1,id:2640,x:33283,y:33160,varname:node_2640,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:4354,x:33283,y:33103,varname:node_4354,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Color,id:2867,x:33543,y:32534,ptovrint:False,ptlb:Wire_Color,ptin:_Wire_Color,varname:node_2867,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.2580121,c3:0.08823532,c4:1;n:type:ShaderForge.SFN_Lerp,id:3303,x:33826,y:32566,varname:node_3303,prsc:2|A-4376-RGB,B-2867-RGB,T-5527-OUT;proporder:2573-4376-5218-5216-2867;pass:END;sub:END;*/

Shader "Custom/SF_CubeWire" {
    Properties {
        _Wire_Thickness ("Wire_Thickness", Range(0, 1)) = 1
        _Gradient_Color ("Gradient_Color", Color) = (1,0,0,1)
        _Wire_Falloff_iMin ("Wire_Falloff_iMin", Range(0, 1)) = 0.9616292
        _Wire_Falloff_iMax ("Wire_Falloff_iMax", Range(0, 1)) = 0.974359
        _Wire_Color ("Wire_Color", Color) = (1,0.2580121,0.08823532,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _Wire_Thickness;
            uniform float4 _Gradient_Color;
            uniform float _Wire_Falloff_iMin;
            uniform float _Wire_Falloff_iMax;
            uniform float4 _Wire_Color;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float2 node_8690 = (_Wire_Thickness*i.uv0).rg;
                float2 node_2404 = ((1.0 - i.uv0)*_Wire_Thickness).rg;
                float node_7298 = saturate(max(saturate(max((1.0 - node_8690.r),(1.0 - node_8690.g))),saturate(max((1.0 - node_2404.r),(1.0 - node_2404.g)))));
                float node_8157 = 0.0;
                float node_4354 = 0.5;
                float node_5959 = 0.0;
                float node_5527 = (saturate((node_8157 + ( (node_7298 - _Wire_Falloff_iMin) * (1.0 - node_8157) ) / (_Wire_Falloff_iMax - _Wire_Falloff_iMin)))+(node_5959 + ( ((node_7298*length((i.uv0*2.0+-1.0))) - node_4354) * (0.2 - node_5959) ) / (1.0 - node_4354)));
                float3 emissive = (lerp(_Gradient_Color.rgb,_Wire_Color.rgb,node_5527)*node_5527);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
