// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:1234,x:34629,y:32436,varname:node_1234,prsc:2|diff-29-RGB,spec-942-OUT,gloss-8462-OUT,emission-2395-OUT;n:type:ShaderForge.SFN_TexCoord,id:9627,x:31084,y:32479,varname:node_9627,prsc:2,uv:0;n:type:ShaderForge.SFN_Time,id:7718,x:31249,y:32574,varname:node_7718,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:3099,x:29471,y:32117,varname:node_3099,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:6564,x:30170,y:32055,varname:node_6564,prsc:2|A-3099-UVOUT,B-9285-OUT;n:type:ShaderForge.SFN_Floor,id:8504,x:30440,y:31955,varname:node_8504,prsc:2|IN-6564-OUT;n:type:ShaderForge.SFN_ComponentMask,id:94,x:30681,y:31861,varname:node_94,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-8504-OUT;n:type:ShaderForge.SFN_Multiply,id:1682,x:31038,y:31893,varname:node_1682,prsc:2|A-94-R,B-1582-OUT;n:type:ShaderForge.SFN_Add,id:6367,x:31254,y:31768,varname:node_6367,prsc:2|A-94-R,B-1682-OUT;n:type:ShaderForge.SFN_Vector1,id:1582,x:30850,y:32033,varname:node_1582,prsc:2,v1:57;n:type:ShaderForge.SFN_Add,id:1839,x:31524,y:31738,varname:node_1839,prsc:2|A-2807-OUT,B-6367-OUT;n:type:ShaderForge.SFN_Vector1,id:2807,x:31168,y:31616,varname:node_2807,prsc:2,v1:58;n:type:ShaderForge.SFN_Sin,id:6739,x:31743,y:31738,varname:node_6739,prsc:2|IN-1839-OUT;n:type:ShaderForge.SFN_Multiply,id:5072,x:31978,y:31728,varname:node_5072,prsc:2|A-2573-OUT,B-6739-OUT;n:type:ShaderForge.SFN_Vector1,id:2573,x:31801,y:31595,varname:node_2573,prsc:2,v1:473.5;n:type:ShaderForge.SFN_Frac,id:9776,x:32164,y:31727,varname:node_9776,prsc:2|IN-5072-OUT;n:type:ShaderForge.SFN_Slider,id:9285,x:29770,y:32229,ptovrint:False,ptlb:Size,ptin:_Size,varname:node_9285,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:18.79987,max:100;n:type:ShaderForge.SFN_Multiply,id:3132,x:31932,y:32301,varname:node_3132,prsc:2|A-467-OUT,B-6132-OUT;n:type:ShaderForge.SFN_Panner,id:7720,x:32574,y:32285,varname:node_7720,prsc:2,spu:0,spv:1|UVIN-3098-OUT,DIST-3132-OUT;n:type:ShaderForge.SFN_TexCoord,id:3542,x:32175,y:32075,varname:node_3542,prsc:2,uv:0;n:type:ShaderForge.SFN_ComponentMask,id:5836,x:32793,y:32285,varname:node_5836,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-7720-UVOUT;n:type:ShaderForge.SFN_Frac,id:9475,x:33052,y:32285,varname:node_9475,prsc:2|IN-1743-OUT;n:type:ShaderForge.SFN_Multiply,id:5359,x:31527,y:32523,varname:node_5359,prsc:2|A-7718-T,B-1723-OUT;n:type:ShaderForge.SFN_Slider,id:1723,x:31106,y:32764,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:node_1723,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2.243311,max:3;n:type:ShaderForge.SFN_Lerp,id:467,x:31620,y:32061,varname:node_467,prsc:2|A-9776-OUT,B-6730-OUT,T-6489-OUT;n:type:ShaderForge.SFN_Vector1,id:6730,x:31255,y:32130,varname:node_6730,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Slider,id:844,x:30848,y:32324,ptovrint:False,ptlb:Speed_Difference,ptin:_Speed_Difference,varname:node_844,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5328296,max:1;n:type:ShaderForge.SFN_OneMinus,id:6489,x:31306,y:32248,varname:node_6489,prsc:2|IN-844-OUT;n:type:ShaderForge.SFN_Add,id:6132,x:31699,y:32412,varname:node_6132,prsc:2|A-9627-V,B-5359-OUT;n:type:ShaderForge.SFN_Multiply,id:5287,x:32986,y:33310,varname:node_5287,prsc:2|A-9475-OUT,B-7234-OUT;n:type:ShaderForge.SFN_OneMinus,id:2371,x:33313,y:32284,varname:node_2371,prsc:2|IN-9475-OUT;n:type:ShaderForge.SFN_Lerp,id:5949,x:33647,y:32277,varname:node_5949,prsc:2|A-6949-RGB,B-722-RGB,T-6059-OUT;n:type:ShaderForge.SFN_Color,id:6949,x:33260,y:31882,ptovrint:False,ptlb:Color_End,ptin:_Color_End,varname:node_6949,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:722,x:33260,y:32078,ptovrint:False,ptlb:Color_Middle,ptin:_Color_Middle,varname:node_722,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Clamp01,id:5971,x:33466,y:33191,varname:node_5971,prsc:2|IN-5287-OUT;n:type:ShaderForge.SFN_OneMinus,id:8160,x:33756,y:33204,varname:node_8160,prsc:2|IN-5971-OUT;n:type:ShaderForge.SFN_Slider,id:7234,x:32463,y:33286,ptovrint:False,ptlb:Color_Beginning_Size,ptin:_Color_Beginning_Size,varname:node_7234,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:13.18912,max:20;n:type:ShaderForge.SFN_Color,id:7703,x:33522,y:32452,ptovrint:False,ptlb:Color_Beginning,ptin:_Color_Beginning,varname:node_7703,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Lerp,id:8877,x:33847,y:32365,varname:node_8877,prsc:2|A-5949-OUT,B-7703-RGB,T-8160-OUT;n:type:ShaderForge.SFN_Multiply,id:1743,x:32875,y:32085,varname:node_1743,prsc:2|A-6696-OUT,B-5836-OUT;n:type:ShaderForge.SFN_Slider,id:6696,x:32641,y:31960,ptovrint:False,ptlb:Length,ptin:_Length,varname:node_6696,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3470386,max:1;n:type:ShaderForge.SFN_Sin,id:4927,x:30217,y:32788,varname:node_4927,prsc:2|IN-7176-OUT;n:type:ShaderForge.SFN_Slider,id:9914,x:30312,y:33103,ptovrint:False,ptlb:Thickness,ptin:_Thickness,varname:node_9914,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1684492,max:1;n:type:ShaderForge.SFN_Floor,id:5185,x:31106,y:32889,varname:node_5185,prsc:2|IN-499-OUT;n:type:ShaderForge.SFN_Multiply,id:2750,x:29806,y:32665,varname:node_2750,prsc:2|A-6564-OUT,B-3080-OUT,C-2128-OUT;n:type:ShaderForge.SFN_Vector1,id:3080,x:29477,y:32707,varname:node_3080,prsc:2,v1:3.14;n:type:ShaderForge.SFN_Vector1,id:2128,x:29561,y:32863,varname:node_2128,prsc:2,v1:2;n:type:ShaderForge.SFN_Add,id:7176,x:30035,y:32761,varname:node_7176,prsc:2|A-2750-OUT,B-1267-OUT;n:type:ShaderForge.SFN_Divide,id:1267,x:29806,y:32829,varname:node_1267,prsc:2|A-3080-OUT,B-2128-OUT;n:type:ShaderForge.SFN_Clamp01,id:2338,x:31304,y:32868,varname:node_2338,prsc:2|IN-5185-OUT;n:type:ShaderForge.SFN_OneMinus,id:6102,x:31519,y:32868,varname:node_6102,prsc:2|IN-2338-OUT;n:type:ShaderForge.SFN_Multiply,id:2395,x:33937,y:32575,varname:node_2395,prsc:2|A-8877-OUT,B-7422-OUT;n:type:ShaderForge.SFN_Color,id:29,x:34100,y:32254,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_29,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.6544118,c2:0.356077,c3:0.356077,c4:1;n:type:ShaderForge.SFN_Multiply,id:7422,x:32002,y:32922,varname:node_7422,prsc:2|A-6102-OUT,B-2094-OUT;n:type:ShaderForge.SFN_Floor,id:4581,x:31106,y:33065,varname:node_4581,prsc:2|IN-2097-OUT;n:type:ShaderForge.SFN_Clamp01,id:8997,x:31304,y:33044,varname:node_8997,prsc:2|IN-4581-OUT;n:type:ShaderForge.SFN_OneMinus,id:2094,x:31519,y:33044,varname:node_2094,prsc:2|IN-8997-OUT;n:type:ShaderForge.SFN_ComponentMask,id:1540,x:30405,y:32788,varname:node_1540,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-4927-OUT;n:type:ShaderForge.SFN_Add,id:499,x:30845,y:32861,varname:node_499,prsc:2|A-1540-R,B-9914-OUT;n:type:ShaderForge.SFN_Add,id:2097,x:30865,y:33076,varname:node_2097,prsc:2|A-1540-G,B-154-OUT;n:type:ShaderForge.SFN_Multiply,id:154,x:30676,y:33156,varname:node_154,prsc:2|A-9914-OUT,B-8609-OUT;n:type:ShaderForge.SFN_Vector1,id:8609,x:30441,y:33174,varname:node_8609,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Add,id:7286,x:31215,y:31222,varname:node_7286,prsc:2|A-94-G,B-9148-OUT,C-3598-OUT;n:type:ShaderForge.SFN_Add,id:3464,x:31485,y:31192,varname:node_3464,prsc:2|A-1369-OUT,B-7286-OUT;n:type:ShaderForge.SFN_Vector1,id:1369,x:31129,y:31070,varname:node_1369,prsc:2,v1:58;n:type:ShaderForge.SFN_Sin,id:6619,x:31704,y:31192,varname:node_6619,prsc:2|IN-3464-OUT;n:type:ShaderForge.SFN_Multiply,id:1067,x:31939,y:31182,varname:node_1067,prsc:2|A-5620-OUT,B-6619-OUT;n:type:ShaderForge.SFN_Vector1,id:5620,x:31762,y:31049,varname:node_5620,prsc:2,v1:473.5;n:type:ShaderForge.SFN_Frac,id:5791,x:32125,y:31181,varname:node_5791,prsc:2|IN-1067-OUT;n:type:ShaderForge.SFN_Multiply,id:9148,x:30936,y:31409,varname:node_9148,prsc:2|A-94-R,B-2272-OUT;n:type:ShaderForge.SFN_Vector1,id:2272,x:30708,y:31462,varname:node_2272,prsc:2,v1:57;n:type:ShaderForge.SFN_Time,id:4275,x:30622,y:31190,varname:node_4275,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3598,x:30940,y:31107,varname:node_3598,prsc:2|A-6066-OUT,B-4275-TSL;n:type:ShaderForge.SFN_Vector1,id:6066,x:30574,y:31048,varname:node_6066,prsc:2,v1:0.01;n:type:ShaderForge.SFN_Multiply,id:6059,x:33601,y:31912,varname:node_6059,prsc:2|A-253-OUT,B-2371-OUT;n:type:ShaderForge.SFN_Multiply,id:4988,x:32757,y:31297,varname:node_4988,prsc:2|A-1517-OUT,B-5791-OUT;n:type:ShaderForge.SFN_Slider,id:1517,x:32521,y:31076,ptovrint:False,ptlb:Blink_Intensity,ptin:_Blink_Intensity,varname:node_1517,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.6817439,max:1;n:type:ShaderForge.SFN_OneMinus,id:253,x:33075,y:31345,varname:node_253,prsc:2|IN-4988-OUT;n:type:ShaderForge.SFN_Set,id:4405,x:30101,y:32277,varname:__Size,prsc:2|IN-9285-OUT;n:type:ShaderForge.SFN_Posterize,id:3098,x:32393,y:32190,varname:node_3098,prsc:2|IN-3542-UVOUT,STPS-8835-OUT;n:type:ShaderForge.SFN_Get,id:8835,x:32139,y:32236,varname:node_8835,prsc:2|IN-4405-OUT;n:type:ShaderForge.SFN_Slider,id:942,x:34198,y:32422,ptovrint:False,ptlb:Spec,ptin:_Spec,varname:node_942,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:8462,x:34198,y:32522,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:node_8462,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;proporder:942-8462-29-6949-722-7703-7234-9285-1723-844-6696-9914-1517;pass:END;sub:END;*/

Shader "Custom/SF_Code" {
    Properties {
        _Spec ("Spec", Range(0, 1)) = 0
        _Gloss ("Gloss", Range(0, 1)) = 0
        _Diffuse ("Diffuse", Color) = (0.6544118,0.356077,0.356077,1)
        _Color_End ("Color_End", Color) = (0,0,0,1)
        _Color_Middle ("Color_Middle", Color) = (0,1,1,1)
        _Color_Beginning ("Color_Beginning", Color) = (1,0,0,1)
        _Color_Beginning_Size ("Color_Beginning_Size", Range(0, 20)) = 13.18912
        _Size ("Size", Range(0, 100)) = 18.79987
        _Speed ("Speed", Range(0, 3)) = 2.243311
        _Speed_Difference ("Speed_Difference", Range(0, 1)) = 0.5328296
        _Length ("Length", Range(0, 1)) = 0.3470386
        _Thickness ("Thickness", Range(0, 1)) = 0.1684492
        _Blink_Intensity ("Blink_Intensity", Range(0, 1)) = 0.6817439
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
            uniform float4 _TimeEditor;
            uniform float _Size;
            uniform float _Speed;
            uniform float _Speed_Difference;
            uniform float4 _Color_End;
            uniform float4 _Color_Middle;
            uniform float _Color_Beginning_Size;
            uniform float4 _Color_Beginning;
            uniform float _Length;
            uniform float _Thickness;
            uniform float4 _Diffuse;
            uniform float _Blink_Intensity;
            uniform float _Spec;
            uniform float _Gloss;
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
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
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
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float3 specularColor = float3(_Spec,_Spec,_Spec);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuseColor = _Diffuse.rgb;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float2 node_6564 = (i.uv0*_Size);
                float2 node_94 = floor(node_6564).rg;
                float4 node_4275 = _Time + _TimeEditor;
                float4 node_7718 = _Time + _TimeEditor;
                float __Size = _Size;
                float node_8835 = __Size;
                float node_9475 = frac((_Length*(floor(i.uv0 * node_8835) / (node_8835 - 1)+(lerp(frac((473.5*sin((58.0+(node_94.r+(node_94.r*57.0)))))),0.5,(1.0 - _Speed_Difference))*(i.uv0.g+(node_7718.g*_Speed)))*float2(0,1)).g));
                float node_3080 = 3.14;
                float node_2128 = 2.0;
                float2 node_1540 = sin(((node_6564*node_3080*node_2128)+(node_3080/node_2128))).rg;
                float3 emissive = (lerp(lerp(_Color_End.rgb,_Color_Middle.rgb,((1.0 - (_Blink_Intensity*frac((473.5*sin((58.0+(node_94.g+(node_94.r*57.0)+(0.01*node_4275.r))))))))*(1.0 - node_9475))),_Color_Beginning.rgb,(1.0 - saturate((node_9475*_Color_Beginning_Size))))*((1.0 - saturate(floor((node_1540.r+_Thickness))))*(1.0 - saturate(floor((node_1540.g+(_Thickness*0.2)))))));
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
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
            uniform float4 _TimeEditor;
            uniform float _Size;
            uniform float _Speed;
            uniform float _Speed_Difference;
            uniform float4 _Color_End;
            uniform float4 _Color_Middle;
            uniform float _Color_Beginning_Size;
            uniform float4 _Color_Beginning;
            uniform float _Length;
            uniform float _Thickness;
            uniform float4 _Diffuse;
            uniform float _Blink_Intensity;
            uniform float _Spec;
            uniform float _Gloss;
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
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
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
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float3 specularColor = float3(_Spec,_Spec,_Spec);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 diffuseColor = _Diffuse.rgb;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
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
