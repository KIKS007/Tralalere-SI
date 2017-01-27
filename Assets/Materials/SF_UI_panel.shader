// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-9895-OUT,alpha-6778-OUT;n:type:ShaderForge.SFN_TexCoord,id:3642,x:30514,y:33464,varname:node_3642,prsc:2,uv:0;n:type:ShaderForge.SFN_ComponentMask,id:9329,x:30954,y:33464,varname:node_9329,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-2802-UVOUT;n:type:ShaderForge.SFN_Multiply,id:2819,x:31149,y:33474,varname:node_2819,prsc:2|A-9329-OUT,B-5530-OUT;n:type:ShaderForge.SFN_Slider,id:5530,x:30826,y:33687,ptovrint:False,ptlb:largeur_traits,ptin:_largeur_traits,varname:node_5530,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:881.7305,max:1200;n:type:ShaderForge.SFN_Panner,id:2802,x:30746,y:33464,varname:node_2802,prsc:2,spu:0,spv:1|UVIN-3642-UVOUT,DIST-8427-OUT;n:type:ShaderForge.SFN_Time,id:9779,x:30256,y:33585,varname:node_9779,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8427,x:30514,y:33657,varname:node_8427,prsc:2|A-9779-TSL,B-3667-OUT;n:type:ShaderForge.SFN_Slider,id:3667,x:30099,y:33746,ptovrint:False,ptlb:speed_traits,ptin:_speed_traits,varname:node_3667,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5017497,max:5;n:type:ShaderForge.SFN_Sin,id:6736,x:31362,y:33474,varname:node_6736,prsc:2|IN-2819-OUT;n:type:ShaderForge.SFN_Multiply,id:8585,x:31569,y:33474,varname:node_8585,prsc:2|A-6736-OUT,B-4787-OUT;n:type:ShaderForge.SFN_OneMinus,id:4177,x:31753,y:33485,varname:node_4177,prsc:2|IN-8585-OUT;n:type:ShaderForge.SFN_Vector1,id:4787,x:31362,y:33672,varname:node_4787,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Color,id:9918,x:31079,y:31552,ptovrint:False,ptlb:bordures_color,ptin:_bordures_color,varname:node_9918,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:0;n:type:ShaderForge.SFN_Color,id:5367,x:31079,y:31762,ptovrint:False,ptlb:Color_middle,ptin:_Color_middle,varname:_node_9918_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5264382,c2:0.7005876,c3:0.7867647,c4:1;n:type:ShaderForge.SFN_TexCoord,id:1192,x:29689,y:32605,varname:node_1192,prsc:2,uv:0;n:type:ShaderForge.SFN_Slider,id:814,x:30348,y:33011,ptovrint:False,ptlb:balayage_largeur,ptin:_balayage_largeur,varname:_Wall_largeur_trait_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:4,max:5;n:type:ShaderForge.SFN_Panner,id:1008,x:30345,y:32682,varname:node_1008,prsc:2,spu:0,spv:1|UVIN-8161-UVOUT,DIST-2617-OUT;n:type:ShaderForge.SFN_Time,id:8627,x:29437,y:32818,varname:node_8627,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3005,x:29646,y:32946,varname:node_3005,prsc:2|A-8627-T,B-3255-OUT;n:type:ShaderForge.SFN_Slider,id:3255,x:29312,y:33082,ptovrint:False,ptlb:balayage_fréquence,ptin:_balayage_frquence,varname:_speed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1217093,max:2;n:type:ShaderForge.SFN_Multiply,id:6868,x:30890,y:32738,varname:node_6868,prsc:2|A-7754-OUT,B-3437-OUT;n:type:ShaderForge.SFN_Floor,id:3437,x:30697,y:32864,varname:node_3437,prsc:2|IN-814-OUT;n:type:ShaderForge.SFN_ComponentMask,id:4139,x:31240,y:32738,varname:node_4139,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-3316-OUT;n:type:ShaderForge.SFN_RemapRange,id:7245,x:29897,y:32605,varname:node_7245,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-1192-UVOUT;n:type:ShaderForge.SFN_Abs,id:7754,x:30659,y:32600,varname:node_7754,prsc:2|IN-1008-UVOUT;n:type:ShaderForge.SFN_Clamp01,id:3316,x:31047,y:32738,varname:node_3316,prsc:2|IN-6868-OUT;n:type:ShaderForge.SFN_Frac,id:5659,x:29788,y:33092,varname:node_5659,prsc:2|IN-3005-OUT;n:type:ShaderForge.SFN_Panner,id:8161,x:30093,y:32696,varname:node_8161,prsc:2,spu:0,spv:-0.0012|UVIN-7245-OUT;n:type:ShaderForge.SFN_OneMinus,id:5589,x:31482,y:32738,varname:node_5589,prsc:2|IN-4139-OUT;n:type:ShaderForge.SFN_Power,id:1055,x:31691,y:32738,varname:node_1055,prsc:2|VAL-5589-OUT,EXP-6319-OUT;n:type:ShaderForge.SFN_Slider,id:6319,x:31305,y:32991,ptovrint:False,ptlb:balayage_épaisseur,ptin:_balayage_paisseur,varname:node_6319,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2.255361,max:5;n:type:ShaderForge.SFN_Add,id:1787,x:32289,y:33293,varname:node_1787,prsc:2|A-1055-OUT,B-4177-OUT;n:type:ShaderForge.SFN_Clamp01,id:6778,x:32484,y:33293,varname:node_6778,prsc:2|IN-1787-OUT;n:type:ShaderForge.SFN_Lerp,id:9895,x:32234,y:32379,varname:node_9895,prsc:2|A-948-OUT,B-4322-OUT,T-1055-OUT;n:type:ShaderForge.SFN_Multiply,id:4322,x:31621,y:32101,varname:node_4322,prsc:2|A-5367-RGB,B-9111-OUT;n:type:ShaderForge.SFN_Slider,id:9111,x:31519,y:32315,ptovrint:False,ptlb:balayage_opacité,ptin:_balayage_opacit,varname:node_9111,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1.167965,max:2;n:type:ShaderForge.SFN_TexCoord,id:2365,x:29653,y:31899,varname:node_2365,prsc:2,uv:0;n:type:ShaderForge.SFN_RemapRange,id:3873,x:29868,y:31899,varname:node_3873,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-2365-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:8134,x:30071,y:31899,varname:node_8134,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-3873-OUT;n:type:ShaderForge.SFN_Abs,id:5693,x:30268,y:31899,varname:node_5693,prsc:2|IN-8134-OUT;n:type:ShaderForge.SFN_OneMinus,id:7618,x:30479,y:31899,varname:node_7618,prsc:2|IN-5693-OUT;n:type:ShaderForge.SFN_Multiply,id:1685,x:30746,y:31900,varname:node_1685,prsc:2|A-7618-OUT,B-4202-OUT;n:type:ShaderForge.SFN_Slider,id:127,x:30243,y:32100,ptovrint:False,ptlb:bordures_épaisseur,ptin:_bordures_paisseur,varname:node_127,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.726496,max:1;n:type:ShaderForge.SFN_Lerp,id:948,x:31604,y:31840,varname:node_948,prsc:2|A-9918-RGB,B-5367-RGB,T-5696-OUT;n:type:ShaderForge.SFN_Clamp01,id:5696,x:31275,y:31973,varname:node_5696,prsc:2|IN-4172-OUT;n:type:ShaderForge.SFN_Multiply,id:7418,x:30972,y:32081,varname:node_7418,prsc:2|A-1304-OUT,B-6694-OUT;n:type:ShaderForge.SFN_Time,id:1614,x:30243,y:32254,varname:node_1614,prsc:2;n:type:ShaderForge.SFN_Sin,id:1717,x:30596,y:32261,varname:node_1717,prsc:2|IN-3433-OUT;n:type:ShaderForge.SFN_RemapRange,id:6694,x:30756,y:32261,varname:node_6694,prsc:2,frmn:-1,frmx:1,tomn:1,tomx:1.5|IN-1717-OUT;n:type:ShaderForge.SFN_Multiply,id:3433,x:30434,y:32261,varname:node_3433,prsc:2|A-1614-T,B-3593-OUT;n:type:ShaderForge.SFN_Slider,id:3593,x:30110,y:32439,ptovrint:False,ptlb:bordures_speed,ptin:_bordures_speed,varname:node_3593,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:2.090464,max:10;n:type:ShaderForge.SFN_RemapRange,id:4202,x:30594,y:32070,varname:node_4202,prsc:2,frmn:0,frmx:1,tomn:5,tomx:1|IN-127-OUT;n:type:ShaderForge.SFN_Power,id:1304,x:30932,y:31900,varname:node_1304,prsc:2|VAL-1685-OUT,EXP-6300-OUT;n:type:ShaderForge.SFN_Slider,id:6300,x:30504,y:31758,ptovrint:False,ptlb:bordures_Falloff,ptin:_bordures_Falloff,varname:node_6300,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.333603,max:2;n:type:ShaderForge.SFN_Add,id:4172,x:31158,y:32108,varname:node_4172,prsc:2|A-7418-OUT,B-7892-OUT;n:type:ShaderForge.SFN_Vector1,id:7892,x:30998,y:32293,varname:node_7892,prsc:2,v1:0.5;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:2617,x:30104,y:33124,varname:node_2617,prsc:2|IN-5659-OUT,IMIN-7316-OUT,IMAX-5627-OUT,OMIN-4221-OUT,OMAX-1168-OUT;n:type:ShaderForge.SFN_Vector1,id:7316,x:29934,y:33002,varname:node_7316,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:5627,x:29919,y:33062,varname:node_5627,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:4221,x:29899,y:33248,varname:node_4221,prsc:2,v1:-1;n:type:ShaderForge.SFN_Slider,id:1168,x:29764,y:33365,ptovrint:False,ptlb:balayage_speed,ptin:_balayage_speed,varname:node_1168,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:3.484999,max:10;proporder:5530-3667-9918-5367-814-3255-6319-9111-127-3593-6300-1168;pass:END;sub:END;*/

Shader "Shader Forge/SF_Wall" {
    Properties {
        _largeur_traits ("largeur_traits", Range(0, 1200)) = 881.7305
        _speed_traits ("speed_traits", Range(0, 5)) = 0.5017497
        _bordures_color ("bordures_color", Color) = (0,0,0,0)
        _Color_middle ("Color_middle", Color) = (0.5264382,0.7005876,0.7867647,1)
        _balayage_largeur ("balayage_largeur", Range(0, 5)) = 4
        _balayage_frquence ("balayage_fréquence", Range(0, 2)) = 0.1217093
        _balayage_paisseur ("balayage_épaisseur", Range(0, 5)) = 2.255361
        _balayage_opacit ("balayage_opacité", Range(1, 2)) = 1.167965
        _bordures_paisseur ("bordures_épaisseur", Range(0, 1)) = 0.726496
        _bordures_speed ("bordures_speed", Range(1, 10)) = 2.090464
        _bordures_Falloff ("bordures_Falloff", Range(0, 2)) = 1.333603
        _balayage_speed ("balayage_speed", Range(1, 10)) = 3.484999
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
            uniform float _largeur_traits;
            uniform float _speed_traits;
            uniform float4 _bordures_color;
            uniform float4 _Color_middle;
            uniform float _balayage_largeur;
            uniform float _balayage_frquence;
            uniform float _balayage_paisseur;
            uniform float _balayage_opacit;
            uniform float _bordures_paisseur;
            uniform float _bordures_speed;
            uniform float _bordures_Falloff;
            uniform float _balayage_speed;
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
                float4 node_1614 = _Time + _TimeEditor;
                float4 node_8627 = _Time + _TimeEditor;
                float node_7316 = 0.0;
                float node_4221 = (-1.0);
                float4 node_1466 = _Time + _TimeEditor;
                float node_1055 = pow((1.0 - saturate((abs((((i.uv0*2.0+-1.0)+node_1466.g*float2(0,-0.0012))+(node_4221 + ( (frac((node_8627.g*_balayage_frquence)) - node_7316) * (_balayage_speed - node_4221) ) / (1.0 - node_7316))*float2(0,1)))*floor(_balayage_largeur))).g),_balayage_paisseur);
                float3 emissive = lerp(lerp(_bordures_color.rgb,_Color_middle.rgb,saturate(((pow(((1.0 - abs((i.uv0*2.0+-1.0).g))*(_bordures_paisseur*-4.0+5.0)),_bordures_Falloff)*(sin((node_1614.g*_bordures_speed))*0.25+1.25))+0.5))),(_Color_middle.rgb*_balayage_opacit),node_1055);
                float3 finalColor = emissive;
                float4 node_9779 = _Time + _TimeEditor;
                return fixed4(finalColor,saturate((node_1055+(1.0 - (sin(((i.uv0+(node_9779.r*_speed_traits)*float2(0,1)).g*_largeur_traits))*0.5)))));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
