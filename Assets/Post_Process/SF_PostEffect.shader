// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:0,vtps:1,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:6,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:1,qpre:4,rntp:5,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:2865,x:33362,y:33003,varname:node_2865,prsc:2|emission-4088-OUT,voffset-4177-OUT;n:type:ShaderForge.SFN_TexCoord,id:6793,x:32198,y:33707,varname:node_6793,prsc:2,uv:0;n:type:ShaderForge.SFN_ProjectionParameters,id:8707,x:32198,y:33920,varname:node_8707,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:9496,x:32397,y:33707,varname:node_9496,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-6793-UVOUT;n:type:ShaderForge.SFN_Append,id:6538,x:32397,y:33892,varname:node_6538,prsc:2|A-5896-OUT,B-8707-SGN;n:type:ShaderForge.SFN_Vector1,id:5896,x:32198,y:33861,varname:node_5896,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:4177,x:32596,y:33777,varname:node_4177,prsc:2|A-9496-OUT,B-6538-OUT;n:type:ShaderForge.SFN_Tex2d,id:8803,x:31507,y:32440,varname:node_8803,prsc:2,ntxv:0,isnm:False|UVIN-8027-OUT,TEX-7600-TEX;n:type:ShaderForge.SFN_TexCoord,id:6265,x:30605,y:32376,varname:node_6265,prsc:2,uv:0;n:type:ShaderForge.SFN_Append,id:8027,x:31282,y:32475,varname:node_8027,prsc:2|A-6265-U,B-3831-OUT;n:type:ShaderForge.SFN_OneMinus,id:3353,x:30834,y:32668,varname:node_3353,prsc:2|IN-6265-V;n:type:ShaderForge.SFN_Tex2dAsset,id:7600,x:31291,y:32743,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_7600,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_SwitchProperty,id:3831,x:31071,y:32579,ptovrint:False,ptlb:Invert_V,ptin:_Invert_V,varname:node_3831,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6265-V,B-3353-OUT;n:type:ShaderForge.SFN_Color,id:9228,x:30794,y:33347,ptovrint:False,ptlb:Depth_Color_01,ptin:_Depth_Color_01,varname:node_9228,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9558824,c2:0.04217127,c3:0.2123105,c4:1;n:type:ShaderForge.SFN_Color,id:8097,x:30794,y:33514,ptovrint:False,ptlb:Depth_Color_02,ptin:_Depth_Color_02,varname:node_8097,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.02854674,c2:0.9705882,c3:0.6197589,c4:1;n:type:ShaderForge.SFN_Slider,id:9249,x:30027,y:34055,ptovrint:False,ptlb:Depth_Color_0102_int,ptin:_Depth_Color_0102_int,varname:node_9249,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0.4594142,max:1;n:type:ShaderForge.SFN_Lerp,id:6187,x:31133,y:34096,varname:node_6187,prsc:2|A-9228-RGB,B-8097-RGB,T-5869-OUT;n:type:ShaderForge.SFN_Lerp,id:6960,x:31417,y:34069,varname:node_6960,prsc:2|A-6187-OUT,B-9550-RGB,T-3187-OUT;n:type:ShaderForge.SFN_Color,id:9550,x:30794,y:33685,ptovrint:False,ptlb:Depth_Color_03,ptin:_Depth_Color_03,varname:node_9550,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5689953,c2:0.8014706,c3:0.03535898,c4:1;n:type:ShaderForge.SFN_Clamp01,id:5869,x:30907,y:34119,varname:node_5869,prsc:2|IN-5302-OUT;n:type:ShaderForge.SFN_DepthBlend,id:2678,x:30134,y:34232,varname:node_2678,prsc:2|DIST-3069-OUT;n:type:ShaderForge.SFN_Slider,id:3069,x:29571,y:34269,ptovrint:False,ptlb:Depth_Dist,ptin:_Depth_Dist,varname:node_3069,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:3.695601,max:100;n:type:ShaderForge.SFN_TexCoord,id:6410,x:31963,y:31853,varname:node_6410,prsc:2,uv:0;n:type:ShaderForge.SFN_Sin,id:1136,x:32561,y:32188,varname:node_1136,prsc:2|IN-6461-OUT;n:type:ShaderForge.SFN_Multiply,id:6461,x:32371,y:32200,varname:node_6461,prsc:2|A-6821-PXH,B-481-OUT,C-7172-OUT;n:type:ShaderForge.SFN_Clamp01,id:9772,x:32798,y:32188,varname:node_9772,prsc:2|IN-1136-OUT;n:type:ShaderForge.SFN_Lerp,id:4572,x:32143,y:33217,varname:node_4572,prsc:2|A-6960-OUT,B-8803-RGB,T-3858-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6245,x:32002,y:32672,varname:node_6245,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-8803-RGB;n:type:ShaderForge.SFN_Add,id:3858,x:32274,y:32690,varname:node_3858,prsc:2|A-6245-R,B-6245-G,C-6245-B;n:type:ShaderForge.SFN_ScreenParameters,id:6821,x:31813,y:32182,varname:node_6821,prsc:2;n:type:ShaderForge.SFN_Add,id:481,x:32371,y:31946,varname:node_481,prsc:2|A-6410-V,B-4100-OUT;n:type:ShaderForge.SFN_Time,id:2182,x:32062,y:31697,varname:node_2182,prsc:2;n:type:ShaderForge.SFN_Blend,id:6016,x:32872,y:33114,varname:node_6016,prsc:2,blmd:10,clmp:True|SRC-1094-OUT,DST-3599-OUT;n:type:ShaderForge.SFN_Lerp,id:3599,x:33066,y:32195,varname:node_3599,prsc:2|A-1171-OUT,B-8334-OUT,T-9772-OUT;n:type:ShaderForge.SFN_Vector3,id:1171,x:32836,y:31903,varname:node_1171,prsc:2,v1:0,v2:0.710345,v3:1;n:type:ShaderForge.SFN_Vector3,id:8334,x:32836,y:32013,varname:node_8334,prsc:2,v1:0,v2:1,v3:0.3793104;n:type:ShaderForge.SFN_Lerp,id:4088,x:32984,y:32900,varname:node_4088,prsc:2|A-1094-OUT,B-6016-OUT,T-2067-OUT;n:type:ShaderForge.SFN_Slider,id:2067,x:32624,y:32933,ptovrint:False,ptlb:Screen_Effect_Intensity,ptin:_Screen_Effect_Intensity,varname:node_2067,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:7172,x:31812,y:32056,ptovrint:False,ptlb:Screen_Lines_Size,ptin:_Screen_Lines_Size,varname:node_7172,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:4100,x:32296,y:31718,varname:node_4100,prsc:2|A-9333-OUT,B-2182-TSL;n:type:ShaderForge.SFN_Slider,id:9333,x:31891,y:31575,ptovrint:False,ptlb:Screen_Lines_Speed,ptin:_Screen_Lines_Speed,varname:node_9333,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:0.1025641,max:3;n:type:ShaderForge.SFN_Blend,id:6104,x:32143,y:33379,varname:node_6104,prsc:2,blmd:5,clmp:True|SRC-8803-RGB,DST-6960-OUT;n:type:ShaderForge.SFN_Lerp,id:1094,x:32377,y:33322,varname:node_1094,prsc:2|A-4572-OUT,B-6104-OUT,T-2441-OUT;n:type:ShaderForge.SFN_Slider,id:2441,x:31630,y:33295,ptovrint:False,ptlb:WireFrame-Depth_Color_Replace,ptin:_WireFrameDepth_Color_Replace,varname:node_2441,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Add,id:5361,x:30601,y:34065,varname:node_5361,prsc:2|A-9249-OUT,B-2678-OUT;n:type:ShaderForge.SFN_Slider,id:7228,x:30437,y:34524,ptovrint:False,ptlb:Depth_Color_0102_Power,ptin:_Depth_Color_0102_Power,varname:node_7228,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2.238422,max:3;n:type:ShaderForge.SFN_Power,id:5302,x:30687,y:34277,varname:node_5302,prsc:2|VAL-5361-OUT,EXP-7228-OUT;n:type:ShaderForge.SFN_Power,id:3187,x:31180,y:34375,varname:node_3187,prsc:2|VAL-2678-OUT,EXP-2620-OUT;n:type:ShaderForge.SFN_Slider,id:2620,x:30752,y:34641,ptovrint:False,ptlb:Depth_Color_03_Power,ptin:_Depth_Color_03_Power,varname:node_2620,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:3,max:3;proporder:7600-3831-9228-8097-9550-2441-3069-9249-2067-7172-9333-7228-2620;pass:END;sub:END;*/

Shader "Shader Forge/SF_PostEffect" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        [MaterialToggle] _Invert_V ("Invert_V", Float ) = 0
        _Depth_Color_01 ("Depth_Color_01", Color) = (0.9558824,0.04217127,0.2123105,1)
        _Depth_Color_02 ("Depth_Color_02", Color) = (0.02854674,0.9705882,0.6197589,1)
        _Depth_Color_03 ("Depth_Color_03", Color) = (0.5689953,0.8014706,0.03535898,1)
        _WireFrameDepth_Color_Replace ("WireFrame-Depth_Color_Replace", Range(0, 1)) = 0
        _Depth_Dist ("Depth_Dist", Range(0, 100)) = 3.695601
        _Depth_Color_0102_int ("Depth_Color_0102_int", Range(-1, 1)) = 0.4594142
        _Screen_Effect_Intensity ("Screen_Effect_Intensity", Range(0, 1)) = 0
        _Screen_Lines_Size ("Screen_Lines_Size", Range(0, 1)) = 0
        _Screen_Lines_Speed ("Screen_Lines_Speed", Range(-3, 3)) = 0.1025641
        _Depth_Color_0102_Power ("Depth_Color_0102_Power", Range(0, 3)) = 2.238422
        _Depth_Color_03_Power ("Depth_Color_03_Power", Range(0, 3)) = 3
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Overlay+1"
            "RenderType"="Overlay"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            ZTest Always
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform fixed _Invert_V;
            uniform float4 _Depth_Color_01;
            uniform float4 _Depth_Color_02;
            uniform float _Depth_Color_0102_int;
            uniform float4 _Depth_Color_03;
            uniform float _Depth_Dist;
            uniform float _Screen_Effect_Intensity;
            uniform float _Screen_Lines_Size;
            uniform float _Screen_Lines_Speed;
            uniform float _WireFrameDepth_Color_Replace;
            uniform float _Depth_Color_0102_Power;
            uniform float _Depth_Color_03_Power;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 projPos : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                v.vertex.xyz = float3(((o.uv0*2.0+-1.0)*float2(1.0,_ProjectionParams.r)),0.0);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = v.vertex;
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
////// Lighting:
////// Emissive:
                float node_2678 = saturate((sceneZ-partZ)/_Depth_Dist);
                float3 node_6960 = lerp(lerp(_Depth_Color_01.rgb,_Depth_Color_02.rgb,saturate(pow((_Depth_Color_0102_int+node_2678),_Depth_Color_0102_Power))),_Depth_Color_03.rgb,pow(node_2678,_Depth_Color_03_Power));
                float2 node_8027 = float2(i.uv0.r,lerp( i.uv0.g, (1.0 - i.uv0.g), _Invert_V ));
                float4 node_8803 = tex2D(_MainTex,TRANSFORM_TEX(node_8027, _MainTex));
                float3 node_6245 = node_8803.rgb.rgb;
                float3 node_1094 = lerp(lerp(node_6960,node_8803.rgb,(node_6245.r+node_6245.g+node_6245.b)),saturate(max(node_8803.rgb,node_6960)),_WireFrameDepth_Color_Replace);
                float4 node_2182 = _Time + _TimeEditor;
                float3 emissive = lerp(node_1094,saturate(( lerp(float3(0,0.710345,1),float3(0,1,0.3793104),saturate(sin((_ScreenParams.g*(i.uv0.g+(_Screen_Lines_Speed*node_2182.r))*_Screen_Lines_Size)))) > 0.5 ? (1.0-(1.0-2.0*(lerp(float3(0,0.710345,1),float3(0,1,0.3793104),saturate(sin((_ScreenParams.g*(i.uv0.g+(_Screen_Lines_Speed*node_2182.r))*_Screen_Lines_Size))))-0.5))*(1.0-node_1094)) : (2.0*lerp(float3(0,0.710345,1),float3(0,1,0.3793104),saturate(sin((_ScreenParams.g*(i.uv0.g+(_Screen_Lines_Speed*node_2182.r))*_Screen_Lines_Size))))*node_1094) )),_Screen_Effect_Intensity);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
