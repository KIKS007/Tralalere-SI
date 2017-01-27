// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:True,stva:0,stmr:255,stmw:255,stcp:5,stps:0,stfa:0,stfz:3,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33288,y:32415,varname:node_3138,prsc:2|emission-8334-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32710,y:32033,ptovrint:False,ptlb:Fond_Color,ptin:_Fond_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Lerp,id:8334,x:32983,y:32353,varname:node_8334,prsc:2|A-7241-RGB,B-336-OUT,T-4976-OUT;n:type:ShaderForge.SFN_TexCoord,id:8499,x:31176,y:32751,varname:node_8499,prsc:2,uv:0;n:type:ShaderForge.SFN_Frac,id:9036,x:31411,y:32751,varname:node_9036,prsc:2|IN-8499-UVOUT;n:type:ShaderForge.SFN_RemapRange,id:5601,x:31598,y:32751,varname:node_5601,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-9036-OUT;n:type:ShaderForge.SFN_ComponentMask,id:941,x:31802,y:32642,varname:node_941,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-5601-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6000,x:31802,y:32815,varname:node_6000,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-5601-OUT;n:type:ShaderForge.SFN_Abs,id:5520,x:31978,y:32645,varname:node_5520,prsc:2|IN-941-OUT;n:type:ShaderForge.SFN_Power,id:385,x:32325,y:32648,varname:node_385,prsc:2|VAL-5520-OUT,EXP-4872-OUT;n:type:ShaderForge.SFN_Abs,id:1693,x:31978,y:32815,varname:node_1693,prsc:2|IN-6000-OUT;n:type:ShaderForge.SFN_Power,id:1901,x:32325,y:32802,varname:node_1901,prsc:2|VAL-1693-OUT,EXP-4872-OUT;n:type:ShaderForge.SFN_Add,id:5874,x:32508,y:32728,varname:node_5874,prsc:2|A-385-OUT,B-1901-OUT;n:type:ShaderForge.SFN_Clamp01,id:4976,x:32670,y:32696,varname:node_4976,prsc:2|IN-5874-OUT;n:type:ShaderForge.SFN_Time,id:2632,x:31549,y:32977,varname:node_2632,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8543,x:31744,y:33001,varname:node_8543,prsc:2|A-2632-T,B-3777-OUT;n:type:ShaderForge.SFN_Slider,id:3777,x:31392,y:33134,ptovrint:False,ptlb:Contour_vitesse_variation,ptin:_Contour_vitesse_variation,varname:node_3777,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:3,max:3;n:type:ShaderForge.SFN_Sin,id:5190,x:31917,y:33001,varname:node_5190,prsc:2|IN-8543-OUT;n:type:ShaderForge.SFN_RemapRange,id:4872,x:32112,y:33001,varname:node_4872,prsc:2,frmn:-1,frmx:1,tomn:10,tomx:20|IN-5190-OUT;n:type:ShaderForge.SFN_Color,id:5489,x:31833,y:31618,ptovrint:False,ptlb:Contour_Color_Inventory,ptin:_Contour_Color_Inventory,varname:_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.991785,c2:0.4044118,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:9297,x:32119,y:31890,varname:node_9297,prsc:2|A-5489-RGB,B-7085-RGB,T-7657-OUT;n:type:ShaderForge.SFN_Color,id:4209,x:31838,y:32168,ptovrint:False,ptlb:Contour_Color_OnStart,ptin:_Contour_Color_OnStart,varname:_Contour_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.7132353,c2:0.2949642,c3:0.1101319,c4:1;n:type:ShaderForge.SFN_Slider,id:8848,x:31445,y:32258,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_8848,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:3,max:3;n:type:ShaderForge.SFN_Lerp,id:336,x:32377,y:32144,varname:node_336,prsc:2|A-9297-OUT,B-4209-RGB,T-5222-OUT;n:type:ShaderForge.SFN_RemapRange,id:7657,x:31833,y:31962,varname:node_7657,prsc:2,frmn:1,frmx:2,tomn:0,tomx:1|IN-8848-OUT;n:type:ShaderForge.SFN_Color,id:7085,x:31833,y:31792,ptovrint:False,ptlb:Contour_Color_PLayer,ptin:_Contour_Color_PLayer,varname:_Contour_Color_OnStart_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.6755705,c2:0.6838235,c3:0.5983456,c4:1;n:type:ShaderForge.SFN_RemapRange,id:5222,x:31838,y:32331,varname:node_5222,prsc:2,frmn:2,frmx:3,tomn:0,tomx:1|IN-8848-OUT;proporder:7241-3777-5489-4209-8848-7085;pass:END;sub:END;*/

Shader "Shader Forge/SF_UI_OnStartScroll" {
    Properties {
        _Fond_Color ("Fond_Color", Color) = (0,0,0,1)
        _Contour_vitesse_variation ("Contour_vitesse_variation", Range(1, 3)) = 3
        _Contour_Color_Inventory ("Contour_Color_Inventory", Color) = (0.991785,0.4044118,1,1)
        _Contour_Color_OnStart ("Contour_Color_OnStart", Color) = (0.7132353,0.2949642,0.1101319,1)
        _Color ("Color", Range(1, 3)) = 3
        _Contour_Color_PLayer ("Contour_Color_PLayer", Color) = (0.6755705,0.6838235,0.5983456,1)
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
                Comp NotEqual
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
            uniform float4 _Contour_Color_Inventory;
            uniform float4 _Contour_Color_OnStart;
            uniform float _Color;
            uniform float4 _Contour_Color_PLayer;
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
                float3 emissive = lerp(_Fond_Color.rgb,lerp(lerp(_Contour_Color_Inventory.rgb,_Contour_Color_PLayer.rgb,(_Color*1.0+-1.0)),_Contour_Color_OnStart.rgb,(_Color*1.0+-2.0)),saturate((pow(abs(node_5601.r),node_4872)+pow(abs(node_5601.g),node_4872))));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
