// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:1,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:1,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4625,x:34205,y:32435,varname:node_4625,prsc:2|emission-6818-OUT,alpha-1790-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:1829,x:31193,y:32861,varname:node_1829,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9098,x:31745,y:33004,varname:node_9098,prsc:2|A-995-OUT,B-8486-OUT;n:type:ShaderForge.SFN_Slider,id:995,x:30806,y:32673,ptovrint:False,ptlb:u_freq,ptin:_u_freq,varname:node_995,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:46.62815,max:100;n:type:ShaderForge.SFN_Sin,id:4657,x:31982,y:33017,varname:node_4657,prsc:2|IN-9098-OUT;n:type:ShaderForge.SFN_Add,id:8486,x:31409,y:33061,varname:node_8486,prsc:2|A-1829-Y,B-9748-OUT;n:type:ShaderForge.SFN_Time,id:9839,x:30835,y:33308,varname:node_9839,prsc:2;n:type:ShaderForge.SFN_Clamp01,id:1859,x:32480,y:33063,varname:node_1859,prsc:2|IN-8903-OUT;n:type:ShaderForge.SFN_ObjectPosition,id:4048,x:31339,y:32515,varname:node_4048,prsc:2;n:type:ShaderForge.SFN_Subtract,id:2495,x:31692,y:32716,varname:node_2495,prsc:2|A-1829-Y,B-4048-Y;n:type:ShaderForge.SFN_Clamp01,id:5697,x:32058,y:32736,varname:node_5697,prsc:2|IN-1446-OUT;n:type:ShaderForge.SFN_OneMinus,id:8006,x:32235,y:32736,varname:node_8006,prsc:2|IN-5697-OUT;n:type:ShaderForge.SFN_Add,id:7074,x:33383,y:32845,varname:node_7074,prsc:2|A-9679-R,B-9679-G,C-9679-B;n:type:ShaderForge.SFN_Clamp01,id:1790,x:33779,y:32829,varname:node_1790,prsc:2|IN-7074-OUT;n:type:ShaderForge.SFN_Multiply,id:1446,x:32095,y:32563,varname:node_1446,prsc:2|A-2504-OUT,B-5734-OUT;n:type:ShaderForge.SFN_Slider,id:2504,x:31784,y:32437,ptovrint:False,ptlb:Gradient,ptin:_Gradient,varname:node_2504,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.650066,max:6;n:type:ShaderForge.SFN_Vector1,id:3586,x:31772,y:32614,varname:node_3586,prsc:2,v1:0.8;n:type:ShaderForge.SFN_Add,id:5734,x:31897,y:32699,varname:node_5734,prsc:2|A-3586-OUT,B-2495-OUT;n:type:ShaderForge.SFN_Add,id:8903,x:32209,y:33071,varname:node_8903,prsc:2|A-4657-OUT,B-9213-OUT;n:type:ShaderForge.SFN_OneMinus,id:6003,x:31114,y:33284,varname:node_6003,prsc:2|IN-9839-TSL;n:type:ShaderForge.SFN_Multiply,id:8064,x:32463,y:32374,varname:node_8064,prsc:2|A-1588-RGB,B-8006-OUT;n:type:ShaderForge.SFN_Color,id:1588,x:32161,y:32226,ptovrint:False,ptlb:Gradient_Color,ptin:_Gradient_Color,varname:node_1588,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:7145,x:32838,y:32451,varname:node_7145,prsc:2|A-275-RGB,B-1859-OUT;n:type:ShaderForge.SFN_Color,id:275,x:32546,y:32186,ptovrint:False,ptlb:u_color,ptin:_u_color,varname:node_275,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:0.9586205,c4:1;n:type:ShaderForge.SFN_Add,id:740,x:33048,y:32397,varname:node_740,prsc:2|A-8064-OUT,B-7145-OUT,C-5437-OUT,D-1266-OUT;n:type:ShaderForge.SFN_Multiply,id:9748,x:31114,y:33078,varname:node_9748,prsc:2|A-1394-OUT,B-6003-OUT;n:type:ShaderForge.SFN_Slider,id:1394,x:30436,y:33040,ptovrint:False,ptlb:u_Speed,ptin:_u_Speed,varname:node_1394,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:4.078213,max:10;n:type:ShaderForge.SFN_Slider,id:9213,x:31525,y:33316,ptovrint:False,ptlb:u_width,ptin:_u_width,varname:node_9213,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:-0.7077011,max:1;n:type:ShaderForge.SFN_ComponentMask,id:9679,x:33366,y:32542,varname:node_9679,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-6818-OUT;n:type:ShaderForge.SFN_Clamp01,id:6818,x:33394,y:32369,varname:node_6818,prsc:2|IN-7860-OUT;n:type:ShaderForge.SFN_TexCoord,id:9586,x:30786,y:31531,varname:node_9586,prsc:2,uv:0;n:type:ShaderForge.SFN_Vector1,id:9527,x:32341,y:31143,varname:node_9527,prsc:2,v1:413.7;n:type:ShaderForge.SFN_Multiply,id:2922,x:31184,y:31437,varname:node_2922,prsc:2|A-5537-OUT,B-7268-OUT;n:type:ShaderForge.SFN_Slider,id:5537,x:30741,y:31345,ptovrint:False,ptlb:v_freq,ptin:_v_freq,varname:node_5537,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:12.76019,max:20;n:type:ShaderForge.SFN_Floor,id:75,x:31390,y:31369,varname:node_75,prsc:2|IN-2922-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5815,x:31606,y:31359,varname:node_5815,prsc:2,cc1:0,cc2:0,cc3:-1,cc4:-1|IN-75-OUT;n:type:ShaderForge.SFN_Multiply,id:6051,x:31904,y:31386,varname:node_6051,prsc:2|A-1899-OUT,B-5815-G;n:type:ShaderForge.SFN_Add,id:6749,x:32096,y:31255,varname:node_6749,prsc:2|A-5815-R,B-6051-OUT;n:type:ShaderForge.SFN_Vector1,id:1899,x:31707,y:31298,varname:node_1899,prsc:2,v1:57;n:type:ShaderForge.SFN_Sin,id:2370,x:32328,y:31255,varname:node_2370,prsc:2|IN-6749-OUT;n:type:ShaderForge.SFN_Multiply,id:3027,x:32557,y:31255,varname:node_3027,prsc:2|A-9527-OUT,B-2370-OUT;n:type:ShaderForge.SFN_Frac,id:983,x:32756,y:31255,varname:node_983,prsc:2|IN-3027-OUT;n:type:ShaderForge.SFN_TexCoord,id:7985,x:32217,y:31446,varname:node_7985,prsc:2,uv:0;n:type:ShaderForge.SFN_Set,id:7364,x:31163,y:31299,varname:__freq,prsc:2|IN-5537-OUT;n:type:ShaderForge.SFN_Get,id:4983,x:32276,y:31783,varname:node_4983,prsc:2|IN-7364-OUT;n:type:ShaderForge.SFN_Multiply,id:4239,x:32707,y:31747,varname:node_4239,prsc:2|A-7985-U,B-4983-OUT,C-4131-OUT;n:type:ShaderForge.SFN_Sin,id:1684,x:32952,y:31762,varname:node_1684,prsc:2|IN-4239-OUT;n:type:ShaderForge.SFN_Vector1,id:4131,x:32328,y:31886,varname:node_4131,prsc:2,v1:3.14159;n:type:ShaderForge.SFN_Clamp01,id:3207,x:33815,y:31784,varname:node_3207,prsc:2|IN-8729-OUT;n:type:ShaderForge.SFN_Multiply,id:9499,x:34040,y:31739,varname:node_9499,prsc:2|A-1440-OUT,B-3207-OUT;n:type:ShaderForge.SFN_Ceil,id:8729,x:33606,y:31822,varname:node_8729,prsc:2|IN-2950-OUT;n:type:ShaderForge.SFN_Abs,id:206,x:32894,y:31945,varname:node_206,prsc:2|IN-1684-OUT;n:type:ShaderForge.SFN_OneMinus,id:7436,x:33065,y:31945,varname:node_7436,prsc:2|IN-206-OUT;n:type:ShaderForge.SFN_Multiply,id:9741,x:33257,y:31934,varname:node_9741,prsc:2|A-7436-OUT,B-9060-OUT;n:type:ShaderForge.SFN_Vector1,id:9060,x:33180,y:31868,varname:node_9060,prsc:2,v1:400;n:type:ShaderForge.SFN_OneMinus,id:2950,x:33417,y:31854,varname:node_2950,prsc:2|IN-9741-OUT;n:type:ShaderForge.SFN_Clamp01,id:9191,x:34249,y:31761,varname:node_9191,prsc:2|IN-9499-OUT;n:type:ShaderForge.SFN_Panner,id:3949,x:33770,y:31447,varname:node_3949,prsc:2,spu:0,spv:1|UVIN-1256-UVOUT,DIST-6372-OUT;n:type:ShaderForge.SFN_TexCoord,id:1256,x:33370,y:31271,varname:node_1256,prsc:2,uv:0;n:type:ShaderForge.SFN_ComponentMask,id:3357,x:33978,y:31423,varname:node_3357,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-3949-UVOUT;n:type:ShaderForge.SFN_Frac,id:2989,x:34207,y:31409,varname:node_2989,prsc:2|IN-3357-OUT;n:type:ShaderForge.SFN_Multiply,id:6372,x:33161,y:31448,varname:node_6372,prsc:2|A-983-OUT,B-4182-OUT;n:type:ShaderForge.SFN_Time,id:1639,x:32245,y:31616,varname:node_1639,prsc:2;n:type:ShaderForge.SFN_Add,id:4182,x:32688,y:31494,varname:node_4182,prsc:2|A-7985-V,B-1639-T;n:type:ShaderForge.SFN_Vector1,id:1440,x:33710,y:31681,varname:node_1440,prsc:2,v1:4;n:type:ShaderForge.SFN_Multiply,id:6302,x:34535,y:31726,varname:node_6302,prsc:2|A-4167-OUT,B-9191-OUT;n:type:ShaderForge.SFN_OneMinus,id:4167,x:34430,y:31503,varname:node_4167,prsc:2|IN-2673-OUT;n:type:ShaderForge.SFN_Multiply,id:2673,x:34402,y:31344,varname:node_2673,prsc:2|A-3752-OUT,B-2989-OUT;n:type:ShaderForge.SFN_Vector1,id:3752,x:34251,y:31328,varname:node_3752,prsc:2,v1:2;n:type:ShaderForge.SFN_Clamp01,id:1918,x:34768,y:31822,varname:node_1918,prsc:2|IN-6302-OUT;n:type:ShaderForge.SFN_Add,id:7268,x:31009,y:31671,varname:node_7268,prsc:2|A-9586-U,B-2801-OUT;n:type:ShaderForge.SFN_Vector1,id:2801,x:30643,y:31827,varname:node_2801,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Fresnel,id:675,x:33344,y:33429,varname:node_675,prsc:2|NRM-7641-OUT,EXP-3282-OUT;n:type:ShaderForge.SFN_NormalVector,id:7641,x:32984,y:33325,prsc:2,pt:False;n:type:ShaderForge.SFN_Slider,id:3282,x:32928,y:33596,ptovrint:False,ptlb:Fresnel_size,ptin:_Fresnel_size,varname:node_3282,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.484813,max:5;n:type:ShaderForge.SFN_Multiply,id:616,x:33873,y:33723,varname:node_616,prsc:2|A-4597-OUT,B-1342-OUT;n:type:ShaderForge.SFN_Color,id:6527,x:33114,y:33098,ptovrint:False,ptlb:Fresnel_color,ptin:_Fresnel_color,varname:node_6527,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9558824,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:5437,x:35078,y:31910,varname:node_5437,prsc:2|A-3550-RGB,B-1918-OUT;n:type:ShaderForge.SFN_Color,id:3550,x:35074,y:31594,ptovrint:False,ptlb:v_color,ptin:_v_color,varname:node_3550,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.6029412,c2:0.1152682,c3:0.1152682,c4:1;n:type:ShaderForge.SFN_Slider,id:5929,x:32978,y:33948,ptovrint:False,ptlb:Fresnel_lines_size,ptin:_Fresnel_lines_size,varname:node_5929,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1917641,max:1;n:type:ShaderForge.SFN_Sin,id:1311,x:34485,y:33683,varname:node_1311,prsc:2|IN-7098-OUT;n:type:ShaderForge.SFN_Fresnel,id:5258,x:33447,y:33717,varname:node_5258,prsc:2|NRM-7641-OUT,EXP-5929-OUT;n:type:ShaderForge.SFN_Slider,id:4597,x:33231,y:34111,ptovrint:False,ptlb:Fresnel_lines_freq,ptin:_Fresnel_lines_freq,varname:node_4597,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:46.55146,max:100;n:type:ShaderForge.SFN_Sqrt,id:1342,x:33664,y:33717,varname:node_1342,prsc:2|IN-5258-OUT;n:type:ShaderForge.SFN_Time,id:712,x:33929,y:34107,varname:node_712,prsc:2;n:type:ShaderForge.SFN_Add,id:7098,x:34224,y:33665,varname:node_7098,prsc:2|A-616-OUT,B-712-TTR;n:type:ShaderForge.SFN_Clamp01,id:7633,x:34704,y:33621,varname:node_7633,prsc:2|IN-1311-OUT;n:type:ShaderForge.SFN_Multiply,id:1266,x:33691,y:33426,varname:node_1266,prsc:2|A-675-OUT,B-7633-OUT;n:type:ShaderForge.SFN_Add,id:1265,x:34097,y:33380,varname:node_1265,prsc:2|A-675-OUT,B-1266-OUT;n:type:ShaderForge.SFN_Multiply,id:3040,x:34441,y:33292,varname:node_3040,prsc:2|A-6533-OUT,B-6527-RGB;n:type:ShaderForge.SFN_Add,id:7860,x:33125,y:32634,varname:node_7860,prsc:2|A-740-OUT,B-3040-OUT;n:type:ShaderForge.SFN_Clamp01,id:6533,x:34155,y:33258,varname:node_6533,prsc:2|IN-1265-OUT;proporder:2504-1588-275-995-1394-9213-5537-3550-6527-3282-5929-4597;pass:END;sub:END;*/

Shader "Custom/SF_Teleporter_02" {
    Properties {
        _Gradient ("Gradient", Range(0, 6)) = 1.650066
        _Gradient_Color ("Gradient_Color", Color) = (1,0,0,1)
        _u_color ("u_color", Color) = (0,1,0.9586205,1)
        _u_freq ("u_freq", Range(0, 100)) = 46.62815
        _u_Speed ("u_Speed", Range(0, 10)) = 4.078213
        _u_width ("u_width", Range(-1, 1)) = -0.7077011
        _v_freq ("v_freq", Range(0, 20)) = 12.76019
        _v_color ("v_color", Color) = (0.6029412,0.1152682,0.1152682,1)
        _Fresnel_color ("Fresnel_color", Color) = (0.9558824,0,0,1)
        _Fresnel_size ("Fresnel_size", Range(0, 5)) = 1.484813
        _Fresnel_lines_size ("Fresnel_lines_size", Range(0, 1)) = 0.1917641
        _Fresnel_lines_freq ("Fresnel_lines_freq", Range(0, 100)) = 46.55146
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
            "DisableBatching"="True"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Front
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _u_freq;
            uniform float _Gradient;
            uniform float4 _Gradient_Color;
            uniform float4 _u_color;
            uniform float _u_Speed;
            uniform float _u_width;
            uniform float _v_freq;
            uniform float _Fresnel_size;
            uniform float4 _Fresnel_color;
            uniform float4 _v_color;
            uniform float _Fresnel_lines_size;
            uniform float _Fresnel_lines_freq;
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
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(-v.normal);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 node_9839 = _Time + _TimeEditor;
                float2 node_5815 = floor((_v_freq*(i.uv0.r+0.1))).rr;
                float4 node_1639 = _Time + _TimeEditor;
                float __freq = _v_freq;
                float node_675 = pow(1.0-max(0,dot(i.normalDir, viewDirection)),_Fresnel_size);
                float4 node_712 = _Time + _TimeEditor;
                float node_1266 = (node_675*saturate(sin(((_Fresnel_lines_freq*sqrt(pow(1.0-max(0,dot(i.normalDir, viewDirection)),_Fresnel_lines_size)))+node_712.a))));
                float3 node_6818 = saturate((((_Gradient_Color.rgb*(1.0 - saturate((_Gradient*(0.8+(i.posWorld.g-objPos.g))))))+(_u_color.rgb*saturate((sin((_u_freq*(i.posWorld.g+(_u_Speed*(1.0 - node_9839.r)))))+_u_width)))+(_v_color.rgb*saturate(((1.0 - (2.0*frac((i.uv0+(frac((413.7*sin((node_5815.r+(57.0*node_5815.g)))))*(i.uv0.g+node_1639.g))*float2(0,1)).g)))*saturate((4.0*saturate(ceil((1.0 - ((1.0 - abs(sin((i.uv0.r*__freq*3.14159))))*400.0)))))))))+node_1266)+(saturate((node_675+node_1266))*_Fresnel_color.rgb)));
                float3 emissive = node_6818;
                float3 finalColor = emissive;
                float3 node_9679 = node_6818.rgb;
                float node_7074 = (node_9679.r+node_9679.g+node_9679.b);
                fixed4 finalRGBA = fixed4(finalColor,saturate(node_7074));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
