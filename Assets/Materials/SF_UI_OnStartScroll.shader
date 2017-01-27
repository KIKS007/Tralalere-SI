// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33288,y:32415,varname:node_3138,prsc:2|emission-8334-OUT,alpha-5637-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32369,y:32114,ptovrint:False,ptlb:Grille_Color,ptin:_Grille_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9411765,c2:0.9171222,c3:0.06920416,c4:1;n:type:ShaderForge.SFN_TexCoord,id:9801,x:30843,y:32535,varname:node_9801,prsc:2,uv:0;n:type:ShaderForge.SFN_Panner,id:6607,x:31123,y:32641,varname:node_6607,prsc:2,spu:1,spv:1|UVIN-9801-UVOUT,DIST-4664-OUT;n:type:ShaderForge.SFN_Time,id:3561,x:30129,y:32729,varname:node_3561,prsc:2;n:type:ShaderForge.SFN_Lerp,id:8334,x:32983,y:32353,varname:node_8334,prsc:2|A-7241-RGB,B-5489-RGB,T-3335-OUT;n:type:ShaderForge.SFN_Multiply,id:8027,x:30351,y:32816,varname:node_8027,prsc:2|A-3561-T,B-2164-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8964,x:31315,y:32641,varname:node_8964,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-6607-UVOUT;n:type:ShaderForge.SFN_Slider,id:2164,x:30158,y:33025,ptovrint:False,ptlb:Balayage_vistesse,ptin:_Balayage_vistesse,varname:node_2164,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.1,cur:0.2181519,max:1;n:type:ShaderForge.SFN_Frac,id:4506,x:30578,y:32816,varname:node_4506,prsc:2|IN-8027-OUT;n:type:ShaderForge.SFN_RemapRange,id:4664,x:30767,y:32816,varname:node_4664,prsc:2,frmn:0,frmx:1,tomn:-2,tomx:2|IN-4506-OUT;n:type:ShaderForge.SFN_Clamp01,id:7020,x:31511,y:32641,varname:node_7020,prsc:2|IN-8964-OUT;n:type:ShaderForge.SFN_Sign,id:6799,x:31511,y:32776,varname:node_6799,prsc:2|IN-8964-OUT;n:type:ShaderForge.SFN_TexCoord,id:8499,x:31092,y:33267,varname:node_8499,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:6083,x:31644,y:33268,varname:node_6083,prsc:2|A-8499-UVOUT,B-6999-OUT;n:type:ShaderForge.SFN_Slider,id:7866,x:31058,y:33477,ptovrint:False,ptlb:Grille_nombre,ptin:_Grille_nombre,varname:node_7866,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:3.281116,max:30;n:type:ShaderForge.SFN_Frac,id:9036,x:31886,y:33268,varname:node_9036,prsc:2|IN-6083-OUT;n:type:ShaderForge.SFN_Floor,id:6999,x:31429,y:33429,varname:node_6999,prsc:2|IN-7866-OUT;n:type:ShaderForge.SFN_RemapRange,id:5601,x:32073,y:33268,varname:node_5601,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-9036-OUT;n:type:ShaderForge.SFN_ComponentMask,id:941,x:32277,y:33159,varname:node_941,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-5601-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6000,x:32277,y:33332,varname:node_6000,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-5601-OUT;n:type:ShaderForge.SFN_Abs,id:5520,x:32453,y:33162,varname:node_5520,prsc:2|IN-941-OUT;n:type:ShaderForge.SFN_Power,id:385,x:32800,y:33165,varname:node_385,prsc:2|VAL-5520-OUT,EXP-4872-OUT;n:type:ShaderForge.SFN_Abs,id:1693,x:32453,y:33332,varname:node_1693,prsc:2|IN-6000-OUT;n:type:ShaderForge.SFN_Power,id:1901,x:32800,y:33319,varname:node_1901,prsc:2|VAL-1693-OUT,EXP-4872-OUT;n:type:ShaderForge.SFN_Add,id:5874,x:32983,y:33245,varname:node_5874,prsc:2|A-385-OUT,B-1901-OUT;n:type:ShaderForge.SFN_Clamp01,id:4976,x:33145,y:33245,varname:node_4976,prsc:2|IN-5874-OUT;n:type:ShaderForge.SFN_Time,id:2632,x:32024,y:33494,varname:node_2632,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8543,x:32219,y:33518,varname:node_8543,prsc:2|A-2632-T,B-3777-OUT;n:type:ShaderForge.SFN_Slider,id:3777,x:31896,y:33666,ptovrint:False,ptlb:Grille_vitesse_variation,ptin:_Grille_vitesse_variation,varname:node_3777,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:3,max:3;n:type:ShaderForge.SFN_Sin,id:5190,x:32392,y:33518,varname:node_5190,prsc:2|IN-8543-OUT;n:type:ShaderForge.SFN_RemapRange,id:4872,x:32587,y:33518,varname:node_4872,prsc:2,frmn:-1,frmx:1,tomn:10,tomx:20|IN-5190-OUT;n:type:ShaderForge.SFN_Color,id:5489,x:32369,y:32317,ptovrint:False,ptlb:Grille_Color_variation,ptin:_Grille_Color_variation,varname:_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9338235,c2:0.9338235,c3:0.9338235,c4:1;n:type:ShaderForge.SFN_Multiply,id:3433,x:31684,y:32641,varname:node_3433,prsc:2|A-7020-OUT,B-6799-OUT;n:type:ShaderForge.SFN_OneMinus,id:9331,x:31842,y:32641,varname:node_9331,prsc:2|IN-3433-OUT;n:type:ShaderForge.SFN_Multiply,id:9389,x:31842,y:32812,varname:node_9389,prsc:2|A-9331-OUT,B-6799-OUT;n:type:ShaderForge.SFN_Slider,id:5323,x:31720,y:32986,ptovrint:False,ptlb:Balayage_taille,ptin:_Balayage_taille,varname:node_5323,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:2.983369,max:3;n:type:ShaderForge.SFN_Power,id:1103,x:32066,y:32812,varname:node_1103,prsc:2|VAL-9389-OUT,EXP-5323-OUT;n:type:ShaderForge.SFN_Slider,id:6274,x:32066,y:32998,ptovrint:False,ptlb:Balayage_opacité,ptin:_Balayage_opacit,varname:_Balayage_taille_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:2;n:type:ShaderForge.SFN_Multiply,id:1176,x:32324,y:32809,varname:node_1176,prsc:2|A-1103-OUT,B-6274-OUT;n:type:ShaderForge.SFN_Add,id:3335,x:32644,y:32667,varname:node_3335,prsc:2|A-7536-OUT,B-4976-OUT;n:type:ShaderForge.SFN_Clamp01,id:7536,x:32481,y:32809,varname:node_7536,prsc:2|IN-1176-OUT;n:type:ShaderForge.SFN_Add,id:5637,x:33115,y:32816,varname:node_5637,prsc:2|A-4160-OUT,B-3603-OUT;n:type:ShaderForge.SFN_Slider,id:7585,x:31848,y:33114,ptovrint:False,ptlb:Balayage_taille_copy,ptin:_Balayage_taille_copy,varname:_Balayage_taille_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:2.983369,max:3;n:type:ShaderForge.SFN_OneMinus,id:1323,x:32757,y:32921,varname:node_1323,prsc:2|IN-7536-OUT;n:type:ShaderForge.SFN_Multiply,id:3603,x:32961,y:32921,varname:node_3603,prsc:2|A-1323-OUT,B-4976-OUT;n:type:ShaderForge.SFN_Slider,id:4160,x:32787,y:32762,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:node_4160,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8290604,max:1;proporder:7241-7866-3777-5489-2164-5323-6274-4160;pass:END;sub:END;*/

Shader "Shader Forge/SF_UI_OnStartScroll" {
    Properties {
        _Grille_Color ("Grille_Color", Color) = (0.9411765,0.9171222,0.06920416,1)
        _Grille_nombre ("Grille_nombre", Range(1, 30)) = 3.281116
        _Grille_vitesse_variation ("Grille_vitesse_variation", Range(1, 3)) = 3
        _Grille_Color_variation ("Grille_Color_variation", Color) = (0.9338235,0.9338235,0.9338235,1)
        _Balayage_vistesse ("Balayage_vistesse", Range(0.1, 1)) = 0.2181519
        _Balayage_taille ("Balayage_taille", Range(1, 3)) = 2.983369
        _Balayage_opacit ("Balayage_opacité", Range(0, 2)) = 1
        _Opacity ("Opacity", Range(0, 1)) = 0.8290604
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
            uniform float4 _Grille_Color;
            uniform float _Balayage_vistesse;
            uniform float _Grille_nombre;
            uniform float _Grille_vitesse_variation;
            uniform float4 _Grille_Color_variation;
            uniform float _Balayage_taille;
            uniform float _Balayage_opacit;
            uniform float _Opacity;
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
                float4 node_3561 = _Time + _TimeEditor;
                float node_8964 = (i.uv0+(frac((node_3561.g*_Balayage_vistesse))*4.0+-2.0)*float2(1,1)).g;
                float node_6799 = sign(node_8964);
                float node_7536 = saturate((pow(((1.0 - (saturate(node_8964)*node_6799))*node_6799),_Balayage_taille)*_Balayage_opacit));
                float2 node_5601 = (frac((i.uv0*floor(_Grille_nombre)))*2.0+-1.0);
                float4 node_2632 = _Time + _TimeEditor;
                float node_4872 = (sin((node_2632.g*_Grille_vitesse_variation))*5.0+15.0);
                float node_4976 = saturate((pow(abs(node_5601.r),node_4872)+pow(abs(node_5601.g),node_4872)));
                float3 emissive = lerp(_Grille_Color.rgb,_Grille_Color_variation.rgb,(node_7536+node_4976));
                float3 finalColor = emissive;
                return fixed4(finalColor,(_Opacity+((1.0 - node_7536)*node_4976)));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
