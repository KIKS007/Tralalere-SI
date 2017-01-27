// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:8648,x:37950,y:32215,varname:node_8648,prsc:2|diff-5979-OUT,spec-829-OUT,gloss-829-OUT,normal-6328-OUT,emission-4520-OUT,voffset-9943-OUT,tess-6833-OUT;n:type:ShaderForge.SFN_Time,id:5456,x:29747,y:33605,varname:node_5456,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5608,x:30035,y:33537,varname:node_5608,prsc:2|A-2501-OUT,B-5456-T;n:type:ShaderForge.SFN_Add,id:6951,x:30300,y:33543,varname:node_6951,prsc:2|A-5608-OUT,B-7514-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:7514,x:30077,y:33715,varname:node_7514,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:2851,x:30515,y:33703,varname:node_2851,prsc:2|A-6951-OUT,B-14-OUT;n:type:ShaderForge.SFN_Frac,id:9624,x:30789,y:33741,varname:node_9624,prsc:2|IN-2851-OUT;n:type:ShaderForge.SFN_Floor,id:3855,x:30753,y:33404,varname:node_3855,prsc:2|IN-2851-OUT;n:type:ShaderForge.SFN_ComponentMask,id:7195,x:30972,y:33401,varname:node_7195,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3855-OUT;n:type:ShaderForge.SFN_Multiply,id:7840,x:31215,y:33478,varname:node_7840,prsc:2|A-7195-G,B-210-OUT;n:type:ShaderForge.SFN_Vector1,id:210,x:31024,y:33606,varname:node_210,prsc:2,v1:57;n:type:ShaderForge.SFN_Add,id:5654,x:31481,y:33304,varname:node_5654,prsc:2|A-7195-R,B-7840-OUT;n:type:ShaderForge.SFN_Add,id:9496,x:31751,y:32853,varname:node_9496,prsc:2|A-6897-OUT,B-5654-OUT;n:type:ShaderForge.SFN_Add,id:4579,x:31748,y:32987,varname:node_4579,prsc:2|A-6372-OUT,B-5654-OUT;n:type:ShaderForge.SFN_Add,id:9,x:31748,y:33158,varname:node_9,prsc:2|A-9094-OUT,B-5654-OUT;n:type:ShaderForge.SFN_Vector1,id:6897,x:31420,y:32729,varname:node_6897,prsc:2,v1:58;n:type:ShaderForge.SFN_Vector1,id:6372,x:31472,y:32838,varname:node_6372,prsc:2,v1:57;n:type:ShaderForge.SFN_Vector1,id:9094,x:31441,y:33031,varname:node_9094,prsc:2,v1:1;n:type:ShaderForge.SFN_Sin,id:7111,x:31968,y:32840,varname:node_7111,prsc:2|IN-9496-OUT;n:type:ShaderForge.SFN_Sin,id:1376,x:31968,y:32994,varname:node_1376,prsc:2|IN-4579-OUT;n:type:ShaderForge.SFN_Sin,id:6335,x:31968,y:33151,varname:node_6335,prsc:2|IN-9-OUT;n:type:ShaderForge.SFN_Sin,id:9279,x:31968,y:33305,varname:node_9279,prsc:2|IN-5654-OUT;n:type:ShaderForge.SFN_Frac,id:8394,x:32320,y:32845,varname:node_8394,prsc:2|IN-3914-OUT;n:type:ShaderForge.SFN_Frac,id:4289,x:32339,y:32981,varname:node_4289,prsc:2|IN-2746-OUT;n:type:ShaderForge.SFN_Frac,id:724,x:32357,y:33156,varname:node_724,prsc:2|IN-2884-OUT;n:type:ShaderForge.SFN_Frac,id:9396,x:32344,y:33310,varname:node_9396,prsc:2|IN-6599-OUT;n:type:ShaderForge.SFN_Lerp,id:1519,x:32527,y:32931,varname:node_1519,prsc:2|A-4289-OUT,B-8394-OUT,T-1898-R;n:type:ShaderForge.SFN_Lerp,id:3924,x:32563,y:33209,varname:node_3924,prsc:2|A-9396-OUT,B-724-OUT,T-1898-R;n:type:ShaderForge.SFN_Multiply,id:2077,x:31081,y:33819,varname:node_2077,prsc:2|A-9624-OUT,B-245-OUT;n:type:ShaderForge.SFN_Vector1,id:245,x:30875,y:33904,varname:node_245,prsc:2,v1:2;n:type:ShaderForge.SFN_Subtract,id:2937,x:31398,y:33705,varname:node_2937,prsc:2|A-824-OUT,B-2077-OUT;n:type:ShaderForge.SFN_Vector1,id:824,x:31081,y:33688,varname:node_824,prsc:2,v1:3;n:type:ShaderForge.SFN_Multiply,id:2620,x:32233,y:33819,varname:node_2620,prsc:2|A-2937-OUT,B-9624-OUT,C-9624-OUT;n:type:ShaderForge.SFN_ComponentMask,id:1898,x:32471,y:33819,varname:node_1898,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-2620-OUT;n:type:ShaderForge.SFN_Lerp,id:8722,x:32793,y:33071,varname:node_8722,prsc:2|A-3924-OUT,B-1519-OUT,T-1898-G;n:type:ShaderForge.SFN_Multiply,id:8428,x:33065,y:33072,varname:node_8428,prsc:2|A-8722-OUT,B-171-OUT;n:type:ShaderForge.SFN_Slider,id:4369,x:29355,y:33294,ptovrint:False,ptlb:move_u,ptin:_move_u,varname:node_4369,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:4966,x:29355,y:33388,ptovrint:False,ptlb:move_v,ptin:_move_v,varname:node_4966,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Append,id:2501,x:29809,y:33300,varname:node_2501,prsc:2|A-4369-OUT,B-4966-OUT;n:type:ShaderForge.SFN_Slider,id:14,x:30156,y:34016,ptovrint:False,ptlb:Freq,ptin:_Freq,varname:node_14,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:4,max:50;n:type:ShaderForge.SFN_Slider,id:171,x:32838,y:33318,ptovrint:False,ptlb:amp,ptin:_amp,varname:node_171,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:2208,x:33524,y:32876,varname:node_2208,prsc:2|A-1181-UVOUT,B-8428-OUT;n:type:ShaderForge.SFN_TexCoord,id:1181,x:33095,y:32711,varname:node_1181,prsc:2,uv:0;n:type:ShaderForge.SFN_Slider,id:9486,x:32860,y:32229,ptovrint:False,ptlb:move2_u,ptin:_move2_u,varname:node_9486,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:3269,x:32860,y:32325,ptovrint:False,ptlb:move2_v,ptin:_move2_v,varname:node_3269,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Time,id:598,x:32993,y:32469,varname:node_598,prsc:2;n:type:ShaderForge.SFN_Append,id:3602,x:33249,y:32255,varname:node_3602,prsc:2|A-9486-OUT,B-3269-OUT;n:type:ShaderForge.SFN_Multiply,id:1339,x:33484,y:32388,varname:node_1339,prsc:2|A-3602-OUT,B-598-T;n:type:ShaderForge.SFN_Add,id:8217,x:33784,y:32473,varname:node_8217,prsc:2|A-1339-OUT,B-2208-OUT;n:type:ShaderForge.SFN_Multiply,id:998,x:34060,y:32701,varname:node_998,prsc:2|A-8217-OUT,B-3199-OUT;n:type:ShaderForge.SFN_Slider,id:3199,x:33835,y:32931,ptovrint:False,ptlb:freq2,ptin:_freq2,varname:node_3199,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:5,max:50;n:type:ShaderForge.SFN_Frac,id:1402,x:34410,y:32771,varname:node_1402,prsc:2|IN-998-OUT;n:type:ShaderForge.SFN_Floor,id:8387,x:34404,y:32455,varname:node_8387,prsc:2|IN-998-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6650,x:34667,y:32366,varname:node_6650,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-8387-OUT;n:type:ShaderForge.SFN_Multiply,id:2455,x:34989,y:32450,varname:node_2455,prsc:2|A-6650-G,B-866-OUT;n:type:ShaderForge.SFN_Vector1,id:866,x:34790,y:32542,varname:node_866,prsc:2,v1:57;n:type:ShaderForge.SFN_Add,id:7173,x:35194,y:32320,varname:node_7173,prsc:2|A-6650-R,B-2455-OUT;n:type:ShaderForge.SFN_Add,id:912,x:35309,y:31801,varname:node_912,prsc:2|A-1480-OUT,B-7173-OUT;n:type:ShaderForge.SFN_Add,id:9886,x:35282,y:31964,varname:node_9886,prsc:2|A-1697-OUT,B-7173-OUT;n:type:ShaderForge.SFN_Add,id:9642,x:35282,y:32123,varname:node_9642,prsc:2|A-182-OUT,B-7173-OUT;n:type:ShaderForge.SFN_Vector1,id:1697,x:35002,y:31981,varname:node_1697,prsc:2,v1:57;n:type:ShaderForge.SFN_Vector1,id:1480,x:34955,y:31804,varname:node_1480,prsc:2,v1:58;n:type:ShaderForge.SFN_Vector1,id:182,x:35051,y:32123,varname:node_182,prsc:2,v1:1;n:type:ShaderForge.SFN_Sin,id:4227,x:35536,y:31816,varname:node_4227,prsc:2|IN-912-OUT;n:type:ShaderForge.SFN_Sin,id:8664,x:35536,y:32001,varname:node_8664,prsc:2|IN-9886-OUT;n:type:ShaderForge.SFN_Sin,id:1590,x:35536,y:32140,varname:node_1590,prsc:2|IN-9642-OUT;n:type:ShaderForge.SFN_Sin,id:5932,x:35536,y:32309,varname:node_5932,prsc:2|IN-7173-OUT;n:type:ShaderForge.SFN_Multiply,id:8609,x:35764,y:31816,varname:node_8609,prsc:2|A-854-OUT,B-4227-OUT;n:type:ShaderForge.SFN_Multiply,id:3914,x:32156,y:32845,varname:node_3914,prsc:2|A-7111-OUT,B-1124-OUT;n:type:ShaderForge.SFN_Multiply,id:2746,x:32156,y:32994,varname:node_2746,prsc:2|A-1376-OUT,B-1124-OUT;n:type:ShaderForge.SFN_Multiply,id:2884,x:32173,y:33156,varname:node_2884,prsc:2|A-6335-OUT,B-1124-OUT;n:type:ShaderForge.SFN_Multiply,id:6599,x:32154,y:33310,varname:node_6599,prsc:2|A-9279-OUT,B-1124-OUT;n:type:ShaderForge.SFN_Vector1,id:1124,x:31968,y:32688,varname:node_1124,prsc:2,v1:473.5;n:type:ShaderForge.SFN_Multiply,id:1486,x:35764,y:31988,varname:node_1486,prsc:2|A-854-OUT,B-8664-OUT;n:type:ShaderForge.SFN_Multiply,id:5787,x:35764,y:32140,varname:node_5787,prsc:2|A-854-OUT,B-1590-OUT;n:type:ShaderForge.SFN_Multiply,id:1558,x:35744,y:32309,varname:node_1558,prsc:2|A-854-OUT,B-5932-OUT;n:type:ShaderForge.SFN_Vector1,id:854,x:35536,y:31686,varname:node_854,prsc:2,v1:473.5;n:type:ShaderForge.SFN_Lerp,id:8878,x:36245,y:31906,varname:node_8878,prsc:2|A-6249-OUT,B-2536-OUT,T-7472-R;n:type:ShaderForge.SFN_Lerp,id:8530,x:36238,y:32225,varname:node_8530,prsc:2|A-8904-OUT,B-2299-OUT,T-7472-R;n:type:ShaderForge.SFN_Lerp,id:1649,x:36502,y:32068,varname:node_1649,prsc:2|A-8530-OUT,B-8878-OUT,T-7472-G;n:type:ShaderForge.SFN_Multiply,id:5378,x:34697,y:32852,varname:node_5378,prsc:2|A-1402-OUT,B-3453-OUT;n:type:ShaderForge.SFN_Vector1,id:3453,x:34410,y:32942,varname:node_3453,prsc:2,v1:2;n:type:ShaderForge.SFN_Subtract,id:2438,x:34951,y:32750,varname:node_2438,prsc:2|A-5066-OUT,B-5378-OUT;n:type:ShaderForge.SFN_Vector1,id:5066,x:34697,y:32750,varname:node_5066,prsc:2,v1:3;n:type:ShaderForge.SFN_Multiply,id:2568,x:35511,y:32715,varname:node_2568,prsc:2|A-2438-OUT,B-1402-OUT,C-1402-OUT;n:type:ShaderForge.SFN_ComponentMask,id:7472,x:35800,y:32698,varname:node_7472,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-2568-OUT;n:type:ShaderForge.SFN_Frac,id:2536,x:35961,y:31816,varname:node_2536,prsc:2|IN-8609-OUT;n:type:ShaderForge.SFN_Frac,id:6249,x:35961,y:31988,varname:node_6249,prsc:2|IN-1486-OUT;n:type:ShaderForge.SFN_Frac,id:2299,x:35995,y:32159,varname:node_2299,prsc:2|IN-5787-OUT;n:type:ShaderForge.SFN_Frac,id:8904,x:35995,y:32309,varname:node_8904,prsc:2|IN-1558-OUT;n:type:ShaderForge.SFN_Multiply,id:4248,x:36833,y:32066,varname:node_4248,prsc:2|A-1649-OUT,B-8860-OUT;n:type:ShaderForge.SFN_Slider,id:8860,x:36640,y:32450,ptovrint:False,ptlb:amp_02,ptin:_amp_02,varname:node_8860,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2043306,max:1;n:type:ShaderForge.SFN_Slider,id:1863,x:36780,y:32718,ptovrint:False,ptlb:Tess,ptin:_Tess,varname:node_1863,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:42.19882,max:100;n:type:ShaderForge.SFN_Vector1,id:829,x:37833,y:32061,varname:node_829,prsc:2,v1:0;n:type:ShaderForge.SFN_Color,id:453,x:37145,y:31750,ptovrint:False,ptlb:Color_01,ptin:_Color_01,varname:node_453,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8308824,c2:0.09164143,c3:0.09164143,c4:1;n:type:ShaderForge.SFN_NormalVector,id:2173,x:37164,y:32543,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:9943,x:37164,y:32383,varname:node_9943,prsc:2|A-4248-OUT,B-2173-OUT;n:type:ShaderForge.SFN_OneMinus,id:6328,x:37414,y:32500,varname:node_6328,prsc:2|IN-9943-OUT;n:type:ShaderForge.SFN_Color,id:2860,x:37145,y:31915,ptovrint:False,ptlb:Color_02,ptin:_Color_02,varname:node_2860,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8823529,c2:0.6693712,c3:0.1102941,c4:1;n:type:ShaderForge.SFN_Lerp,id:5979,x:37406,y:31875,varname:node_5979,prsc:2|A-453-RGB,B-2860-RGB,T-1649-OUT;n:type:ShaderForge.SFN_Lerp,id:4520,x:37528,y:32157,varname:node_4520,prsc:2|A-453-RGB,B-9463-OUT,T-3170-OUT;n:type:ShaderForge.SFN_Vector1,id:9463,x:37211,y:32110,varname:node_9463,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:4814,x:37135,y:32185,varname:node_4814,prsc:2|A-1649-OUT,B-4259-OUT;n:type:ShaderForge.SFN_Slider,id:4259,x:36794,y:32243,ptovrint:False,ptlb:Emission,ptin:_Emission,varname:node_4259,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.48718,max:3;n:type:ShaderForge.SFN_Clamp01,id:3170,x:37313,y:32185,varname:node_3170,prsc:2|IN-4814-OUT;n:type:ShaderForge.SFN_ViewPosition,id:7192,x:37059,y:32845,varname:node_7192,prsc:2;n:type:ShaderForge.SFN_FragmentPosition,id:3502,x:37059,y:32979,varname:node_3502,prsc:2;n:type:ShaderForge.SFN_Distance,id:1655,x:37308,y:32920,varname:node_1655,prsc:2|A-7192-XYZ,B-3502-XYZ;n:type:ShaderForge.SFN_Divide,id:1580,x:37605,y:32915,varname:node_1580,prsc:2|A-1655-OUT,B-2268-OUT;n:type:ShaderForge.SFN_Slider,id:2268,x:37229,y:33174,ptovrint:False,ptlb:Tess_Distance,ptin:_Tess_Distance,varname:node_2268,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:20.29054,max:100;n:type:ShaderForge.SFN_Power,id:645,x:37916,y:32912,varname:node_645,prsc:2|VAL-1580-OUT,EXP-9905-OUT;n:type:ShaderForge.SFN_Slider,id:9905,x:37675,y:33223,ptovrint:False,ptlb:Tess_Dist_Power,ptin:_Tess_Dist_Power,varname:node_9905,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.150205,max:10;n:type:ShaderForge.SFN_Clamp01,id:5101,x:38147,y:32912,varname:node_5101,prsc:2|IN-645-OUT;n:type:ShaderForge.SFN_Lerp,id:6833,x:38382,y:32794,varname:node_6833,prsc:2|A-1863-OUT,B-5455-OUT,T-5101-OUT;n:type:ShaderForge.SFN_Vector1,id:5455,x:38109,y:32840,varname:node_5455,prsc:2,v1:1;proporder:4369-4966-14-171-9486-3269-3199-8860-1863-453-2860-4259-2268-9905;pass:END;sub:END;*/

Shader "Custom/SF_Lava" {
    Properties {
        _move_u ("move_u", Range(-1, 1)) = 0
        _move_v ("move_v", Range(-1, 1)) = 0
        _Freq ("Freq", Range(0, 50)) = 4
        _amp ("amp", Range(0, 1)) = 1
        _move2_u ("move2_u", Range(-1, 1)) = 0
        _move2_v ("move2_v", Range(-1, 1)) = 0
        _freq2 ("freq2", Range(0, 50)) = 5
        _amp_02 ("amp_02", Range(0, 1)) = 0.2043306
        _Tess ("Tess", Range(0, 100)) = 42.19882
        _Color_01 ("Color_01", Color) = (0.8308824,0.09164143,0.09164143,1)
        _Color_02 ("Color_02", Color) = (0.8823529,0.6693712,0.1102941,1)
        _Emission ("Emission", Range(0, 3)) = 1.48718
        _Tess_Distance ("Tess_Distance", Range(0, 100)) = 20.29054
        _Tess_Dist_Power ("Tess_Dist_Power", Range(0, 10)) = 1.150205
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
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform float _move_u;
            uniform float _move_v;
            uniform float _Freq;
            uniform float _amp;
            uniform float _move2_u;
            uniform float _move2_v;
            uniform float _freq2;
            uniform float _amp_02;
            uniform float _Tess;
            uniform float4 _Color_01;
            uniform float4 _Color_02;
            uniform float _Emission;
            uniform float _Tess_Distance;
            uniform float _Tess_Dist_Power;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float node_854 = 473.5;
                float4 node_598 = _Time + _TimeEditor;
                float4 node_5456 = _Time + _TimeEditor;
                float2 node_2851 = (((float2(_move_u,_move_v)*node_5456.g)+o.uv0)*_Freq);
                float2 node_7195 = floor(node_2851).rg;
                float node_5654 = (node_7195.r+(node_7195.g*57.0));
                float node_1124 = 473.5;
                float2 node_9624 = frac(node_2851);
                float2 node_1898 = ((3.0-(node_9624*2.0))*node_9624*node_9624).rg;
                float2 node_998 = (((float2(_move2_u,_move2_v)*node_598.g)+(o.uv0*(lerp(lerp(frac((sin(node_5654)*node_1124)),frac((sin((1.0+node_5654))*node_1124)),node_1898.r),lerp(frac((sin((57.0+node_5654))*node_1124)),frac((sin((58.0+node_5654))*node_1124)),node_1898.r),node_1898.g)*_amp)))*_freq2);
                float2 node_6650 = floor(node_998).rg;
                float node_7173 = (node_6650.r+(node_6650.g*57.0));
                float2 node_1402 = frac(node_998);
                float2 node_7472 = ((3.0-(node_1402*2.0))*node_1402*node_1402).rg;
                float node_1649 = lerp(lerp(frac((node_854*sin(node_7173))),frac((node_854*sin((1.0+node_7173)))),node_7472.r),lerp(frac((node_854*sin((57.0+node_7173)))),frac((node_854*sin((58.0+node_7173)))),node_7472.r),node_7472.g);
                float3 node_9943 = ((node_1649*_amp_02)*v.normal);
                v.vertex.xyz += node_9943;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                float Tessellation(TessVertex v){
                    return lerp(_Tess,1.0,saturate(pow((distance(_WorldSpaceCameraPos,mul(unity_ObjectToWorld, v.vertex).rgb)/_Tess_Distance),_Tess_Dist_Power)));
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float node_854 = 473.5;
                float4 node_598 = _Time + _TimeEditor;
                float4 node_5456 = _Time + _TimeEditor;
                float2 node_2851 = (((float2(_move_u,_move_v)*node_5456.g)+i.uv0)*_Freq);
                float2 node_7195 = floor(node_2851).rg;
                float node_5654 = (node_7195.r+(node_7195.g*57.0));
                float node_1124 = 473.5;
                float2 node_9624 = frac(node_2851);
                float2 node_1898 = ((3.0-(node_9624*2.0))*node_9624*node_9624).rg;
                float2 node_998 = (((float2(_move2_u,_move2_v)*node_598.g)+(i.uv0*(lerp(lerp(frac((sin(node_5654)*node_1124)),frac((sin((1.0+node_5654))*node_1124)),node_1898.r),lerp(frac((sin((57.0+node_5654))*node_1124)),frac((sin((58.0+node_5654))*node_1124)),node_1898.r),node_1898.g)*_amp)))*_freq2);
                float2 node_6650 = floor(node_998).rg;
                float node_7173 = (node_6650.r+(node_6650.g*57.0));
                float2 node_1402 = frac(node_998);
                float2 node_7472 = ((3.0-(node_1402*2.0))*node_1402*node_1402).rg;
                float node_1649 = lerp(lerp(frac((node_854*sin(node_7173))),frac((node_854*sin((1.0+node_7173)))),node_7472.r),lerp(frac((node_854*sin((57.0+node_7173)))),frac((node_854*sin((58.0+node_7173)))),node_7472.r),node_7472.g);
                float3 node_9943 = ((node_1649*_amp_02)*i.normalDir);
                float3 normalLocal = (1.0 - node_9943);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float node_829 = 0.0;
                float gloss = node_829;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float3 specularColor = float3(node_829,node_829,node_829);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuseColor = lerp(_Color_01.rgb,_Color_02.rgb,node_1649);
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float node_9463 = 0.0;
                float3 emissive = lerp(_Color_01.rgb,float3(node_9463,node_9463,node_9463),saturate((node_1649*_Emission)));
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
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform float _move_u;
            uniform float _move_v;
            uniform float _Freq;
            uniform float _amp;
            uniform float _move2_u;
            uniform float _move2_v;
            uniform float _freq2;
            uniform float _amp_02;
            uniform float _Tess;
            uniform float4 _Color_01;
            uniform float4 _Color_02;
            uniform float _Emission;
            uniform float _Tess_Distance;
            uniform float _Tess_Dist_Power;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float node_854 = 473.5;
                float4 node_598 = _Time + _TimeEditor;
                float4 node_5456 = _Time + _TimeEditor;
                float2 node_2851 = (((float2(_move_u,_move_v)*node_5456.g)+o.uv0)*_Freq);
                float2 node_7195 = floor(node_2851).rg;
                float node_5654 = (node_7195.r+(node_7195.g*57.0));
                float node_1124 = 473.5;
                float2 node_9624 = frac(node_2851);
                float2 node_1898 = ((3.0-(node_9624*2.0))*node_9624*node_9624).rg;
                float2 node_998 = (((float2(_move2_u,_move2_v)*node_598.g)+(o.uv0*(lerp(lerp(frac((sin(node_5654)*node_1124)),frac((sin((1.0+node_5654))*node_1124)),node_1898.r),lerp(frac((sin((57.0+node_5654))*node_1124)),frac((sin((58.0+node_5654))*node_1124)),node_1898.r),node_1898.g)*_amp)))*_freq2);
                float2 node_6650 = floor(node_998).rg;
                float node_7173 = (node_6650.r+(node_6650.g*57.0));
                float2 node_1402 = frac(node_998);
                float2 node_7472 = ((3.0-(node_1402*2.0))*node_1402*node_1402).rg;
                float node_1649 = lerp(lerp(frac((node_854*sin(node_7173))),frac((node_854*sin((1.0+node_7173)))),node_7472.r),lerp(frac((node_854*sin((57.0+node_7173)))),frac((node_854*sin((58.0+node_7173)))),node_7472.r),node_7472.g);
                float3 node_9943 = ((node_1649*_amp_02)*v.normal);
                v.vertex.xyz += node_9943;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                float Tessellation(TessVertex v){
                    return lerp(_Tess,1.0,saturate(pow((distance(_WorldSpaceCameraPos,mul(unity_ObjectToWorld, v.vertex).rgb)/_Tess_Distance),_Tess_Dist_Power)));
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float node_854 = 473.5;
                float4 node_598 = _Time + _TimeEditor;
                float4 node_5456 = _Time + _TimeEditor;
                float2 node_2851 = (((float2(_move_u,_move_v)*node_5456.g)+i.uv0)*_Freq);
                float2 node_7195 = floor(node_2851).rg;
                float node_5654 = (node_7195.r+(node_7195.g*57.0));
                float node_1124 = 473.5;
                float2 node_9624 = frac(node_2851);
                float2 node_1898 = ((3.0-(node_9624*2.0))*node_9624*node_9624).rg;
                float2 node_998 = (((float2(_move2_u,_move2_v)*node_598.g)+(i.uv0*(lerp(lerp(frac((sin(node_5654)*node_1124)),frac((sin((1.0+node_5654))*node_1124)),node_1898.r),lerp(frac((sin((57.0+node_5654))*node_1124)),frac((sin((58.0+node_5654))*node_1124)),node_1898.r),node_1898.g)*_amp)))*_freq2);
                float2 node_6650 = floor(node_998).rg;
                float node_7173 = (node_6650.r+(node_6650.g*57.0));
                float2 node_1402 = frac(node_998);
                float2 node_7472 = ((3.0-(node_1402*2.0))*node_1402*node_1402).rg;
                float node_1649 = lerp(lerp(frac((node_854*sin(node_7173))),frac((node_854*sin((1.0+node_7173)))),node_7472.r),lerp(frac((node_854*sin((57.0+node_7173)))),frac((node_854*sin((58.0+node_7173)))),node_7472.r),node_7472.g);
                float3 node_9943 = ((node_1649*_amp_02)*i.normalDir);
                float3 normalLocal = (1.0 - node_9943);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float node_829 = 0.0;
                float gloss = node_829;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float3 specularColor = float3(node_829,node_829,node_829);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 diffuseColor = lerp(_Color_01.rgb,_Color_02.rgb,node_1649);
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float4 _TimeEditor;
            uniform float _move_u;
            uniform float _move_v;
            uniform float _Freq;
            uniform float _amp;
            uniform float _move2_u;
            uniform float _move2_v;
            uniform float _freq2;
            uniform float _amp_02;
            uniform float _Tess;
            uniform float _Tess_Distance;
            uniform float _Tess_Dist_Power;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float node_854 = 473.5;
                float4 node_598 = _Time + _TimeEditor;
                float4 node_5456 = _Time + _TimeEditor;
                float2 node_2851 = (((float2(_move_u,_move_v)*node_5456.g)+o.uv0)*_Freq);
                float2 node_7195 = floor(node_2851).rg;
                float node_5654 = (node_7195.r+(node_7195.g*57.0));
                float node_1124 = 473.5;
                float2 node_9624 = frac(node_2851);
                float2 node_1898 = ((3.0-(node_9624*2.0))*node_9624*node_9624).rg;
                float2 node_998 = (((float2(_move2_u,_move2_v)*node_598.g)+(o.uv0*(lerp(lerp(frac((sin(node_5654)*node_1124)),frac((sin((1.0+node_5654))*node_1124)),node_1898.r),lerp(frac((sin((57.0+node_5654))*node_1124)),frac((sin((58.0+node_5654))*node_1124)),node_1898.r),node_1898.g)*_amp)))*_freq2);
                float2 node_6650 = floor(node_998).rg;
                float node_7173 = (node_6650.r+(node_6650.g*57.0));
                float2 node_1402 = frac(node_998);
                float2 node_7472 = ((3.0-(node_1402*2.0))*node_1402*node_1402).rg;
                float node_1649 = lerp(lerp(frac((node_854*sin(node_7173))),frac((node_854*sin((1.0+node_7173)))),node_7472.r),lerp(frac((node_854*sin((57.0+node_7173)))),frac((node_854*sin((58.0+node_7173)))),node_7472.r),node_7472.g);
                float3 node_9943 = ((node_1649*_amp_02)*v.normal);
                v.vertex.xyz += node_9943;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                float Tessellation(TessVertex v){
                    return lerp(_Tess,1.0,saturate(pow((distance(_WorldSpaceCameraPos,mul(unity_ObjectToWorld, v.vertex).rgb)/_Tess_Distance),_Tess_Dist_Power)));
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
