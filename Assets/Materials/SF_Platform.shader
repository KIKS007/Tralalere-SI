// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:9738,x:36491,y:32228,varname:node_9738,prsc:2|emission-9363-OUT;n:type:ShaderForge.SFN_TexCoord,id:6110,x:31611,y:34034,varname:node_6110,prsc:2,uv:0;n:type:ShaderForge.SFN_ObjectScale,id:9866,x:31490,y:33854,varname:node_9866,prsc:2,rcp:False;n:type:ShaderForge.SFN_NormalVector,id:5983,x:30517,y:33568,prsc:2,pt:False;n:type:ShaderForge.SFN_Abs,id:8965,x:31159,y:33568,varname:node_8965,prsc:2|IN-1952-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:9732,x:31632,y:33615,varname:node_9732,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-8049-OUT;n:type:ShaderForge.SFN_Multiply,id:6348,x:32158,y:33642,varname:node_6348,prsc:2|A-9732-G,B-6110-U,C-9866-X;n:type:ShaderForge.SFN_Multiply,id:2329,x:32158,y:33455,varname:node_2329,prsc:2|A-9732-R,B-6110-V,C-9866-Y;n:type:ShaderForge.SFN_Multiply,id:4702,x:32158,y:33326,varname:node_4702,prsc:2|A-9732-R,B-6110-U,C-9866-Z;n:type:ShaderForge.SFN_Transform,id:1952,x:30950,y:33568,varname:node_1952,prsc:2,tffrom:0,tfto:1|IN-3635-OUT;n:type:ShaderForge.SFN_Multiply,id:989,x:32158,y:33762,varname:node_989,prsc:2|A-9732-G,B-6110-V,C-9866-Z;n:type:ShaderForge.SFN_Multiply,id:9362,x:32158,y:33968,varname:node_9362,prsc:2|A-9732-B,B-6110-U,C-9866-X;n:type:ShaderForge.SFN_Multiply,id:4341,x:32158,y:34091,varname:node_4341,prsc:2|A-9732-B,B-6110-V,C-9866-Y;n:type:ShaderForge.SFN_Append,id:4667,x:32428,y:33424,varname:node_4667,prsc:2|A-2329-OUT,B-4702-OUT;n:type:ShaderForge.SFN_Append,id:1706,x:32425,y:33722,varname:node_1706,prsc:2|A-989-OUT,B-6348-OUT;n:type:ShaderForge.SFN_Append,id:9575,x:32399,y:33950,varname:node_9575,prsc:2|A-4341-OUT,B-9362-OUT;n:type:ShaderForge.SFN_Add,id:3591,x:32677,y:33621,varname:node_3591,prsc:2|A-4667-OUT,B-1706-OUT,C-9575-OUT;n:type:ShaderForge.SFN_Normalize,id:3635,x:30739,y:33568,varname:node_3635,prsc:2|IN-5983-OUT;n:type:ShaderForge.SFN_Multiply,id:8049,x:31432,y:33695,varname:node_8049,prsc:2|A-8965-OUT,B-9866-XYZ;n:type:ShaderForge.SFN_Slider,id:4942,x:31868,y:31831,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:node_4942,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2761523,max:1;n:type:ShaderForge.SFN_Sin,id:7614,x:33729,y:32024,varname:node_7614,prsc:2|IN-4293-OUT;n:type:ShaderForge.SFN_Multiply,id:9078,x:34040,y:32007,varname:node_9078,prsc:2|A-8023-OUT,B-7614-OUT;n:type:ShaderForge.SFN_Vector1,id:8023,x:33857,y:31910,varname:node_8023,prsc:2,v1:147.3;n:type:ShaderForge.SFN_Multiply,id:2017,x:32695,y:32077,varname:node_2017,prsc:2|A-1122-OUT,B-4645-OUT;n:type:ShaderForge.SFN_Floor,id:3744,x:32968,y:32085,varname:node_3744,prsc:2|IN-2017-OUT;n:type:ShaderForge.SFN_ComponentMask,id:2839,x:33154,y:32085,varname:node_2839,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3744-OUT;n:type:ShaderForge.SFN_Multiply,id:7511,x:33419,y:32182,varname:node_7511,prsc:2|A-927-OUT,B-2839-G;n:type:ShaderForge.SFN_Add,id:4293,x:33476,y:32024,varname:node_4293,prsc:2|A-7511-OUT,B-2839-R,C-8860-OUT;n:type:ShaderForge.SFN_Vector1,id:927,x:33227,y:32340,varname:node_927,prsc:2,v1:57;n:type:ShaderForge.SFN_Slider,id:4645,x:31836,y:32105,ptovrint:False,ptlb:Noise_freq,ptin:_Noise_freq,varname:node_4645,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:8.429519,max:20;n:type:ShaderForge.SFN_Time,id:7517,x:32871,y:31874,varname:node_7517,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8860,x:33222,y:31874,varname:node_8860,prsc:2|A-8995-OUT,B-7517-T,C-4942-OUT;n:type:ShaderForge.SFN_Vector1,id:8995,x:33017,y:31813,varname:node_8995,prsc:2,v1:0.01;n:type:ShaderForge.SFN_Sin,id:2990,x:33708,y:31405,varname:node_2990,prsc:2|IN-9804-OUT;n:type:ShaderForge.SFN_Multiply,id:8209,x:34019,y:31388,varname:node_8209,prsc:2|A-9821-OUT,B-2990-OUT;n:type:ShaderForge.SFN_Vector1,id:9821,x:33836,y:31291,varname:node_9821,prsc:2,v1:147.3;n:type:ShaderForge.SFN_Multiply,id:5181,x:32679,y:31479,varname:node_5181,prsc:2|A-4645-OUT,B-8260-OUT,C-2043-OUT;n:type:ShaderForge.SFN_Floor,id:8106,x:32947,y:31466,varname:node_8106,prsc:2|IN-5181-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9513,x:33133,y:31466,varname:node_9513,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-8106-OUT;n:type:ShaderForge.SFN_Multiply,id:3627,x:33398,y:31563,varname:node_3627,prsc:2|A-5815-OUT,B-9513-G;n:type:ShaderForge.SFN_Add,id:9804,x:33455,y:31405,varname:node_9804,prsc:2|A-3627-OUT,B-9513-R,C-9687-OUT;n:type:ShaderForge.SFN_Vector1,id:5815,x:33206,y:31721,varname:node_5815,prsc:2,v1:57;n:type:ShaderForge.SFN_Time,id:5993,x:32850,y:31255,varname:node_5993,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9687,x:33201,y:31255,varname:node_9687,prsc:2|A-239-OUT,B-5993-T,C-4942-OUT;n:type:ShaderForge.SFN_Vector1,id:239,x:32996,y:31194,varname:node_239,prsc:2,v1:0.005;n:type:ShaderForge.SFN_Vector1,id:2043,x:32469,y:31605,varname:node_2043,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Sin,id:1365,x:34275,y:31444,varname:node_1365,prsc:2|IN-8209-OUT;n:type:ShaderForge.SFN_Sin,id:4546,x:34292,y:32007,varname:node_4546,prsc:2|IN-9078-OUT;n:type:ShaderForge.SFN_RemapRange,id:751,x:34490,y:31488,varname:node_751,prsc:2,frmn:0.7,frmx:1,tomn:0,tomx:1|IN-1365-OUT;n:type:ShaderForge.SFN_RemapRange,id:8328,x:34506,y:31877,varname:node_8328,prsc:2,frmn:0.5,frmx:1,tomn:0,tomx:1|IN-4546-OUT;n:type:ShaderForge.SFN_Sin,id:1373,x:34086,y:32432,varname:node_1373,prsc:2|IN-4632-OUT;n:type:ShaderForge.SFN_Multiply,id:7605,x:33748,y:32413,varname:node_7605,prsc:2|A-2017-OUT,B-5123-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9197,x:34264,y:32407,varname:node_9197,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1373-OUT;n:type:ShaderForge.SFN_Vector1,id:5123,x:33518,y:32529,varname:node_5123,prsc:2,v1:3.14159;n:type:ShaderForge.SFN_Slider,id:6033,x:34015,y:32736,ptovrint:False,ptlb:Grid_Thickness,ptin:_Grid_Thickness,varname:node_6033,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.04526645,max:1;n:type:ShaderForge.SFN_Divide,id:827,x:33769,y:32576,varname:node_827,prsc:2|A-5123-OUT,B-3364-OUT;n:type:ShaderForge.SFN_Vector1,id:3364,x:33604,y:32684,varname:node_3364,prsc:2,v1:2;n:type:ShaderForge.SFN_Add,id:4632,x:33919,y:32450,varname:node_4632,prsc:2|A-7605-OUT,B-827-OUT;n:type:ShaderForge.SFN_Add,id:6505,x:34551,y:32444,varname:node_6505,prsc:2|A-9197-R,B-6033-OUT;n:type:ShaderForge.SFN_Floor,id:5377,x:34740,y:32444,varname:node_5377,prsc:2|IN-6505-OUT;n:type:ShaderForge.SFN_Add,id:9002,x:34551,y:32610,varname:node_9002,prsc:2|A-9197-G,B-6033-OUT;n:type:ShaderForge.SFN_Clamp01,id:1654,x:34940,y:32445,varname:node_1654,prsc:2|IN-5377-OUT;n:type:ShaderForge.SFN_OneMinus,id:6359,x:35117,y:32445,varname:node_6359,prsc:2|IN-1654-OUT;n:type:ShaderForge.SFN_Floor,id:3390,x:34740,y:32610,varname:node_3390,prsc:2|IN-9002-OUT;n:type:ShaderForge.SFN_Clamp01,id:2253,x:34940,y:32611,varname:node_2253,prsc:2|IN-3390-OUT;n:type:ShaderForge.SFN_OneMinus,id:587,x:35117,y:32611,varname:node_587,prsc:2|IN-2253-OUT;n:type:ShaderForge.SFN_Multiply,id:3762,x:35305,y:32529,varname:node_3762,prsc:2|A-6359-OUT,B-587-OUT;n:type:ShaderForge.SFN_Color,id:5027,x:34645,y:32072,ptovrint:False,ptlb:Small_Cubes_Color,ptin:_Small_Cubes_Color,varname:node_5027,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.166236,c2:0.1243512,c3:0.6764706,c4:1;n:type:ShaderForge.SFN_Color,id:8013,x:34438,y:31045,ptovrint:False,ptlb:Big_Cubes_Color,ptin:_Big_Cubes_Color,varname:node_8013,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1875,c2:0.75,c3:0.726724,c4:1;n:type:ShaderForge.SFN_Multiply,id:656,x:35430,y:31706,varname:node_656,prsc:2|A-5987-OUT,B-3368-OUT;n:type:ShaderForge.SFN_Vector1,id:3368,x:35169,y:31963,varname:node_3368,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Clamp01,id:2504,x:34709,y:31834,varname:node_2504,prsc:2|IN-8328-OUT;n:type:ShaderForge.SFN_Multiply,id:6583,x:34922,y:31566,varname:node_6583,prsc:2|A-3173-OUT,B-8013-RGB;n:type:ShaderForge.SFN_Multiply,id:6142,x:34941,y:31777,varname:node_6142,prsc:2|A-5027-RGB,B-2504-OUT;n:type:ShaderForge.SFN_Add,id:5987,x:35198,y:31539,varname:node_5987,prsc:2|A-6583-OUT,B-6142-OUT;n:type:ShaderForge.SFN_Clamp01,id:3173,x:34676,y:31540,varname:node_3173,prsc:2|IN-751-OUT;n:type:ShaderForge.SFN_Set,id:5339,x:33024,y:33692,varname:__UV,prsc:2|IN-3591-OUT;n:type:ShaderForge.SFN_Get,id:1122,x:32437,y:32137,varname:node_1122,prsc:2|IN-5339-OUT;n:type:ShaderForge.SFN_Get,id:8260,x:32380,y:31475,varname:node_8260,prsc:2|IN-5339-OUT;n:type:ShaderForge.SFN_Blend,id:9548,x:34538,y:33153,varname:node_9548,prsc:2,blmd:0,clmp:True|SRC-4061-R,DST-4061-G;n:type:ShaderForge.SFN_Blend,id:5271,x:34845,y:33298,varname:node_5271,prsc:2,blmd:0,clmp:True|SRC-9548-OUT,DST-2393-OUT;n:type:ShaderForge.SFN_Multiply,id:3662,x:33968,y:33254,varname:node_3662,prsc:2|A-4006-UVOUT,B-3479-OUT;n:type:ShaderForge.SFN_Slider,id:3479,x:33483,y:33527,ptovrint:False,ptlb:Edges_int,ptin:_Edges_int,varname:node_3479,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:5,max:5;n:type:ShaderForge.SFN_ComponentMask,id:4061,x:34181,y:33254,varname:node_4061,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3662-OUT;n:type:ShaderForge.SFN_ComponentMask,id:3297,x:34292,y:33470,varname:node_3297,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1675-OUT;n:type:ShaderForge.SFN_OneMinus,id:6002,x:33935,y:33450,varname:node_6002,prsc:2|IN-4006-UVOUT;n:type:ShaderForge.SFN_Multiply,id:1675,x:34096,y:33470,varname:node_1675,prsc:2|A-6002-OUT,B-3479-OUT;n:type:ShaderForge.SFN_Blend,id:2393,x:34512,y:33462,varname:node_2393,prsc:2,blmd:0,clmp:True|SRC-3297-R,DST-3297-G;n:type:ShaderForge.SFN_OneMinus,id:884,x:35074,y:33286,varname:node_884,prsc:2|IN-5271-OUT;n:type:ShaderForge.SFN_OneMinus,id:2692,x:35510,y:32541,varname:node_2692,prsc:2|IN-3762-OUT;n:type:ShaderForge.SFN_Multiply,id:4131,x:35610,y:32951,varname:node_4131,prsc:2|A-2692-OUT,B-884-OUT;n:type:ShaderForge.SFN_Clamp01,id:9303,x:35879,y:32915,varname:node_9303,prsc:2|IN-4131-OUT;n:type:ShaderForge.SFN_Lerp,id:6499,x:35921,y:32516,varname:node_6499,prsc:2|A-656-OUT,B-4669-RGB,T-9303-OUT;n:type:ShaderForge.SFN_Color,id:4669,x:35261,y:32929,ptovrint:False,ptlb:Color_Edges_Fade,ptin:_Color_Edges_Fade,varname:node_4669,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8529412,c2:0.3352941,c3:0,c4:1;n:type:ShaderForge.SFN_TexCoord,id:4006,x:32873,y:33308,varname:node_4006,prsc:2,uv:0;n:type:ShaderForge.SFN_FragmentPosition,id:8341,x:34375,y:33742,varname:node_8341,prsc:2;n:type:ShaderForge.SFN_Sin,id:4991,x:35722,y:33667,varname:node_4991,prsc:2|IN-8348-UVOUT;n:type:ShaderForge.SFN_Panner,id:8348,x:35466,y:33667,varname:node_8348,prsc:2,spu:1,spv:1|UVIN-1121-OUT;n:type:ShaderForge.SFN_Append,id:1121,x:35243,y:33630,varname:node_1121,prsc:2|A-9553-OUT,B-9553-OUT;n:type:ShaderForge.SFN_ComponentMask,id:2712,x:35935,y:33593,varname:node_2712,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-4991-OUT;n:type:ShaderForge.SFN_Add,id:401,x:36182,y:33528,varname:node_401,prsc:2|A-2712-R,B-2712-G;n:type:ShaderForge.SFN_RemapRange,id:1139,x:36414,y:33393,varname:node_1139,prsc:2,frmn:0,frmx:2,tomn:0,tomx:1|IN-401-OUT;n:type:ShaderForge.SFN_Multiply,id:399,x:35865,y:33164,varname:node_399,prsc:2|A-2692-OUT,B-1139-OUT,C-4669-RGB;n:type:ShaderForge.SFN_Add,id:9363,x:36191,y:32762,varname:node_9363,prsc:2|A-6499-OUT,B-8681-OUT;n:type:ShaderForge.SFN_Multiply,id:1324,x:34639,y:33718,varname:node_1324,prsc:2|A-8341-XYZ,B-9113-OUT;n:type:ShaderForge.SFN_ComponentMask,id:7864,x:34834,y:33718,varname:node_7864,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-1324-OUT;n:type:ShaderForge.SFN_Slider,id:9113,x:34462,y:34124,ptovrint:False,ptlb:Waves_freq,ptin:_Waves_freq,varname:node_9113,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2.657675,max:30;n:type:ShaderForge.SFN_Multiply,id:9553,x:35183,y:33859,varname:node_9553,prsc:2|A-5510-OUT,B-5555-OUT;n:type:ShaderForge.SFN_Vector1,id:5555,x:35109,y:34054,varname:node_5555,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Add,id:5510,x:34939,y:33918,varname:node_5510,prsc:2|A-7864-G,B-7864-B;n:type:ShaderForge.SFN_Clamp01,id:8681,x:36063,y:33120,varname:node_8681,prsc:2|IN-399-OUT;proporder:4942-4645-6033-5027-8013-3479-4669-9113;pass:END;sub:END;*/

Shader "Custom/SF_Platform" {
    Properties {
        _Speed ("Speed", Range(0, 1)) = 0.2761523
        _Noise_freq ("Noise_freq", Range(0, 20)) = 8.429519
        _Grid_Thickness ("Grid_Thickness", Range(0, 1)) = 0.04526645
        _Small_Cubes_Color ("Small_Cubes_Color", Color) = (0.166236,0.1243512,0.6764706,1)
        _Big_Cubes_Color ("Big_Cubes_Color", Color) = (0.1875,0.75,0.726724,1)
        _Edges_int ("Edges_int", Range(0, 5)) = 5
        _Color_Edges_Fade ("Color_Edges_Fade", Color) = (0.8529412,0.3352941,0,1)
        _Waves_freq ("Waves_freq", Range(0, 30)) = 2.657675
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
            uniform float4 _TimeEditor;
            uniform float _Speed;
            uniform float _Noise_freq;
            uniform float _Grid_Thickness;
            uniform float4 _Small_Cubes_Color;
            uniform float4 _Big_Cubes_Color;
            uniform float _Edges_int;
            uniform float4 _Color_Edges_Fade;
            uniform float _Waves_freq;
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
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float3 recipObjScale = float3( length(unity_WorldToObject[0].xyz), length(unity_WorldToObject[1].xyz), length(unity_WorldToObject[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3 recipObjScale = float3( length(unity_WorldToObject[0].xyz), length(unity_WorldToObject[1].xyz), length(unity_WorldToObject[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float3 node_9732 = (abs(mul( unity_WorldToObject, float4(normalize(i.normalDir),0) ).xyz.rgb)*objScale).rgb;
                float2 __UV = (float2((node_9732.r*i.uv0.g*objScale.g),(node_9732.r*i.uv0.r*objScale.b))+float2((node_9732.g*i.uv0.g*objScale.b),(node_9732.g*i.uv0.r*objScale.r))+float2((node_9732.b*i.uv0.g*objScale.g),(node_9732.b*i.uv0.r*objScale.r)));
                float2 node_9513 = floor((_Noise_freq*__UV*0.5)).rg;
                float4 node_5993 = _Time + _TimeEditor;
                float2 node_2017 = (__UV*_Noise_freq);
                float2 node_2839 = floor(node_2017).rg;
                float4 node_7517 = _Time + _TimeEditor;
                float node_5123 = 3.14159;
                float2 node_9197 = sin(((node_2017*node_5123)+(node_5123/2.0))).rg;
                float node_2692 = (1.0 - ((1.0 - saturate(floor((node_9197.r+_Grid_Thickness))))*(1.0 - saturate(floor((node_9197.g+_Grid_Thickness))))));
                float2 node_4061 = (i.uv0*_Edges_int).rg;
                float2 node_3297 = ((1.0 - i.uv0)*_Edges_int).rg;
                float4 node_5235 = _Time + _TimeEditor;
                float3 node_7864 = (i.posWorld.rgb*_Waves_freq).rgb;
                float node_9553 = ((node_7864.g+node_7864.b)*0.5);
                float2 node_2712 = sin((float2(node_9553,node_9553)+node_5235.g*float2(1,1))).rg;
                float3 emissive = (lerp((((saturate((sin((147.3*sin(((57.0*node_9513.g)+node_9513.r+(0.005*node_5993.g*_Speed)))))*3.333333+-2.333333))*_Big_Cubes_Color.rgb)+(_Small_Cubes_Color.rgb*saturate((sin((147.3*sin(((57.0*node_2839.g)+node_2839.r+(0.01*node_7517.g*_Speed)))))*2.0+-1.0))))*0.5),_Color_Edges_Fade.rgb,saturate((node_2692*(1.0 - saturate(min(saturate(min(node_4061.r,node_4061.g)),saturate(min(node_3297.r,node_3297.g))))))))+saturate((node_2692*((node_2712.r+node_2712.g)*0.5+0.0)*_Color_Edges_Fade.rgb)));
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
