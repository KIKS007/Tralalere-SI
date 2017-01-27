// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-2980-OUT,alpha-7804-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9329,x:30997,y:33257,varname:node_9329,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-2802-UVOUT;n:type:ShaderForge.SFN_Multiply,id:2819,x:31168,y:33281,varname:node_2819,prsc:2|A-9329-OUT,B-5530-OUT;n:type:ShaderForge.SFN_Slider,id:5530,x:30814,y:33475,ptovrint:False,ptlb:Wall_largeur_trait,ptin:_Wall_largeur_trait,varname:node_5530,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:35,max:50;n:type:ShaderForge.SFN_Panner,id:2802,x:30789,y:33257,varname:node_2802,prsc:2,spu:0,spv:1|UVIN-703-OUT,DIST-8427-OUT;n:type:ShaderForge.SFN_Time,id:9779,x:30299,y:33378,varname:node_9779,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8427,x:30557,y:33450,varname:node_8427,prsc:2|A-9779-TSL,B-3667-OUT;n:type:ShaderForge.SFN_Slider,id:3667,x:30142,y:33539,ptovrint:False,ptlb:speed,ptin:_speed,varname:node_3667,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1,max:10;n:type:ShaderForge.SFN_Sin,id:6736,x:31404,y:33283,varname:node_6736,prsc:2|IN-2819-OUT;n:type:ShaderForge.SFN_Multiply,id:8585,x:31610,y:33283,varname:node_8585,prsc:2|A-6736-OUT,B-4787-OUT;n:type:ShaderForge.SFN_OneMinus,id:4177,x:31794,y:33283,varname:node_4177,prsc:2|IN-8585-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5588,x:31405,y:33670,varname:node_5588,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-5722-UVOUT;n:type:ShaderForge.SFN_OneMinus,id:8416,x:31606,y:33670,varname:node_8416,prsc:2|IN-5588-OUT;n:type:ShaderForge.SFN_Multiply,id:4426,x:32109,y:33445,varname:node_4426,prsc:2|A-4177-OUT,B-9648-OUT;n:type:ShaderForge.SFN_Vector1,id:4787,x:31405,y:33465,varname:node_4787,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:3343,x:31168,y:32985,varname:node_3343,prsc:2|A-7731-OUT,B-9329-OUT;n:type:ShaderForge.SFN_Sin,id:9157,x:31412,y:32985,varname:node_9157,prsc:2|IN-3343-OUT;n:type:ShaderForge.SFN_Multiply,id:8647,x:31618,y:32985,varname:node_8647,prsc:2|A-9157-OUT,B-2723-OUT;n:type:ShaderForge.SFN_OneMinus,id:4122,x:31802,y:32985,varname:node_4122,prsc:2|IN-8647-OUT;n:type:ShaderForge.SFN_Vector1,id:2723,x:31413,y:33167,varname:node_2723,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:7804,x:32349,y:33147,varname:node_7804,prsc:2|A-4122-OUT,B-6899-OUT;n:type:ShaderForge.SFN_Vector1,id:7731,x:30903,y:32971,varname:node_7731,prsc:2,v1:1200;n:type:ShaderForge.SFN_Time,id:4068,x:31975,y:33761,varname:node_4068,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6899,x:32395,y:33433,varname:node_6899,prsc:2|A-4426-OUT,B-2338-OUT;n:type:ShaderForge.SFN_Sin,id:7756,x:32198,y:33761,varname:node_7756,prsc:2|IN-4068-TDB;n:type:ShaderForge.SFN_RemapRange,id:2338,x:32361,y:33761,varname:node_2338,prsc:2,frmn:0,frmx:1,tomn:1,tomx:1.2|IN-7756-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:7330,x:30157,y:32132,varname:node_7330,prsc:2;n:type:ShaderForge.SFN_ViewPosition,id:1716,x:30157,y:32268,varname:node_1716,prsc:2;n:type:ShaderForge.SFN_Distance,id:288,x:30393,y:32256,varname:node_288,prsc:2|A-7330-XYZ,B-1716-XYZ;n:type:ShaderForge.SFN_Divide,id:2375,x:31593,y:32204,varname:node_2375,prsc:2|A-288-OUT,B-1314-OUT;n:type:ShaderForge.SFN_Slider,id:1314,x:30983,y:32528,ptovrint:False,ptlb:Warning_transition_distance,ptin:_Warning_transition_distance,varname:node_1314,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:10,max:10;n:type:ShaderForge.SFN_Power,id:3820,x:31838,y:32204,varname:node_3820,prsc:2|VAL-2375-OUT,EXP-2699-OUT;n:type:ShaderForge.SFN_Slider,id:2699,x:31365,y:32527,ptovrint:False,ptlb:Warning_Falloff,ptin:_Warning_Falloff,varname:_transitiondistance_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_Clamp01,id:7659,x:32034,y:32204,varname:node_7659,prsc:2|IN-3820-OUT;n:type:ShaderForge.SFN_Lerp,id:2980,x:32355,y:32604,varname:node_2980,prsc:2|A-1758-OUT,B-1351-OUT,T-4414-OUT;n:type:ShaderForge.SFN_Color,id:9220,x:31788,y:32814,ptovrint:False,ptlb:Warning_color,ptin:_Warning_color,varname:node_9220,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Slider,id:234,x:30840,y:31712,ptovrint:False,ptlb:Warning__circles,ptin:_Warning__circles,varname:node_234,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3,max:20;n:type:ShaderForge.SFN_Frac,id:3659,x:31693,y:31841,varname:node_3659,prsc:2|IN-2365-OUT;n:type:ShaderForge.SFN_Time,id:3010,x:31172,y:31526,varname:node_3010,prsc:2;n:type:ShaderForge.SFN_Clamp01,id:7812,x:31879,y:31841,varname:node_7812,prsc:2|IN-3659-OUT;n:type:ShaderForge.SFN_Multiply,id:68,x:31280,y:31907,varname:node_68,prsc:2|A-234-OUT,B-6448-OUT;n:type:ShaderForge.SFN_Color,id:9918,x:29565,y:32010,ptovrint:False,ptlb:Wall_Color_up,ptin:_Wall_Color_up,varname:node_9918,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:0;n:type:ShaderForge.SFN_Color,id:5367,x:29604,y:32473,ptovrint:False,ptlb:Wall_Color_middle,ptin:_Wall_Color_middle,varname:_node_9918_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.7137255,c2:0.3686275,c3:0.3607843,c4:1;n:type:ShaderForge.SFN_Color,id:5037,x:29584,y:32898,ptovrint:False,ptlb:Wall_Color_down,ptin:_Wall_Color_down,varname:_node_9918_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.9921569,c3:0.2078431,c4:0;n:type:ShaderForge.SFN_Lerp,id:6145,x:29841,y:32276,varname:node_6145,prsc:2|A-5367-RGB,B-9918-RGB,T-8883-OUT;n:type:ShaderForge.SFN_Slider,id:3225,x:29094,y:32186,ptovrint:False,ptlb:Wall_Color_up_position,ptin:_Wall_Color_up_position,varname:node_3225,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:-0.1398237,max:1;n:type:ShaderForge.SFN_Add,id:9939,x:29439,y:32167,varname:node_9939,prsc:2|A-2965-OUT,B-3225-OUT;n:type:ShaderForge.SFN_Slider,id:1498,x:29051,y:32343,ptovrint:False,ptlb:Wall_Color_up_Falloff,ptin:_Wall_Color_up_Falloff,varname:node_1498,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.131185,max:2;n:type:ShaderForge.SFN_Lerp,id:1758,x:29916,y:32594,cmnt:dégradé,varname:node_1758,prsc:2|A-5037-RGB,B-6145-OUT,T-3883-OUT;n:type:ShaderForge.SFN_Clamp01,id:8883,x:29618,y:32310,varname:node_8883,prsc:2|IN-6696-OUT;n:type:ShaderForge.SFN_Slider,id:4991,x:29003,y:32704,ptovrint:False,ptlb:Wall_Color_down_position,ptin:_Wall_Color_down_position,varname:_node_3225_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0.2717233,max:1;n:type:ShaderForge.SFN_Add,id:1935,x:29348,y:32626,varname:node_1935,prsc:2|A-2965-OUT,B-4991-OUT;n:type:ShaderForge.SFN_Slider,id:7981,x:29003,y:32822,ptovrint:False,ptlb:Wall_Color_down_Falloff,ptin:_Wall_Color_down_Falloff,varname:_node_1498_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2,max:2;n:type:ShaderForge.SFN_Clamp01,id:3883,x:29584,y:32736,varname:node_3883,prsc:2|IN-5812-OUT;n:type:ShaderForge.SFN_Subtract,id:2365,x:31458,y:31841,varname:node_2365,prsc:2|A-7586-OUT,B-68-OUT;n:type:ShaderForge.SFN_Exp,id:9884,x:30628,y:32105,varname:node_9884,prsc:2,et:1|IN-288-OUT;n:type:ShaderForge.SFN_Depth,id:9447,x:30319,y:31911,varname:node_9447,prsc:2;n:type:ShaderForge.SFN_Exp,id:5383,x:30918,y:31852,varname:node_5383,prsc:2,et:1|IN-5378-OUT;n:type:ShaderForge.SFN_Subtract,id:502,x:30945,y:32058,varname:node_502,prsc:2|A-9884-OUT,B-5383-OUT;n:type:ShaderForge.SFN_Sqrt,id:6448,x:31126,y:32058,varname:node_6448,prsc:2|IN-502-OUT;n:type:ShaderForge.SFN_Multiply,id:6696,x:29439,y:32310,varname:node_6696,prsc:2|A-9939-OUT,B-1498-OUT;n:type:ShaderForge.SFN_Multiply,id:5812,x:29381,y:32761,varname:node_5812,prsc:2|A-1935-OUT,B-7981-OUT;n:type:ShaderForge.SFN_Slider,id:6459,x:31560,y:33841,ptovrint:False,ptlb:Wall_height,ptin:_Wall_height,varname:node_6459,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Subtract,id:9648,x:31801,y:33670,varname:node_9648,prsc:2|A-8416-OUT,B-6459-OUT;n:type:ShaderForge.SFN_OneMinus,id:6442,x:32067,y:31841,varname:node_6442,prsc:2|IN-7812-OUT;n:type:ShaderForge.SFN_NormalVector,id:4035,x:30319,y:31757,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:7015,x:30522,y:31862,varname:node_7015,prsc:2|A-4035-OUT,B-9447-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5378,x:30683,y:31852,varname:node_5378,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-7015-OUT;n:type:ShaderForge.SFN_Multiply,id:4414,x:32657,y:32080,varname:node_4414,prsc:2|A-6442-OUT,B-9136-OUT;n:type:ShaderForge.SFN_OneMinus,id:9136,x:32225,y:32204,varname:node_9136,prsc:2|IN-7659-OUT;n:type:ShaderForge.SFN_Multiply,id:7586,x:31378,y:31515,varname:node_7586,prsc:2|A-7657-OUT,B-3010-T;n:type:ShaderForge.SFN_Slider,id:7657,x:31015,y:31425,ptovrint:False,ptlb:Warning_Speed,ptin:_Warning_Speed,varname:node_7657,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1.789078,max:5;n:type:ShaderForge.SFN_Time,id:4399,x:31117,y:32675,varname:node_4399,prsc:2;n:type:ShaderForge.SFN_Sin,id:1772,x:31303,y:32675,varname:node_1772,prsc:2|IN-4399-TTR;n:type:ShaderForge.SFN_Abs,id:7280,x:31465,y:32675,varname:node_7280,prsc:2|IN-1772-OUT;n:type:ShaderForge.SFN_RemapRange,id:7498,x:31638,y:32675,varname:node_7498,prsc:2,frmn:0,frmx:1,tomn:0.5,tomx:1|IN-7280-OUT;n:type:ShaderForge.SFN_Multiply,id:1351,x:32007,y:32743,varname:node_1351,prsc:2|A-7498-OUT,B-9220-RGB;n:type:ShaderForge.SFN_Append,id:703,x:30695,y:33091,varname:node_703,prsc:2|A-239-OUT,B-239-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:2101,x:29082,y:33799,varname:node_2101,prsc:2;n:type:ShaderForge.SFN_Set,id:9705,x:29696,y:33968,varname:__World_Y,prsc:2|IN-7137-OUT;n:type:ShaderForge.SFN_Divide,id:7137,x:29482,y:33943,varname:node_7137,prsc:2|A-2101-Y,B-2294-OUT;n:type:ShaderForge.SFN_Slider,id:2294,x:29024,y:34051,ptovrint:False,ptlb:World_Y,ptin:_World_Y,varname:node_2294,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:76.85046,max:100;n:type:ShaderForge.SFN_Get,id:239,x:30509,y:32939,varname:node_239,prsc:2|IN-9705-OUT;n:type:ShaderForge.SFN_Get,id:2965,x:28882,y:32380,varname:node_2965,prsc:2|IN-9705-OUT;n:type:ShaderForge.SFN_TexCoord,id:5722,x:31176,y:33670,varname:node_5722,prsc:2,uv:0;proporder:5530-3667-1314-2699-9220-234-9918-5367-5037-3225-1498-4991-7981-6459-7657-2294;pass:END;sub:END;*/

Shader "Shader Forge/SF_Wall" {
    Properties {
        _Wall_largeur_trait ("Wall_largeur_trait", Range(0, 50)) = 35
        _speed ("speed", Range(1, 10)) = 1
        _Warning_transition_distance ("Warning_transition_distance", Range(0, 10)) = 10
        _Warning_Falloff ("Warning_Falloff", Range(0, 10)) = 1
        _Warning_color ("Warning_color", Color) = (1,0,0,1)
        _Warning__circles ("Warning__circles", Range(0, 20)) = 0.3
        _Wall_Color_up ("Wall_Color_up", Color) = (0,0,0,0)
        _Wall_Color_middle ("Wall_Color_middle", Color) = (0.7137255,0.3686275,0.3607843,1)
        _Wall_Color_down ("Wall_Color_down", Color) = (1,0.9921569,0.2078431,0)
        _Wall_Color_up_position ("Wall_Color_up_position", Range(-1, 1)) = -0.1398237
        _Wall_Color_up_Falloff ("Wall_Color_up_Falloff", Range(0, 2)) = 1.131185
        _Wall_Color_down_position ("Wall_Color_down_position", Range(-1, 1)) = 0.2717233
        _Wall_Color_down_Falloff ("Wall_Color_down_Falloff", Range(0, 2)) = 2
        _Wall_height ("Wall_height", Range(0, 1)) = 0
        _Warning_Speed ("Warning_Speed", Range(1, 5)) = 1.789078
        _World_Y ("World_Y", Range(0, 100)) = 76.85046
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
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
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _Wall_largeur_trait;
            uniform float _speed;
            uniform float _Warning_transition_distance;
            uniform float _Warning_Falloff;
            uniform float4 _Warning_color;
            uniform float _Warning__circles;
            uniform float4 _Wall_Color_up;
            uniform float4 _Wall_Color_middle;
            uniform float4 _Wall_Color_down;
            uniform float _Wall_Color_up_position;
            uniform float _Wall_Color_up_Falloff;
            uniform float _Wall_Color_down_position;
            uniform float _Wall_Color_down_Falloff;
            uniform float _Wall_height;
            uniform float _Warning_Speed;
            uniform float _World_Y;
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
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
////// Lighting:
////// Emissive:
                float __World_Y = (i.posWorld.g/_World_Y);
                float node_2965 = __World_Y;
                float4 node_4399 = _Time + _TimeEditor;
                float4 node_3010 = _Time + _TimeEditor;
                float node_288 = distance(i.posWorld.rgb,_WorldSpaceCameraPos);
                float3 emissive = lerp(lerp(_Wall_Color_down.rgb,lerp(_Wall_Color_middle.rgb,_Wall_Color_up.rgb,saturate(((node_2965+_Wall_Color_up_position)*_Wall_Color_up_Falloff))),saturate(((node_2965+_Wall_Color_down_position)*_Wall_Color_down_Falloff))),((abs(sin(node_4399.a))*0.5+0.5)*_Warning_color.rgb),((1.0 - saturate(frac(((_Warning_Speed*node_3010.g)-(_Warning__circles*sqrt((exp2(node_288)-exp2((i.normalDir*partZ).r))))))))*(1.0 - saturate(pow((node_288/_Warning_transition_distance),_Warning_Falloff)))));
                float3 finalColor = emissive;
                float4 node_9779 = _Time + _TimeEditor;
                float node_239 = __World_Y;
                float node_9329 = (float2(node_239,node_239)+(node_9779.r*_speed)*float2(0,1)).g;
                float4 node_4068 = _Time + _TimeEditor;
                return fixed4(finalColor,((1.0 - (sin((1200.0*node_9329))*0.5))*(((1.0 - (sin((node_9329*_Wall_largeur_trait))*0.5))*((1.0 - i.uv0.g)-_Wall_height))*(sin(node_4068.b)*0.2+1.0))));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
