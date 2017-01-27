// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:9407,x:33361,y:32763,varname:node_9407,prsc:2|diff-6485-OUT,emission-9721-OUT;n:type:ShaderForge.SFN_Multiply,id:8570,x:31568,y:33632,varname:node_8570,prsc:2|A-3259-X,B-1643-OUT;n:type:ShaderForge.SFN_Slider,id:4896,x:31674,y:33496,ptovrint:False,ptlb:Grid_Width,ptin:_Grid_Width,varname:node_4896,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.003637591,max:0.1;n:type:ShaderForge.SFN_Sin,id:506,x:31821,y:33672,varname:node_506,prsc:2|IN-8570-OUT;n:type:ShaderForge.SFN_Slider,id:1643,x:31007,y:33684,ptovrint:False,ptlb:Grid_Freq,ptin:_Grid_Freq,varname:node_1643,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_Floor,id:5486,x:32655,y:33773,varname:node_5486,prsc:2|IN-5071-OUT;n:type:ShaderForge.SFN_Add,id:5071,x:32119,y:33632,varname:node_5071,prsc:2|A-4896-OUT,B-506-OUT;n:type:ShaderForge.SFN_Multiply,id:3043,x:31557,y:33871,varname:node_3043,prsc:2|A-3259-Z,B-1643-OUT;n:type:ShaderForge.SFN_Sin,id:7615,x:31810,y:33911,varname:node_7615,prsc:2|IN-3043-OUT;n:type:ShaderForge.SFN_Floor,id:5827,x:32644,y:34012,varname:node_5827,prsc:2|IN-5984-OUT;n:type:ShaderForge.SFN_Add,id:5984,x:32108,y:33871,varname:node_5984,prsc:2|A-4896-OUT,B-7615-OUT;n:type:ShaderForge.SFN_Clamp01,id:9001,x:32846,y:33796,varname:node_9001,prsc:2|IN-5486-OUT;n:type:ShaderForge.SFN_Clamp01,id:2937,x:32846,y:34012,varname:node_2937,prsc:2|IN-5827-OUT;n:type:ShaderForge.SFN_Add,id:2636,x:33085,y:33896,varname:node_2636,prsc:2|A-9001-OUT,B-2937-OUT;n:type:ShaderForge.SFN_Clamp01,id:6571,x:33292,y:33896,varname:node_6571,prsc:2|IN-2636-OUT;n:type:ShaderForge.SFN_Color,id:710,x:32339,y:32015,ptovrint:False,ptlb:Color_Far,ptin:_Color_Far,varname:node_710,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.0449827,c2:0.08228729,c3:0.1911765,c4:1;n:type:ShaderForge.SFN_Multiply,id:9721,x:32740,y:33383,varname:node_9721,prsc:2|A-9201-RGB,B-7018-OUT;n:type:ShaderForge.SFN_Color,id:9201,x:32380,y:33380,ptovrint:False,ptlb:Grid_Color,ptin:_Grid_Color,varname:node_9201,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9779412,c2:0,c3:0.1820993,c4:1;n:type:ShaderForge.SFN_Floor,id:1085,x:32710,y:34278,varname:node_1085,prsc:2|IN-8311-OUT;n:type:ShaderForge.SFN_Add,id:8311,x:32174,y:34137,varname:node_8311,prsc:2|A-988-OUT,B-506-OUT;n:type:ShaderForge.SFN_Floor,id:5800,x:32699,y:34517,varname:node_5800,prsc:2|IN-926-OUT;n:type:ShaderForge.SFN_Add,id:926,x:32163,y:34376,varname:node_926,prsc:2|A-988-OUT,B-7615-OUT;n:type:ShaderForge.SFN_Clamp01,id:6095,x:32901,y:34301,varname:node_6095,prsc:2|IN-1085-OUT;n:type:ShaderForge.SFN_Clamp01,id:5275,x:32901,y:34517,varname:node_5275,prsc:2|IN-5800-OUT;n:type:ShaderForge.SFN_Add,id:2347,x:33140,y:34401,varname:node_2347,prsc:2|A-6095-OUT,B-5275-OUT;n:type:ShaderForge.SFN_Clamp01,id:7165,x:33315,y:34401,varname:node_7165,prsc:2|IN-2347-OUT;n:type:ShaderForge.SFN_Add,id:7000,x:33574,y:33990,varname:node_7000,prsc:2|A-6571-OUT,B-5371-OUT,C-7674-OUT;n:type:ShaderForge.SFN_Clamp01,id:7018,x:33781,y:34006,varname:node_7018,prsc:2|IN-7000-OUT;n:type:ShaderForge.SFN_ConstantLerp,id:5371,x:33550,y:34363,varname:node_5371,prsc:2,a:0,b:0.2|IN-7165-OUT;n:type:ShaderForge.SFN_Multiply,id:988,x:31890,y:34333,varname:node_988,prsc:2|A-4896-OUT,B-6047-OUT;n:type:ShaderForge.SFN_Floor,id:4177,x:32712,y:34738,varname:node_4177,prsc:2|IN-5495-OUT;n:type:ShaderForge.SFN_Add,id:5495,x:32176,y:34597,varname:node_5495,prsc:2|A-2138-OUT,B-506-OUT;n:type:ShaderForge.SFN_Floor,id:5916,x:32701,y:34977,varname:node_5916,prsc:2|IN-2184-OUT;n:type:ShaderForge.SFN_Add,id:2184,x:32165,y:34836,varname:node_2184,prsc:2|A-2138-OUT,B-7615-OUT;n:type:ShaderForge.SFN_Clamp01,id:5903,x:32903,y:34761,varname:node_5903,prsc:2|IN-4177-OUT;n:type:ShaderForge.SFN_Clamp01,id:5927,x:32903,y:34977,varname:node_5927,prsc:2|IN-5916-OUT;n:type:ShaderForge.SFN_Add,id:4144,x:33142,y:34861,varname:node_4144,prsc:2|A-5903-OUT,B-5927-OUT;n:type:ShaderForge.SFN_Clamp01,id:6888,x:33317,y:34861,varname:node_6888,prsc:2|IN-4144-OUT;n:type:ShaderForge.SFN_Vector1,id:1764,x:31592,y:34866,varname:node_1764,prsc:2,v1:10;n:type:ShaderForge.SFN_ConstantLerp,id:7674,x:33552,y:34823,varname:node_7674,prsc:2,a:0,b:0.1|IN-6888-OUT;n:type:ShaderForge.SFN_Multiply,id:2138,x:31892,y:34793,varname:node_2138,prsc:2|A-4896-OUT,B-1764-OUT;n:type:ShaderForge.SFN_Vector1,id:6047,x:31643,y:34367,varname:node_6047,prsc:2,v1:5;n:type:ShaderForge.SFN_FragmentPosition,id:3259,x:31315,y:33332,varname:node_3259,prsc:2;n:type:ShaderForge.SFN_Distance,id:1061,x:32116,y:32360,varname:node_1061,prsc:2|A-2042-XYZ,B-8755-XYZ;n:type:ShaderForge.SFN_FragmentPosition,id:2042,x:31797,y:32281,varname:node_2042,prsc:2;n:type:ShaderForge.SFN_ViewPosition,id:8755,x:31797,y:32503,varname:node_8755,prsc:2;n:type:ShaderForge.SFN_Divide,id:2369,x:32348,y:32404,varname:node_2369,prsc:2|A-1061-OUT,B-9360-OUT;n:type:ShaderForge.SFN_Slider,id:9360,x:32013,y:32659,ptovrint:False,ptlb:ZDepth_Dist,ptin:_ZDepth_Dist,varname:node_9360,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:31.43582,max:100;n:type:ShaderForge.SFN_Multiply,id:181,x:32663,y:32355,varname:node_181,prsc:2|A-710-RGB,B-8942-OUT;n:type:ShaderForge.SFN_Lerp,id:6485,x:32844,y:32211,varname:node_6485,prsc:2|A-710-RGB,B-9151-RGB,T-181-OUT;n:type:ShaderForge.SFN_Color,id:9151,x:32348,y:32195,ptovrint:False,ptlb:Color_Near,ptin:_Color_Near,varname:node_9151,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Power,id:8942,x:32545,y:32559,varname:node_8942,prsc:2|VAL-2369-OUT,EXP-6466-OUT;n:type:ShaderForge.SFN_Slider,id:6466,x:32345,y:32845,ptovrint:False,ptlb:ZDepth_Pow,ptin:_ZDepth_Pow,varname:node_6466,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.533808,max:4;proporder:9201-4896-1643-710-9360-9151-6466;pass:END;sub:END;*/

Shader "Custom/SF_Ground" {
    Properties {
        _Grid_Color ("Grid_Color", Color) = (0.9779412,0,0.1820993,1)
        _Grid_Width ("Grid_Width", Range(0, 0.1)) = 0.003637591
        _Grid_Freq ("Grid_Freq", Range(0, 10)) = 1
        _Color_Far ("Color_Far", Color) = (0.0449827,0.08228729,0.1911765,1)
        _ZDepth_Dist ("ZDepth_Dist", Range(0, 100)) = 31.43582
        _Color_Near ("Color_Near", Color) = (1,0,0,1)
        _ZDepth_Pow ("ZDepth_Pow", Range(0, 4)) = 1.533808
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
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float _Grid_Width;
            uniform float _Grid_Freq;
            uniform float4 _Color_Far;
            uniform float4 _Grid_Color;
            uniform float _ZDepth_Dist;
            uniform float4 _Color_Near;
            uniform float _ZDepth_Pow;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuseColor = lerp(_Color_Far.rgb,_Color_Near.rgb,(_Color_Far.rgb*pow((distance(i.posWorld.rgb,_WorldSpaceCameraPos)/_ZDepth_Dist),_ZDepth_Pow)));
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float node_506 = sin((i.posWorld.r*_Grid_Freq));
                float node_7615 = sin((i.posWorld.b*_Grid_Freq));
                float node_988 = (_Grid_Width*5.0);
                float node_2138 = (_Grid_Width*10.0);
                float3 emissive = (_Grid_Color.rgb*saturate((saturate((saturate(floor((_Grid_Width+node_506)))+saturate(floor((_Grid_Width+node_7615)))))+lerp(0,0.2,saturate((saturate(floor((node_988+node_506)))+saturate(floor((node_988+node_7615))))))+lerp(0,0.1,saturate((saturate(floor((node_2138+node_506)))+saturate(floor((node_2138+node_7615)))))))));
/// Final Color:
                float3 finalColor = diffuse + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float _Grid_Width;
            uniform float _Grid_Freq;
            uniform float4 _Color_Far;
            uniform float4 _Grid_Color;
            uniform float _ZDepth_Dist;
            uniform float4 _Color_Near;
            uniform float _ZDepth_Pow;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 diffuseColor = lerp(_Color_Far.rgb,_Color_Near.rgb,(_Color_Far.rgb*pow((distance(i.posWorld.rgb,_WorldSpaceCameraPos)/_ZDepth_Dist),_ZDepth_Pow)));
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
