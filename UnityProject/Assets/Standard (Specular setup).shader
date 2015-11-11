// Compiled shader for PC, Mac & Linux Standalone, uncompressed size: 242.1KB

// Skipping shader variants that would not be included into build of current scene.

Shader "Standard (Specular setup)" {
Properties {
 _Color ("Color", Color) = (1,1,1,1)
 _MainTex ("Albedo", 2D) = "white" { }
 _Cutoff ("Alpha Cutoff", Range(0,1)) = 0.5
 _Glossiness ("Smoothness", Range(0,1)) = 0.5
 _SpecColor ("Specular", Color) = (0.2,0.2,0.2,1)
 _SpecGlossMap ("Specular", 2D) = "white" { }
 _BumpScale ("Scale", Float) = 1
 _BumpMap ("Normal Map", 2D) = "bump" { }
 _Parallax ("Height Scale", Range(0.005,0.08)) = 0.02
 _ParallaxMap ("Height Map", 2D) = "black" { }
 _OcclusionStrength ("Strength", Range(0,1)) = 1
 _OcclusionMap ("Occlusion", 2D) = "white" { }
 _EmissionColor ("Color", Color) = (0,0,0,1)
 _EmissionMap ("Emission", 2D) = "white" { }
 _DetailMask ("Detail Mask", 2D) = "white" { }
 _DetailAlbedoMap ("Detail Albedo x2", 2D) = "grey" { }
 _DetailNormalMapScale ("Scale", Float) = 1
 _DetailNormalMap ("Normal Map", 2D) = "bump" { }
[Enum(UV0,0,UV1,1)]  _UVSec ("UV Set for secondary textures", Float) = 0
[HideInInspector]  _Mode ("__mode", Float) = 0
[HideInInspector]  _SrcBlend ("__src", Float) = 1
[HideInInspector]  _DstBlend ("__dst", Float) = 0
[HideInInspector]  _ZWrite ("__zw", Float) = 1
}
SubShader { 
 LOD 300
 Tags { "RenderType"="Opaque" "PerformanceChecks"="False" }


 // Stats for Vertex shader:
 //        d3d9 : 55 avg math (34..77)
 // Stats for Fragment shader:
 //        d3d9 : 154 avg math (148..161), 7 avg texture (6..8), 5 branch
 Pass {
  Name "FORWARD"
  Tags { "LIGHTMODE"="ForwardBase" "SHADOWSUPPORT"="true" "RenderType"="Opaque" "PerformanceChecks"="False" }
  ZWrite [_ZWrite]
  Blend [_SrcBlend] [_DstBlend]
  GpuProgramID 36701
Program "vp" {
SubProgram "d3d9 " {
// Stats: 34 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 16 [_DetailAlbedoMap_ST]
Vector 15 [_MainTex_ST]
Float 17 [_UVSec]
Vector 10 [_WorldSpaceCameraPos]
Vector 13 [unity_SHBb]
Vector 12 [unity_SHBg]
Vector 11 [unity_SHBr]
Vector 14 [unity_SHC]
"vs_3_0
def c18, 0, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6
dcl_texcoord8 o7.xyz
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c15, c15.zwzw
abs r0.x, c17.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c16.xyxy, c16
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c10
mov o7.xyz, r0
mul r0.xyz, c8, v1.y
mad r0.xyz, c7, v1.x, r0
mad r0.xyz, c9, v1.z, r0
nrm r1.xyz, r0
mul r0.x, r1.y, r1.y
mad r0.x, r1.x, r1.x, -r0.x
mul r2, r1.yzzx, r1.xyzz
mov o5.xyz, r1
dp4 r1.x, c11, r2
dp4 r1.y, c12, r2
dp4 r1.z, c13, r2
mad o6.xyz, c14, r0.x, r1
mov o3, c18.x
mov o4, c18.x
mov o5.w, c18.x
mov o6.w, c18.x

"
}
SubProgram "d3d9 " {
// Stats: 40 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 18 [_DetailAlbedoMap_ST]
Vector 17 [_MainTex_ST]
Vector 11 [_ProjectionParams]
Vector 12 [_ScreenParams]
Float 19 [_UVSec]
Vector 10 [_WorldSpaceCameraPos]
Vector 15 [unity_SHBb]
Vector 14 [unity_SHBg]
Vector 13 [unity_SHBr]
Vector 16 [unity_SHC]
"vs_3_0
def c20, 0.5, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6
dcl_texcoord6 o7
dcl_texcoord8 o8.xyz
mad o1.xy, v2, c17, c17.zwzw
abs r0.x, c19.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c18.xyxy, c18
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c10
mov o8.xyz, r0
dp4 r0.y, c1, v0
mul r1.x, r0.y, c11.x
mul r1.w, r1.x, c20.x
dp4 r0.x, c0, v0
dp4 r0.w, c3, v0
mul r1.xz, r0.xyww, c20.x
mad o7.xy, r1.z, c12.zwzw, r1.xwzw
mul r1.xyz, c8, v1.y
mad r1.xyz, c7, v1.x, r1
mad r1.xyz, c9, v1.z, r1
nrm r2.xyz, r1
mul r1.x, r2.y, r2.y
mad r1.x, r2.x, r2.x, -r1.x
mul r3, r2.yzzx, r2.xyzz
mov o5.xyz, r2
dp4 r2.x, c13, r3
dp4 r2.y, c14, r3
dp4 r2.z, c15, r3
mad o6.xyz, c16, r1.x, r2
dp4 r0.z, c2, v0
mov o0, r0
mov o7.zw, r0
mov o3, c20.y
mov o4, c20.y
mov o5.w, c20.y
mov o6.w, c20.y

"
}
SubProgram "d3d9 " {
// Stats: 61 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "VERTEXLIGHT_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 8 [_Object2World] 3
Matrix 11 [_World2Object] 3
Matrix 4 [glstate_matrix_mvp]
Vector 24 [_DetailAlbedoMap_ST]
Vector 23 [_MainTex_ST]
Float 25 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 18 [unity_4LightAtten0]
Vector 15 [unity_4LightPosX0]
Vector 16 [unity_4LightPosY0]
Vector 17 [unity_4LightPosZ0]
Vector 0 [unity_LightColor0]
Vector 1 [unity_LightColor1]
Vector 2 [unity_LightColor2]
Vector 3 [unity_LightColor3]
Vector 21 [unity_SHBb]
Vector 20 [unity_SHBg]
Vector 19 [unity_SHBr]
Vector 22 [unity_SHC]
"vs_3_0
def c26, 0, 1, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6
dcl_texcoord8 o7.xyz
dp4 o0.x, c4, v0
dp4 o0.y, c5, v0
dp4 o0.z, c6, v0
dp4 o0.w, c7, v0
mad o1.xy, v2, c23, c23.zwzw
abs r0.x, c25.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c24.xyxy, c24
dp4 r0.x, c8, v0
dp4 r0.y, c9, v0
dp4 r0.z, c10, v0
add o2.xyz, r0, -c14
add r1, -r0.z, c17
mov o7.xyz, r0
add r2, -r0.x, c15
add r0, -r0.y, c16
mul r3.xyz, c12, v1.y
mad r3.xyz, c11, v1.x, r3
mad r3.xyz, c13, v1.z, r3
nrm r4.xyz, r3
mul r3, r0, r4.y
mul r0, r0, r0
mad r0, r2, r2, r0
mad r2, r2, r4.x, r3
mad r2, r1, r4.z, r2
mad r0, r1, r1, r0
rsq r1.x, r0.x
rsq r1.y, r0.y
rsq r1.z, r0.z
rsq r1.w, r0.w
mov r3.y, c26.y
mad r0, r0, c18, r3.y
mul r1, r1, r2
max r1, r1, c26.x
rcp r2.x, r0.x
rcp r2.y, r0.y
rcp r2.z, r0.z
rcp r2.w, r0.w
mul r0, r1, r2
mul r1.xyz, r0.y, c1
mad r1.xyz, c0, r0.x, r1
mad r0.xyz, c2, r0.z, r1
mad r0.xyz, c3, r0.w, r0
mul r0.w, r4.y, r4.y
mad r0.w, r4.x, r4.x, -r0.w
mul r1, r4.yzzx, r4.xyzz
mov o5.xyz, r4
dp4 r2.x, c19, r1
dp4 r2.y, c20, r1
dp4 r2.z, c21, r1
mad r1.xyz, c22, r0.w, r2
add o6.xyz, r0, r1
mov o3, c26.x
mov o4, c26.x
mov o5.w, c26.x
mov o6.w, c26.x

"
}
SubProgram "d3d9 " {
// Stats: 67 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "VERTEXLIGHT_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 8 [_Object2World] 3
Matrix 11 [_World2Object] 3
Matrix 4 [glstate_matrix_mvp]
Vector 26 [_DetailAlbedoMap_ST]
Vector 25 [_MainTex_ST]
Vector 15 [_ProjectionParams]
Vector 16 [_ScreenParams]
Float 27 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 20 [unity_4LightAtten0]
Vector 17 [unity_4LightPosX0]
Vector 18 [unity_4LightPosY0]
Vector 19 [unity_4LightPosZ0]
Vector 0 [unity_LightColor0]
Vector 1 [unity_LightColor1]
Vector 2 [unity_LightColor2]
Vector 3 [unity_LightColor3]
Vector 23 [unity_SHBb]
Vector 22 [unity_SHBg]
Vector 21 [unity_SHBr]
Vector 24 [unity_SHC]
"vs_3_0
def c28, 0.5, 0, 1, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6
dcl_texcoord6 o7
dcl_texcoord8 o8.xyz
mad o1.xy, v2, c25, c25.zwzw
abs r0.x, c27.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c26.xyxy, c26
dp4 r0.x, c8, v0
dp4 r0.y, c9, v0
dp4 r0.z, c10, v0
add o2.xyz, r0, -c14
dp4 r1.y, c5, v0
mul r0.w, r1.y, c15.x
mul r2.w, r0.w, c28.x
dp4 r1.x, c4, v0
dp4 r1.w, c7, v0
mul r2.xz, r1.xyww, c28.x
mad o7.xy, r2.z, c16.zwzw, r2.xwzw
add r2, -r0.z, c19
mov o8.xyz, r0
add r3, -r0.x, c17
add r0, -r0.y, c18
mul r4.xyz, c12, v1.y
mad r4.xyz, c11, v1.x, r4
mad r4.xyz, c13, v1.z, r4
nrm r5.xyz, r4
mul r4, r0, r5.y
mul r0, r0, r0
mad r0, r3, r3, r0
mad r3, r3, r5.x, r4
mad r3, r2, r5.z, r3
mad r0, r2, r2, r0
rsq r2.x, r0.x
rsq r2.y, r0.y
rsq r2.z, r0.z
rsq r2.w, r0.w
mov r4.z, c28.z
mad r0, r0, c20, r4.z
mul r2, r2, r3
max r2, r2, c28.y
rcp r3.x, r0.x
rcp r3.y, r0.y
rcp r3.z, r0.z
rcp r3.w, r0.w
mul r0, r2, r3
mul r2.xyz, r0.y, c1
mad r2.xyz, c0, r0.x, r2
mad r0.xyz, c2, r0.z, r2
mad r0.xyz, c3, r0.w, r0
mul r0.w, r5.y, r5.y
mad r0.w, r5.x, r5.x, -r0.w
mul r2, r5.yzzx, r5.xyzz
mov o5.xyz, r5
dp4 r3.x, c21, r2
dp4 r3.y, c22, r2
dp4 r3.z, c23, r2
mad r2.xyz, c24, r0.w, r3
add o6.xyz, r0, r2
dp4 r1.z, c6, v0
mov o0, r1
mov o7.zw, r1
mov o3, c28.y
mov o4, c28.y
mov o5.w, c28.y
mov o6.w, c28.y

"
}
SubProgram "d3d9 " {
// Stats: 44 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "_NORMALMAP" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 16 [_DetailAlbedoMap_ST]
Vector 15 [_MainTex_ST]
Float 17 [_UVSec]
Vector 10 [_WorldSpaceCameraPos]
Vector 13 [unity_SHBb]
Vector 12 [unity_SHBg]
Vector 11 [unity_SHBr]
Vector 14 [unity_SHC]
"vs_3_0
def c18, 0, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6
dcl_texcoord8 o7.xyz
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c15, c15.zwzw
abs r0.x, c17.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c16.xyxy, c16
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c10
mov o7.xyz, r0
dp3 r0.x, c4, v4
dp3 r0.y, c5, v4
dp3 r0.z, c6, v4
nrm r1.xyz, r0
mul r0.xyz, c8, v1.y
mad r0.xyz, c7, v1.x, r0
mad r0.xyz, c9, v1.z, r0
nrm r2.xyz, r0
mul r0.xyz, r1.yzxw, r2.zxyw
mad r0.xyz, r2.yzxw, r1.zxyw, -r0
mov o3.xyz, r1
mul o4.xyz, r0, v4.w
mul r0.x, r2.y, r2.y
mad r0.x, r2.x, r2.x, -r0.x
mul r1, r2.yzzx, r2.xyzz
mov o5.xyz, r2
dp4 r2.x, c11, r1
dp4 r2.y, c12, r1
dp4 r2.z, c13, r1
mad o6.xyz, c14, r0.x, r2
mov o3.w, c18.x
mov o4.w, c18.x
mov o5.w, c18.x
mov o6.w, c18.x

"
}
SubProgram "d3d9 " {
// Stats: 50 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "_NORMALMAP" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 18 [_DetailAlbedoMap_ST]
Vector 17 [_MainTex_ST]
Vector 11 [_ProjectionParams]
Vector 12 [_ScreenParams]
Float 19 [_UVSec]
Vector 10 [_WorldSpaceCameraPos]
Vector 15 [unity_SHBb]
Vector 14 [unity_SHBg]
Vector 13 [unity_SHBr]
Vector 16 [unity_SHC]
"vs_3_0
def c20, 0.5, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6
dcl_texcoord6 o7
dcl_texcoord8 o8.xyz
mad o1.xy, v2, c17, c17.zwzw
abs r0.x, c19.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c18.xyxy, c18
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c10
mov o8.xyz, r0
dp3 r0.x, c4, v4
dp3 r0.y, c5, v4
dp3 r0.z, c6, v4
nrm r1.xyz, r0
mul r0.xyz, c8, v1.y
mad r0.xyz, c7, v1.x, r0
mad r0.xyz, c9, v1.z, r0
nrm r2.xyz, r0
mul r0.xyz, r1.yzxw, r2.zxyw
mad r0.xyz, r2.yzxw, r1.zxyw, -r0
mov o3.xyz, r1
mul o4.xyz, r0, v4.w
dp4 r0.y, c1, v0
mul r1.x, r0.y, c11.x
mul r1.w, r1.x, c20.x
dp4 r0.x, c0, v0
dp4 r0.w, c3, v0
mul r1.xz, r0.xyww, c20.x
mad o7.xy, r1.z, c12.zwzw, r1.xwzw
mul r1.x, r2.y, r2.y
mad r1.x, r2.x, r2.x, -r1.x
mul r3, r2.yzzx, r2.xyzz
mov o5.xyz, r2
dp4 r2.x, c13, r3
dp4 r2.y, c14, r3
dp4 r2.z, c15, r3
mad o6.xyz, c16, r1.x, r2
dp4 r0.z, c2, v0
mov o0, r0
mov o7.zw, r0
mov o3.w, c20.y
mov o4.w, c20.y
mov o5.w, c20.y
mov o6.w, c20.y

"
}
SubProgram "d3d9 " {
// Stats: 71 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "VERTEXLIGHT_ON" "_NORMALMAP" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 8 [_Object2World] 3
Matrix 11 [_World2Object] 3
Matrix 4 [glstate_matrix_mvp]
Vector 24 [_DetailAlbedoMap_ST]
Vector 23 [_MainTex_ST]
Float 25 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 18 [unity_4LightAtten0]
Vector 15 [unity_4LightPosX0]
Vector 16 [unity_4LightPosY0]
Vector 17 [unity_4LightPosZ0]
Vector 0 [unity_LightColor0]
Vector 1 [unity_LightColor1]
Vector 2 [unity_LightColor2]
Vector 3 [unity_LightColor3]
Vector 21 [unity_SHBb]
Vector 20 [unity_SHBg]
Vector 19 [unity_SHBr]
Vector 22 [unity_SHC]
"vs_3_0
def c26, 0, 1, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6
dcl_texcoord8 o7.xyz
dp4 o0.x, c4, v0
dp4 o0.y, c5, v0
dp4 o0.z, c6, v0
dp4 o0.w, c7, v0
mad o1.xy, v2, c23, c23.zwzw
abs r0.x, c25.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c24.xyxy, c24
dp4 r0.x, c8, v0
dp4 r0.y, c9, v0
dp4 r0.z, c10, v0
add o2.xyz, r0, -c14
dp3 r1.x, c8, v4
dp3 r1.y, c9, v4
dp3 r1.z, c10, v4
nrm r2.xyz, r1
mul r1.xyz, c12, v1.y
mad r1.xyz, c11, v1.x, r1
mad r1.xyz, c13, v1.z, r1
nrm r3.xyz, r1
mul r1.xyz, r2.yzxw, r3.zxyw
mad r1.xyz, r3.yzxw, r2.zxyw, -r1
mov o3.xyz, r2
mul o4.xyz, r1, v4.w
add r1, -r0.x, c15
mov o7.xyz, r0
add r2, -r0.y, c16
add r0, -r0.z, c17
mul r4, r3.y, r2
mul r2, r2, r2
mad r2, r1, r1, r2
mad r1, r1, r3.x, r4
mad r1, r0, r3.z, r1
mad r0, r0, r0, r2
rsq r2.x, r0.x
rsq r2.y, r0.y
rsq r2.z, r0.z
rsq r2.w, r0.w
mov r4.y, c26.y
mad r0, r0, c18, r4.y
mul r1, r1, r2
max r1, r1, c26.x
rcp r2.x, r0.x
rcp r2.y, r0.y
rcp r2.z, r0.z
rcp r2.w, r0.w
mul r0, r1, r2
mul r1.xyz, r0.y, c1
mad r1.xyz, c0, r0.x, r1
mad r0.xyz, c2, r0.z, r1
mad r0.xyz, c3, r0.w, r0
mul r0.w, r3.y, r3.y
mad r0.w, r3.x, r3.x, -r0.w
mul r1, r3.yzzx, r3.xyzz
mov o5.xyz, r3
dp4 r2.x, c19, r1
dp4 r2.y, c20, r1
dp4 r2.z, c21, r1
mad r1.xyz, c22, r0.w, r2
add o6.xyz, r0, r1
mov o3.w, c26.x
mov o4.w, c26.x
mov o5.w, c26.x
mov o6.w, c26.x

"
}
SubProgram "d3d9 " {
// Stats: 77 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "VERTEXLIGHT_ON" "_NORMALMAP" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 8 [_Object2World] 3
Matrix 11 [_World2Object] 3
Matrix 4 [glstate_matrix_mvp]
Vector 26 [_DetailAlbedoMap_ST]
Vector 25 [_MainTex_ST]
Vector 15 [_ProjectionParams]
Vector 16 [_ScreenParams]
Float 27 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 20 [unity_4LightAtten0]
Vector 17 [unity_4LightPosX0]
Vector 18 [unity_4LightPosY0]
Vector 19 [unity_4LightPosZ0]
Vector 0 [unity_LightColor0]
Vector 1 [unity_LightColor1]
Vector 2 [unity_LightColor2]
Vector 3 [unity_LightColor3]
Vector 23 [unity_SHBb]
Vector 22 [unity_SHBg]
Vector 21 [unity_SHBr]
Vector 24 [unity_SHC]
"vs_3_0
def c28, 0.5, 0, 1, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6
dcl_texcoord6 o7
dcl_texcoord8 o8.xyz
mad o1.xy, v2, c25, c25.zwzw
abs r0.x, c27.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c26.xyxy, c26
dp4 r0.x, c8, v0
dp4 r0.y, c9, v0
dp4 r0.z, c10, v0
add o2.xyz, r0, -c14
dp3 r1.x, c8, v4
dp3 r1.y, c9, v4
dp3 r1.z, c10, v4
nrm r2.xyz, r1
mul r1.xyz, c12, v1.y
mad r1.xyz, c11, v1.x, r1
mad r1.xyz, c13, v1.z, r1
nrm r3.xyz, r1
mul r1.xyz, r2.yzxw, r3.zxyw
mad r1.xyz, r3.yzxw, r2.zxyw, -r1
mov o3.xyz, r2
mul o4.xyz, r1, v4.w
dp4 r1.y, c5, v0
mul r0.w, r1.y, c15.x
mul r2.w, r0.w, c28.x
dp4 r1.x, c4, v0
dp4 r1.w, c7, v0
mul r2.xz, r1.xyww, c28.x
mad o7.xy, r2.z, c16.zwzw, r2.xwzw
add r2, -r0.x, c17
mov o8.xyz, r0
add r4, -r0.y, c18
add r0, -r0.z, c19
mul r5, r3.y, r4
mul r4, r4, r4
mad r4, r2, r2, r4
mad r2, r2, r3.x, r5
mad r2, r0, r3.z, r2
mad r0, r0, r0, r4
rsq r4.x, r0.x
rsq r4.y, r0.y
rsq r4.z, r0.z
rsq r4.w, r0.w
mov r5.z, c28.z
mad r0, r0, c20, r5.z
mul r2, r2, r4
max r2, r2, c28.y
rcp r4.x, r0.x
rcp r4.y, r0.y
rcp r4.z, r0.z
rcp r4.w, r0.w
mul r0, r2, r4
mul r2.xyz, r0.y, c1
mad r2.xyz, c0, r0.x, r2
mad r0.xyz, c2, r0.z, r2
mad r0.xyz, c3, r0.w, r0
mul r0.w, r3.y, r3.y
mad r0.w, r3.x, r3.x, -r0.w
mul r2, r3.yzzx, r3.xyzz
mov o5.xyz, r3
dp4 r3.x, c21, r2
dp4 r3.y, c22, r2
dp4 r3.z, c23, r2
mad r2.xyz, c24, r0.w, r3
add o6.xyz, r0, r2
dp4 r1.z, c6, v0
mov o0, r1
mov o7.zw, r1
mov o3.w, c28.y
mov o4.w, c28.y
mov o5.w, c28.y
mov o6.w, c28.y

"
}
}
Program "fp" {
SubProgram "d3d9 " {
// Stats: 148 math, 6 textures, 5 branches
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
Vector 15 [_Color]
Float 16 [_Glossiness]
Vector 12 [_LightColor0]
Float 17 [_OcclusionStrength]
Vector 13 [_SpecColor]
Vector 0 [_WorldSpaceLightPos0]
Vector 14 [unity_LightGammaCorrectionConsts]
Vector 3 [unity_SHAb]
Vector 2 [unity_SHAg]
Vector 1 [unity_SHAr]
Vector 4 [unity_SpecCube0_BoxMax]
Vector 5 [unity_SpecCube0_BoxMin]
Vector 7 [unity_SpecCube0_HDR]
Vector 6 [unity_SpecCube0_ProbePosition]
Vector 8 [unity_SpecCube1_BoxMax]
Vector 9 [unity_SpecCube1_BoxMin]
Vector 11 [unity_SpecCube1_HDR]
Vector 10 [unity_SpecCube1_ProbePosition]
SetTexture 0 [unity_SpecCube0] CUBE 0
SetTexture 1 [unity_SpecCube1] CUBE 1
SetTexture 2 [_MainTex] 2D 2
SetTexture 3 [_OcclusionMap] 2D 3
"ps_3_0
def c18, 1, 0, 0.5, 0.75
def c19, 7, 0.999989986, 0.00100000005, 31.622776
def c20, 9.99999975e-005, 0.967999995, 0.0299999993, 10
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord4_pp v2.xyz
dcl_texcoord5_pp v3.xyz
dcl_texcoord8_pp v4.xyz
dcl_cube s0
dcl_cube s1
dcl_2d s2
dcl_2d s3
nrm_pp r0.xyz, v2
dp3_pp r1.x, v1, v1
rsq_pp r1.x, r1.x
mul_pp r1.yzw, r1.x, v1.xxyz
texld r2, v0, s2
mul_pp r2.xyz, r2, c15
max_pp r2.w, c13.x, c13.y
max_pp r3.x, r2.w, c13.z
add_pp r2.w, -r3.x, c18.x
mul_pp r2.xyz, r2.w, r2
dp3_pp r3.x, r0, c0
max_pp r4.x, r3.x, c18.y
texld_pp r3, v0, s3
mov r5.xyz, c18
add_pp r3.x, r5.x, -c17.x
mad_pp r3.x, r3.y, c17.x, r3.x
mov r0.w, c18.x
dp4_pp r6.x, c1, r0
dp4_pp r6.y, c2, r0
dp4_pp r6.z, c3, r0
add_pp r3.yzw, r6.xxyz, v3.xxyz
dp3 r0.w, r1.yzww, r0
add r0.w, r0.w, r0.w
mad_pp r4.yzw, r0.xxyz, -r0.w, r1
if_lt -c6.w, r5.y
nrm_pp r6.xyz, r4.yzww
add r7.xyz, c4, -v4
rcp r8.x, r6.x
rcp r8.y, r6.y
rcp r8.z, r6.z
mul_pp r7.xyz, r7, r8
add r9.xyz, c5, -v4
mul_pp r8.xyz, r8, r9
cmp_pp r7.xyz, -r6, r8, r7
min_pp r0.w, r7.y, r7.x
min_pp r5.w, r7.z, r0.w
mov r7.xyz, c5
add r7.xyz, r7, c4
mad r8.xyz, r7, r5.z, -c6
add r8.xyz, r8, v4
mad r6.xyz, r6, r5.w, r8
mad_pp r6.xyz, r7, -c18.z, r6
else
mov_pp r6.xyz, r4.yzww
endif
add_pp r0.w, r5.x, -c16.x
pow_pp r5.w, r0.w, c18.w
mul_pp r6.w, r5.w, c19.x
texldl_pp r7, r6, s0
pow_pp r5.w, r7.w, c7.y
mul_pp r5.w, r5.w, c7.x
mul_pp r8.xyz, r7, r5.w
mov r7.w, c5.w
if_lt r7.w, c19.y
if_lt -c10.w, r5.y
nrm_pp r9.xyz, r4.yzww
add r10.xyz, c8, -v4
rcp r11.x, r9.x
rcp r11.y, r9.y
rcp r11.z, r9.z
mul_pp r10.xyz, r10, r11
add r12.xyz, c9, -v4
mul_pp r11.xyz, r11, r12
cmp_pp r10.xyz, -r9, r11, r10
min_pp r5.y, r10.y, r10.x
min_pp r7.w, r10.z, r5.y
mov r10.xyz, c8
add r10.xyz, r10, c9
mad r11.xyz, r10, r5.z, -c10
add r11.xyz, r11, v4
mad r9.xyz, r9, r7.w, r11
mad_pp r6.xyz, r10, -c18.z, r9
else
mov_pp r6.xyz, r4.yzww
endif
texldl_pp r6, r6, s1
pow_pp r4.y, r6.w, c11.y
mul_pp r4.y, r4.y, c11.x
mul_pp r4.yzw, r6.xxyz, r4.y
mad r5.yzw, r5.w, r7.xxyz, -r4
mad_pp r8.xyz, c5.w, r5.yzww, r4.yzww
endif
mul_pp r4.yzw, r3.x, r8.xxyz
mad_pp r5.yzw, v1.xxyz, -r1.x, c0.xxyz
dp3_pp r1.x, r5.yzww, r5.yzww
add r6.x, -r1.x, c19.z
rsq_pp r1.x, r1.x
cmp_pp r1.x, r6.x, c19.w, r1.x
mul_pp r5.yzw, r1.x, r5
dp3_pp r1.x, r0, r5.yzww
max_pp r6.x, r1.x, c18.y
dp3_pp r0.x, r0, -r1.yzww
max_pp r1.x, r0.x, c18.y
dp3_pp r0.x, c0, r5.yzww
max_pp r1.y, r0.x, c18.y
mul_pp r0.x, r0.w, r0.w
mul_pp r0.y, r0.x, c14.w
mad_pp r0.x, r0.x, -c14.w, r5.x
mad_pp r0.z, r4.x, r0.x, r0.y
mad_pp r0.x, r1.x, r0.x, r0.y
mad r0.x, r0.z, r0.x, c20.x
rcp_pp r0.x, r0.x
add_pp r0.y, -r0.w, c18.x
mad_pp r0.y, r0.y, c20.y, c20.z
log_pp r0.y, r0.y
rcp r0.y, r0.y
mul_pp r0.y, r0.y, c20.w
mul_pp r0.z, r0.y, r0.y
mad_pp r0.y, r0.y, r0.y, c18.x
mul_pp r0.y, r0.y, c14.y
pow_pp r1.z, r6.x, r0.z
mul_pp r0.y, r0.y, r1.z
add_pp r0.z, -r4.x, c18.x
mul_pp r1.z, r0.z, r0.z
mul_pp r1.z, r1.z, r1.z
mul_pp r0.z, r0.z, r1.z
add_pp r1.x, -r1.x, c18.x
mul_pp r1.z, r1.x, r1.x
mul_pp r1.z, r1.z, r1.z
mul_pp r1.x, r1.x, r1.z
mul_pp r1.z, r1.y, r1.y
dp2add_pp r0.w, r1.z, r0.w, -c18.z
mad_pp r0.z, r0.w, r0.z, c18.x
mad_pp r0.w, r0.w, r1.x, c18.x
mul_pp r0.xz, r0.yyww, r0
mul_pp r0.xy, r4.x, r0.xzzw
mul_pp r0.x, r0.x, c14.x
add_pp r0.z, -r2.w, c18.x
add_sat_pp r0.z, r0.z, c16.x
mul_pp r5.yzw, r0.y, c12.xxyz
mad_pp r3.xyz, r3.yzww, r3.x, r5.yzww
mul_pp r5.yzw, r0.x, c12.xxyz
cmp_pp r0.xyw, r0.x, r5.yzzw, c18.y
add_pp r1.y, -r1.y, c18.x
mul_pp r1.z, r1.y, r1.y
mul_pp r1.z, r1.z, r1.z
mul_pp r1.y, r1.y, r1.z
lrp_pp r6.xyz, r1.y, r5.x, c13
mul_pp r0.xyw, r0, r6.xyzz
mad_pp r0.xyw, r2.xyzz, r3.xyzz, r0
lrp_pp r2.xyz, r1.x, r0.z, c13
mad_pp oC0.xyz, r4.yzww, r2, r0.xyww
mov_pp oC0.w, c18.x

"
}
SubProgram "d3d9 " {
// Stats: 150 math, 7 textures, 5 branches
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
Vector 15 [_Color]
Float 16 [_Glossiness]
Vector 12 [_LightColor0]
Float 17 [_OcclusionStrength]
Vector 13 [_SpecColor]
Vector 0 [_WorldSpaceLightPos0]
Vector 14 [unity_LightGammaCorrectionConsts]
Vector 3 [unity_SHAb]
Vector 2 [unity_SHAg]
Vector 1 [unity_SHAr]
Vector 4 [unity_SpecCube0_BoxMax]
Vector 5 [unity_SpecCube0_BoxMin]
Vector 7 [unity_SpecCube0_HDR]
Vector 6 [unity_SpecCube0_ProbePosition]
Vector 8 [unity_SpecCube1_BoxMax]
Vector 9 [unity_SpecCube1_BoxMin]
Vector 11 [unity_SpecCube1_HDR]
Vector 10 [unity_SpecCube1_ProbePosition]
SetTexture 0 [unity_SpecCube0] CUBE 0
SetTexture 1 [unity_SpecCube1] CUBE 1
SetTexture 2 [_MainTex] 2D 2
SetTexture 3 [_OcclusionMap] 2D 3
SetTexture 4 [_ShadowMapTexture] 2D 4
"ps_3_0
def c18, 7, 0.999989986, 0.00100000005, 31.622776
def c19, 9.99999975e-005, 0.967999995, 0.0299999993, 10
def c20, 1, 0, 0.5, 0.75
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord4_pp v2.xyz
dcl_texcoord5_pp v3.xyz
dcl_texcoord6 v4
dcl_texcoord8_pp v5.xyz
dcl_cube s0
dcl_cube s1
dcl_2d s2
dcl_2d s3
dcl_2d s4
nrm_pp r0.xyz, v2
dp3_pp r1.x, v1, v1
rsq_pp r1.x, r1.x
mul_pp r1.yzw, r1.x, v1.xxyz
texld r2, v0, s2
mul_pp r2.xyz, r2, c15
max_pp r2.w, c13.x, c13.y
max_pp r3.x, r2.w, c13.z
add_pp r2.w, -r3.x, c20.x
mul_pp r2.xyz, r2.w, r2
dp3_pp r3.x, r0, c0
max_pp r4.x, r3.x, c20.y
texldp_pp r3, v4, s4
texld_pp r5, v0, s3
mov r6.xyz, c20
add_pp r3.y, r6.x, -c17.x
mad_pp r3.y, r5.y, c17.x, r3.y
mov r0.w, c20.x
dp4_pp r5.x, c1, r0
dp4_pp r5.y, c2, r0
dp4_pp r5.z, c3, r0
add_pp r4.yzw, r5.xxyz, v3.xxyz
mul_pp r3.xzw, r3.x, c12.xyyz
dp3 r0.w, r1.yzww, r0
add r0.w, r0.w, r0.w
mad_pp r5.xyz, r0, -r0.w, r1.yzww
if_lt -c6.w, r6.y
nrm_pp r7.xyz, r5
add r8.xyz, c4, -v5
rcp r9.x, r7.x
rcp r9.y, r7.y
rcp r9.z, r7.z
mul_pp r8.xyz, r8, r9
add r10.xyz, c5, -v5
mul_pp r9.xyz, r9, r10
cmp_pp r8.xyz, -r7, r9, r8
min_pp r0.w, r8.y, r8.x
min_pp r5.w, r8.z, r0.w
mov r8.xyz, c5
add r8.xyz, r8, c4
mad r9.xyz, r8, r6.z, -c6
add r9.xyz, r9, v5
mad r7.xyz, r7, r5.w, r9
mad_pp r7.xyz, r8, -c20.z, r7
else
mov_pp r7.xyz, r5
endif
add_pp r0.w, r6.x, -c16.x
pow_pp r5.w, r0.w, c20.w
mul_pp r7.w, r5.w, c18.x
texldl_pp r8, r7, s0
pow_pp r5.w, r8.w, c7.y
mul_pp r5.w, r5.w, c7.x
mul_pp r9.xyz, r8, r5.w
mov r6.w, c5.w
if_lt r6.w, c18.y
if_lt -c10.w, r6.y
nrm_pp r10.xyz, r5
add r11.xyz, c8, -v5
rcp r12.x, r10.x
rcp r12.y, r10.y
rcp r12.z, r10.z
mul_pp r11.xyz, r11, r12
add r13.xyz, c9, -v5
mul_pp r12.xyz, r12, r13
cmp_pp r11.xyz, -r10, r12, r11
min_pp r6.y, r11.y, r11.x
min_pp r8.w, r11.z, r6.y
mov r11.xyz, c8
add r11.xyz, r11, c9
mad r6.yzw, r11.xxyz, r6.z, -c10.xxyz
add r6.yzw, r6, v5.xxyz
mad r6.yzw, r10.xxyz, r8.w, r6
mad_pp r7.xyz, r11, -c20.z, r6.yzww
else
mov_pp r7.xyz, r5
endif
texldl_pp r7, r7, s1
pow_pp r5.x, r7.w, c11.y
mul_pp r5.x, r5.x, c11.x
mul_pp r5.xyz, r7, r5.x
mad r6.yzw, r5.w, r8.xxyz, -r5.xxyz
mad_pp r9.xyz, c5.w, r6.yzww, r5
endif
mul_pp r5.xyz, r3.y, r9
mad_pp r6.yzw, v1.xxyz, -r1.x, c0.xxyz
dp3_pp r1.x, r6.yzww, r6.yzww
add r5.w, -r1.x, c18.z
rsq_pp r1.x, r1.x
cmp_pp r1.x, r5.w, c18.w, r1.x
mul_pp r6.yzw, r1.x, r6
dp3_pp r1.x, r0, r6.yzww
max_pp r5.w, r1.x, c20.y
dp3_pp r0.x, r0, -r1.yzww
max_pp r1.x, r0.x, c20.y
dp3_pp r0.x, c0, r6.yzww
max_pp r1.y, r0.x, c20.y
mul_pp r0.x, r0.w, r0.w
mul_pp r0.y, r0.x, c14.w
mad_pp r0.x, r0.x, -c14.w, r6.x
mad_pp r0.z, r4.x, r0.x, r0.y
mad_pp r0.x, r1.x, r0.x, r0.y
mad r0.x, r0.z, r0.x, c19.x
rcp_pp r0.x, r0.x
add_pp r0.y, -r0.w, c20.x
mad_pp r0.y, r0.y, c19.y, c19.z
log_pp r0.y, r0.y
rcp r0.y, r0.y
mul_pp r0.y, r0.y, c19.w
mul_pp r0.z, r0.y, r0.y
mad_pp r0.y, r0.y, r0.y, c20.x
mul_pp r0.y, r0.y, c14.y
pow_pp r1.z, r5.w, r0.z
mul_pp r0.y, r0.y, r1.z
add_pp r0.z, -r4.x, c20.x
mul_pp r1.z, r0.z, r0.z
mul_pp r1.z, r1.z, r1.z
mul_pp r0.z, r0.z, r1.z
add_pp r1.x, -r1.x, c20.x
mul_pp r1.z, r1.x, r1.x
mul_pp r1.z, r1.z, r1.z
mul_pp r1.x, r1.x, r1.z
mul_pp r1.z, r1.y, r1.y
dp2add_pp r0.w, r1.z, r0.w, -c20.z
mad_pp r0.z, r0.w, r0.z, c20.x
mad_pp r0.w, r0.w, r1.x, c20.x
mul_pp r0.xz, r0.yyww, r0
mul_pp r0.x, r4.x, r0.x
mul_pp r0.x, r0.x, c14.x
max_pp r1.z, r0.x, c20.y
mul_pp r0.x, r4.x, r0.z
add_pp r0.y, -r2.w, c20.x
add_sat_pp r0.y, r0.y, c16.x
mul_pp r0.xzw, r0.x, r3
mad_pp r0.xzw, r4.yyzw, r3.y, r0
mul_pp r3.xyz, r3.xzww, r1.z
add_pp r1.y, -r1.y, c20.x
mul_pp r1.z, r1.y, r1.y
mul_pp r1.z, r1.z, r1.z
mul_pp r1.y, r1.y, r1.z
lrp_pp r4.xyz, r1.y, r6.x, c13
mul_pp r1.yzw, r3.xxyz, r4.xxyz
mad_pp r0.xzw, r2.xyyz, r0, r1.yyzw
lrp_pp r2.xyz, r1.x, r0.y, c13
mad_pp oC0.xyz, r5, r2, r0.xzww
mov_pp oC0.w, c20.x

"
}
SubProgram "d3d9 " {
// Stats: 159 math, 7 textures, 5 branches
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "_NORMALMAP" }
Float 16 [_BumpScale]
Vector 15 [_Color]
Float 17 [_Glossiness]
Vector 12 [_LightColor0]
Float 18 [_OcclusionStrength]
Vector 13 [_SpecColor]
Vector 0 [_WorldSpaceLightPos0]
Vector 14 [unity_LightGammaCorrectionConsts]
Vector 3 [unity_SHAb]
Vector 2 [unity_SHAg]
Vector 1 [unity_SHAr]
Vector 4 [unity_SpecCube0_BoxMax]
Vector 5 [unity_SpecCube0_BoxMin]
Vector 7 [unity_SpecCube0_HDR]
Vector 6 [unity_SpecCube0_ProbePosition]
Vector 8 [unity_SpecCube1_BoxMax]
Vector 9 [unity_SpecCube1_BoxMin]
Vector 11 [unity_SpecCube1_HDR]
Vector 10 [unity_SpecCube1_ProbePosition]
SetTexture 0 [unity_SpecCube0] CUBE 0
SetTexture 1 [unity_SpecCube1] CUBE 1
SetTexture 2 [_MainTex] 2D 2
SetTexture 3 [_BumpMap] 2D 3
SetTexture 4 [_OcclusionMap] 2D 4
"ps_3_0
def c19, 0.5, 0.75, 7, 0.999989986
def c20, 0.00100000005, 31.622776, 9.99999975e-005, 10
def c21, 0.967999995, 0.0299999993, 0, 0
def c22, 2, -1, 0, 1
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2.xyz
dcl_texcoord3_pp v3.xyz
dcl_texcoord4_pp v4.xyz
dcl_texcoord5_pp v5.xyz
dcl_texcoord8_pp v6.xyz
dcl_cube s0
dcl_cube s1
dcl_2d s2
dcl_2d s3
dcl_2d s4
texld_pp r0, v0, s3
mad_pp r0.xy, r0.wyzw, c22.x, c22.y
mul_pp r0.xy, r0, c16.x
dp2add_sat_pp r0.z, r0, r0, c22.z
add_pp r0.z, -r0.z, c22.w
rsq_pp r0.z, r0.z
rcp_pp r0.z, r0.z
mul_pp r1.xyz, r0.y, v3
mad_pp r0.xyw, r0.x, v2.xyzz, r1.xyzz
mad_pp r0.xyz, r0.z, v4, r0.xyww
nrm_pp r1.xyz, r0
dp3_pp r0.x, v1, v1
rsq_pp r0.x, r0.x
mul_pp r0.yzw, r0.x, v1.xxyz
texld r2, v0, s2
mul_pp r2.xyz, r2, c15
max_pp r2.w, c13.x, c13.y
max_pp r3.x, r2.w, c13.z
add_pp r2.w, -r3.x, c22.w
mul_pp r2.xyz, r2.w, r2
dp3_pp r3.x, r1, c0
max_pp r4.x, r3.x, c22.z
texld_pp r3, v0, s4
mov r3.zw, c22
add_pp r3.x, r3.w, -c18.x
mad_pp r3.x, r3.y, c18.x, r3.x
mov r1.w, c22.w
dp4_pp r5.x, c1, r1
dp4_pp r5.y, c2, r1
dp4_pp r5.z, c3, r1
add_pp r4.yzw, r5.xxyz, v5.xxyz
dp3 r1.w, r0.yzww, r1
add r1.w, r1.w, r1.w
mad_pp r5.xyz, r1, -r1.w, r0.yzww
if_lt -c6.w, r3.z
nrm_pp r6.xyz, r5
add r7.xyz, c4, -v6
rcp r8.x, r6.x
rcp r8.y, r6.y
rcp r8.z, r6.z
mul_pp r7.xyz, r7, r8
add r9.xyz, c5, -v6
mul_pp r8.xyz, r8, r9
cmp_pp r7.xyz, -r6, r8, r7
min_pp r1.w, r7.y, r7.x
min_pp r3.y, r7.z, r1.w
mov r7.xyz, c5
add r7.xyz, r7, c4
mov r8.x, c19.x
mad r8.xyz, r7, r8.x, -c6
add r8.xyz, r8, v6
mad r6.xyz, r6, r3.y, r8
mad_pp r6.xyz, r7, -c19.x, r6
else
mov_pp r6.xyz, r5
endif
add_pp r1.w, r3.w, -c17.x
pow_pp r3.y, r1.w, c19.y
mul_pp r6.w, r3.y, c19.z
texldl_pp r7, r6, s0
pow_pp r3.y, r7.w, c7.y
mul_pp r3.y, r3.y, c7.x
mul_pp r8.xyz, r7, r3.y
mov r9.xw, c19
if_lt c5.w, r9.w
if_lt -c10.w, r3.z
nrm_pp r10.xyz, r5
add r9.yzw, c8.xxyz, -v6.xxyz
rcp r11.x, r10.x
rcp r11.y, r10.y
rcp r11.z, r10.z
mul_pp r9.yzw, r9, r11.xxyz
add r12.xyz, c9, -v6
mul_pp r11.xyz, r11, r12
cmp_pp r9.yzw, -r10.xxyz, r11.xxyz, r9
min_pp r3.z, r9.z, r9.y
min_pp r5.w, r9.w, r3.z
mov r11.xyz, c8
add r9.yzw, r11.xxyz, c9.xxyz
mad r11.xyz, r9.yzww, r9.x, -c10
add r11.xyz, r11, v6
mad r10.xyz, r10, r5.w, r11
mad_pp r6.xyz, r9.yzww, -c19.x, r10
else
mov_pp r6.xyz, r5
endif
texldl_pp r5, r6, s1
pow_pp r3.z, r5.w, c11.y
mul_pp r3.z, r3.z, c11.x
mul_pp r5.xyz, r5, r3.z
mad r6.xyz, r3.y, r7, -r5
mad_pp r8.xyz, c5.w, r6, r5
endif
mul_pp r5.xyz, r3.x, r8
mad_pp r6.xyz, v1, -r0.x, c0
dp3_pp r0.x, r6, r6
add r3.y, -r0.x, c20.x
rsq_pp r0.x, r0.x
cmp_pp r0.x, r3.y, c20.y, r0.x
mul_pp r6.xyz, r0.x, r6
dp3_pp r0.x, r1, r6
max_pp r3.y, r0.x, c22.z
dp3_pp r0.x, r1, -r0.yzww
max_pp r1.x, r0.x, c22.z
dp3_pp r0.x, c0, r6
max_pp r1.y, r0.x, c22.z
mul_pp r0.x, r1.w, r1.w
mul_pp r0.y, r0.x, c14.w
mad_pp r0.x, r0.x, -c14.w, r3.w
mad_pp r0.z, r4.x, r0.x, r0.y
mad_pp r0.x, r1.x, r0.x, r0.y
mad r0.x, r0.z, r0.x, c20.z
rcp_pp r0.x, r0.x
add_pp r0.y, -r1.w, c22.w
mad_pp r0.y, r0.y, c21.x, c21.y
log_pp r0.y, r0.y
rcp r0.y, r0.y
mul_pp r0.y, r0.y, c20.w
mul_pp r0.z, r0.y, r0.y
mad_pp r0.y, r0.y, r0.y, c22.w
mul_pp r0.y, r0.y, c14.y
pow_pp r1.z, r3.y, r0.z
add_pp r0.z, -r4.x, c22.w
mul_pp r0.w, r0.z, r0.z
mul_pp r0.w, r0.w, r0.w
mul_pp r0.z, r0.z, r0.w
add_pp r0.w, -r1.x, c22.w
mul_pp r1.x, r0.w, r0.w
mul_pp r1.x, r1.x, r1.x
mul_pp r0.yw, r0, r1.xzzx
mul_pp r1.x, r1.y, r1.y
dp2add_pp r1.x, r1.x, r1.w, -c19.x
mad_pp r0.z, r1.x, r0.z, c22.w
mad_pp r1.x, r1.x, r0.w, c22.w
mul_pp r0.z, r0.z, r1.x
mul_pp r0.x, r0.y, r0.x
mul_pp r0.xy, r4.x, r0.xzzw
mul_pp r0.x, r0.x, c14.x
add_pp r0.z, -r2.w, c22.w
add_sat_pp r0.z, r0.z, c17.x
mul_pp r1.xzw, r0.y, c12.xyyz
mad_pp r1.xzw, r4.yyzw, r3.x, r1
mul_pp r3.xyz, r0.x, c12
cmp_pp r3.xyz, r0.x, r3, c22.z
add_pp r0.x, -r1.y, c22.w
mul_pp r0.y, r0.x, r0.x
mul_pp r0.y, r0.y, r0.y
mul_pp r0.x, r0.x, r0.y
lrp_pp r4.xyz, r0.x, r3.w, c13
mul_pp r3.xyz, r3, r4
mad_pp r1.xyz, r2, r1.xzww, r3
lrp_pp r2.xyz, r0.w, r0.z, c13
mad_pp oC0.xyz, r5, r2, r1
mov_pp oC0.w, c22.w

"
}
SubProgram "d3d9 " {
// Stats: 161 math, 8 textures, 5 branches
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "_NORMALMAP" }
Float 16 [_BumpScale]
Vector 15 [_Color]
Float 17 [_Glossiness]
Vector 12 [_LightColor0]
Float 18 [_OcclusionStrength]
Vector 13 [_SpecColor]
Vector 0 [_WorldSpaceLightPos0]
Vector 14 [unity_LightGammaCorrectionConsts]
Vector 3 [unity_SHAb]
Vector 2 [unity_SHAg]
Vector 1 [unity_SHAr]
Vector 4 [unity_SpecCube0_BoxMax]
Vector 5 [unity_SpecCube0_BoxMin]
Vector 7 [unity_SpecCube0_HDR]
Vector 6 [unity_SpecCube0_ProbePosition]
Vector 8 [unity_SpecCube1_BoxMax]
Vector 9 [unity_SpecCube1_BoxMin]
Vector 11 [unity_SpecCube1_HDR]
Vector 10 [unity_SpecCube1_ProbePosition]
SetTexture 0 [unity_SpecCube0] CUBE 0
SetTexture 1 [unity_SpecCube1] CUBE 1
SetTexture 2 [_MainTex] 2D 2
SetTexture 3 [_BumpMap] 2D 3
SetTexture 4 [_OcclusionMap] 2D 4
SetTexture 5 [_ShadowMapTexture] 2D 5
"ps_3_0
def c19, 2, -1, 0, 1
def c20, 0.5, 0.75, 7, 0.999989986
def c21, 0.00100000005, 31.622776, 9.99999975e-005, 10
def c22, 0.967999995, 0.0299999993, 0, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2.xyz
dcl_texcoord3_pp v3.xyz
dcl_texcoord4_pp v4.xyz
dcl_texcoord5_pp v5.xyz
dcl_texcoord6 v6
dcl_texcoord8_pp v7.xyz
dcl_cube s0
dcl_cube s1
dcl_2d s2
dcl_2d s3
dcl_2d s4
dcl_2d s5
texld_pp r0, v0, s3
mad_pp r0.xy, r0.wyzw, c19.x, c19.y
mul_pp r0.xy, r0, c16.x
dp2add_sat_pp r0.z, r0, r0, c19.z
add_pp r0.z, -r0.z, c19.w
rsq_pp r0.z, r0.z
rcp_pp r0.z, r0.z
mul_pp r1.xyz, r0.y, v3
mad_pp r0.xyw, r0.x, v2.xyzz, r1.xyzz
mad_pp r0.xyz, r0.z, v4, r0.xyww
nrm_pp r1.xyz, r0
dp3_pp r0.x, v1, v1
rsq_pp r0.x, r0.x
mul_pp r0.yzw, r0.x, v1.xxyz
texld r2, v0, s2
mul_pp r2.xyz, r2, c15
max_pp r2.w, c13.x, c13.y
max_pp r3.x, r2.w, c13.z
add_pp r2.w, -r3.x, c19.w
mul_pp r2.xyz, r2.w, r2
dp3_pp r3.x, r1, c0
max_pp r4.x, r3.x, c19.z
texldp_pp r3, v6, s5
texld_pp r5, v0, s4
mov r3.zw, c19
add_pp r3.y, r3.w, -c18.x
mad_pp r3.y, r5.y, c18.x, r3.y
mov r1.w, c19.w
dp4_pp r5.x, c1, r1
dp4_pp r5.y, c2, r1
dp4_pp r5.z, c3, r1
add_pp r4.yzw, r5.xxyz, v5.xxyz
mul_pp r5.xyz, r3.x, c12
dp3 r1.w, r0.yzww, r1
add r1.w, r1.w, r1.w
mad_pp r6.xyz, r1, -r1.w, r0.yzww
if_lt -c6.w, r3.z
nrm_pp r7.xyz, r6
add r8.xyz, c4, -v7
rcp r9.x, r7.x
rcp r9.y, r7.y
rcp r9.z, r7.z
mul_pp r8.xyz, r8, r9
add r10.xyz, c5, -v7
mul_pp r9.xyz, r9, r10
cmp_pp r8.xyz, -r7, r9, r8
min_pp r1.w, r8.y, r8.x
min_pp r3.x, r8.z, r1.w
mov r8.xyz, c5
add r8.xyz, r8, c4
mov r9.x, c20.x
mad r9.xyz, r8, r9.x, -c6
add r9.xyz, r9, v7
mad r7.xyz, r7, r3.x, r9
mad_pp r7.xyz, r8, -c20.x, r7
else
mov_pp r7.xyz, r6
endif
add_pp r1.w, r3.w, -c17.x
pow_pp r3.x, r1.w, c20.y
mul_pp r7.w, r3.x, c20.z
texldl_pp r8, r7, s0
pow_pp r3.x, r8.w, c7.y
mul_pp r3.x, r3.x, c7.x
mul_pp r9.xyz, r8, r3.x
mov r10.xw, c20
if_lt c5.w, r10.w
if_lt -c10.w, r3.z
nrm_pp r11.xyz, r6
add r10.yzw, c8.xxyz, -v7.xxyz
rcp r12.x, r11.x
rcp r12.y, r11.y
rcp r12.z, r11.z
mul_pp r10.yzw, r10, r12.xxyz
add r13.xyz, c9, -v7
mul_pp r12.xyz, r12, r13
cmp_pp r10.yzw, -r11.xxyz, r12.xxyz, r10
min_pp r3.z, r10.z, r10.y
min_pp r5.w, r10.w, r3.z
mov r12.xyz, c8
add r10.yzw, r12.xxyz, c9.xxyz
mad r12.xyz, r10.yzww, r10.x, -c10
add r12.xyz, r12, v7
mad r11.xyz, r11, r5.w, r12
mad_pp r7.xyz, r10.yzww, -c20.x, r11
else
mov_pp r7.xyz, r6
endif
texldl_pp r6, r7, s1
pow_pp r3.z, r6.w, c11.y
mul_pp r3.z, r3.z, c11.x
mul_pp r6.xyz, r6, r3.z
mad r7.xyz, r3.x, r8, -r6
mad_pp r9.xyz, c5.w, r7, r6
endif
mul_pp r6.xyz, r3.y, r9
mad_pp r7.xyz, v1, -r0.x, c0
dp3_pp r0.x, r7, r7
add r3.x, -r0.x, c21.x
rsq_pp r0.x, r0.x
cmp_pp r0.x, r3.x, c21.y, r0.x
mul_pp r7.xyz, r0.x, r7
dp3_pp r0.x, r1, r7
max_pp r3.x, r0.x, c19.z
dp3_pp r0.x, r1, -r0.yzww
max_pp r1.x, r0.x, c19.z
dp3_pp r0.x, c0, r7
max_pp r1.y, r0.x, c19.z
mul_pp r0.x, r1.w, r1.w
mul_pp r0.y, r0.x, c14.w
mad_pp r0.x, r0.x, -c14.w, r3.w
mad_pp r0.z, r4.x, r0.x, r0.y
mad_pp r0.x, r1.x, r0.x, r0.y
mad r0.x, r0.z, r0.x, c21.z
rcp_pp r0.x, r0.x
add_pp r0.y, -r1.w, c19.w
mad_pp r0.y, r0.y, c22.x, c22.y
log_pp r0.y, r0.y
rcp r0.y, r0.y
mul_pp r0.y, r0.y, c21.w
mul_pp r0.z, r0.y, r0.y
mad_pp r0.y, r0.y, r0.y, c19.w
mul_pp r0.y, r0.y, c14.y
pow_pp r1.z, r3.x, r0.z
add_pp r0.z, -r4.x, c19.w
mul_pp r0.w, r0.z, r0.z
mul_pp r0.w, r0.w, r0.w
mul_pp r0.z, r0.z, r0.w
add_pp r0.w, -r1.x, c19.w
mul_pp r1.x, r0.w, r0.w
mul_pp r1.x, r1.x, r1.x
mul_pp r0.yw, r0, r1.xzzx
mul_pp r1.x, r1.y, r1.y
dp2add_pp r1.x, r1.x, r1.w, -c20.x
mad_pp r0.z, r1.x, r0.z, c19.w
mad_pp r1.x, r1.x, r0.w, c19.w
mul_pp r0.z, r0.z, r1.x
mul_pp r0.x, r0.y, r0.x
mul_pp r0.x, r4.x, r0.x
mul_pp r0.x, r0.x, c14.x
max_pp r1.x, r0.x, c19.z
mul_pp r0.x, r4.x, r0.z
add_pp r0.y, -r2.w, c19.w
add_sat_pp r0.y, r0.y, c17.x
mul_pp r7.xyz, r0.x, r5
mad_pp r3.xyz, r4.yzww, r3.y, r7
mul_pp r1.xzw, r5.xyyz, r1.x
add_pp r0.x, -r1.y, c19.w
mul_pp r0.z, r0.x, r0.x
mul_pp r0.z, r0.z, r0.z
mul_pp r0.x, r0.x, r0.z
lrp_pp r4.xyz, r0.x, r3.w, c13
mul_pp r1.xyz, r1.xzww, r4
mad_pp r1.xyz, r2, r3, r1
lrp_pp r2.xyz, r0.w, r0.y, c13
mad_pp oC0.xyz, r6, r2, r1
mov_pp oC0.w, c19.w

"
}
}
 }


 // Stats for Vertex shader:
 //        d3d9 : 41 avg math (36..45)
 // Stats for Fragment shader:
 //        d3d9 : 93 avg math (79..110), 4 avg texture (1..8)
 Pass {
  Name "FORWARD_DELTA"
  Tags { "LIGHTMODE"="ForwardAdd" "SHADOWSUPPORT"="true" "RenderType"="Opaque" "PerformanceChecks"="False" }
  ZWrite Off
  Fog {
   Color (0,0,0,0)
  }
  Blend [_SrcBlend] One
  GpuProgramID 87789
Program "vp" {
SubProgram "d3d9 " {
// Stats: 40 math
Keywords { "POINT" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 3
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 17 [_DetailAlbedoMap_ST]
Vector 16 [_MainTex_ST]
Float 18 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 15 [_WorldSpaceLightPos0]
"vs_3_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6.xyz
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c16, c16.zwzw
abs r0.x, c18.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c17.xyxy, c17
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c14
mul r1.xyz, c9, v1.y
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul o4.xyz, r1, v4.w
dp4 r0.w, c7, v0
dp4 o6.x, c11, r0
dp4 o6.y, c12, r0
dp4 o6.z, c13, r0
mad r0.xyz, r0, -c15.w, c15
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d9 " {
// Stats: 36 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 13 [_DetailAlbedoMap_ST]
Vector 12 [_MainTex_ST]
Float 14 [_UVSec]
Vector 10 [_WorldSpaceCameraPos]
Vector 11 [_WorldSpaceLightPos0]
"vs_3_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c12, c12.zwzw
abs r0.x, c14.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c13.xyxy, c13
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c10
mad r0.xyz, r0, -c11.w, c11
mul r1.xyz, c8, v1.y
mad r1.xyz, c7, v1.x, r1
mad r1.xyz, c9, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul o4.xyz, r1, v4.w
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d9 " {
// Stats: 41 math
Keywords { "SPOT" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 8 [_LightMatrix0]
Matrix 4 [_Object2World]
Matrix 12 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 18 [_DetailAlbedoMap_ST]
Vector 17 [_MainTex_ST]
Float 19 [_UVSec]
Vector 15 [_WorldSpaceCameraPos]
Vector 16 [_WorldSpaceLightPos0]
"vs_3_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c17, c17.zwzw
abs r0.x, c19.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c18.xyxy, c18
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c15
mul r1.xyz, c13, v1.y
mad r1.xyz, c12, v1.x, r1
mad r1.xyz, c14, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul o4.xyz, r1, v4.w
dp4 r0.w, c7, v0
dp4 o6.x, c8, r0
dp4 o6.y, c9, r0
dp4 o6.z, c10, r0
dp4 o6.w, c11, r0
mad r0.xyz, r0, -c16.w, c16
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d9 " {
// Stats: 40 math
Keywords { "POINT_COOKIE" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 3
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 17 [_DetailAlbedoMap_ST]
Vector 16 [_MainTex_ST]
Float 18 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 15 [_WorldSpaceLightPos0]
"vs_3_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6.xyz
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c16, c16.zwzw
abs r0.x, c18.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c17.xyxy, c17
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c14
mul r1.xyz, c9, v1.y
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul o4.xyz, r1, v4.w
dp4 r0.w, c7, v0
dp4 o6.x, c11, r0
dp4 o6.y, c12, r0
dp4 o6.z, c13, r0
mad r0.xyz, r0, -c15.w, c15
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d9 " {
// Stats: 39 math
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 2
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 16 [_DetailAlbedoMap_ST]
Vector 15 [_MainTex_ST]
Float 17 [_UVSec]
Vector 13 [_WorldSpaceCameraPos]
Vector 14 [_WorldSpaceLightPos0]
"vs_3_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6.xy
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c15, c15.zwzw
abs r0.x, c17.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c16.xyxy, c16
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c13
mul r1.xyz, c9, v1.y
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul o4.xyz, r1, v4.w
dp4 r0.w, c7, v0
dp4 o6.x, c11, r0
dp4 o6.y, c12, r0
mad r0.xyz, r0, -c14.w, c14
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d9 " {
// Stats: 45 math
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_NATIVE" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 12 [_LightMatrix0]
Matrix 8 [_Object2World]
Matrix 16 [_World2Object] 3
Matrix 4 [glstate_matrix_mvp]
Matrix 0 [unity_World2Shadow0]
Vector 22 [_DetailAlbedoMap_ST]
Vector 21 [_MainTex_ST]
Float 23 [_UVSec]
Vector 19 [_WorldSpaceCameraPos]
Vector 20 [_WorldSpaceLightPos0]
"vs_3_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6
dcl_texcoord6 o7
dp4 o0.x, c4, v0
dp4 o0.y, c5, v0
dp4 o0.z, c6, v0
dp4 o0.w, c7, v0
mad o1.xy, v2, c21, c21.zwzw
abs r0.x, c23.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c22.xyxy, c22
dp4 r0.x, c8, v0
dp4 r0.y, c9, v0
dp4 r0.z, c10, v0
add o2.xyz, r0, -c19
mul r1.xyz, c17, v1.y
mad r1.xyz, c16, v1.x, r1
mad r1.xyz, c18, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c8, v4
dp3 r1.y, c9, v4
dp3 r1.z, c10, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul o4.xyz, r1, v4.w
dp4 r0.w, c11, v0
dp4 o6.x, c12, r0
dp4 o6.y, c13, r0
dp4 o6.z, c14, r0
dp4 o6.w, c15, r0
dp4 o7.x, c0, r0
dp4 o7.y, c1, r0
dp4 o7.z, c2, r0
dp4 o7.w, c3, r0
mad r0.xyz, r0, -c20.w, c20
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d9 " {
// Stats: 42 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 15 [_DetailAlbedoMap_ST]
Vector 14 [_MainTex_ST]
Vector 11 [_ProjectionParams]
Vector 12 [_ScreenParams]
Float 16 [_UVSec]
Vector 10 [_WorldSpaceCameraPos]
Vector 13 [_WorldSpaceLightPos0]
"vs_3_0
def c17, 0.5, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6
mad o1.xy, v2, c14, c14.zwzw
abs r0.x, c16.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c15.xyxy, c15
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c10
mad r0.xyz, r0, -c13.w, c13
mul r1.xyz, c8, v1.y
mad r1.xyz, c7, v1.x, r1
mad r1.xyz, c9, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul o4.xyz, r1, v4.w
dp4 r1.y, c1, v0
mul r0.w, r1.y, c11.x
mul r2.w, r0.w, c17.x
dp4 r1.x, c0, v0
dp4 r1.w, c3, v0
mul r2.xz, r1.xyww, c17.x
mad o6.xy, r2.z, c12.zwzw, r2.xwzw
dp4 r1.z, c2, v0
mov o0, r1
mov o6.zw, r1
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d9 " {
// Stats: 45 math
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 2
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 18 [_DetailAlbedoMap_ST]
Vector 17 [_MainTex_ST]
Vector 14 [_ProjectionParams]
Vector 15 [_ScreenParams]
Float 19 [_UVSec]
Vector 13 [_WorldSpaceCameraPos]
Vector 16 [_WorldSpaceLightPos0]
"vs_3_0
def c20, 0.5, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6.xy
dcl_texcoord6 o7
mad o1.xy, v2, c17, c17.zwzw
abs r0.x, c19.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c18.xyxy, c18
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c13
mul r1.xyz, c9, v1.y
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul o4.xyz, r1, v4.w
dp4 r0.w, c7, v0
dp4 o6.x, c11, r0
dp4 o6.y, c12, r0
mad r0.xyz, r0, -c16.w, c16
dp4 r1.y, c1, v0
mul r0.w, r1.y, c14.x
mul r2.w, r0.w, c20.x
dp4 r1.x, c0, v0
dp4 r1.w, c3, v0
mul r2.xz, r1.xyww, c20.x
mad o7.xy, r2.z, c15.zwzw, r2.xwzw
dp4 r1.z, c2, v0
mov o0, r1
mov o7.zw, r1
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d9 " {
// Stats: 41 math
Keywords { "POINT" "SHADOWS_CUBE" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 3
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 18 [_DetailAlbedoMap_ST]
Vector 16 [_LightPositionRange]
Vector 17 [_MainTex_ST]
Float 19 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 15 [_WorldSpaceLightPos0]
"vs_3_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6.xyz
dcl_texcoord6 o7.xyz
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c17, c17.zwzw
abs r0.x, c19.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c18.xyxy, c18
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c14
mul r1.xyz, c9, v1.y
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul o4.xyz, r1, v4.w
dp4 r0.w, c7, v0
dp4 o6.x, c11, r0
dp4 o6.y, c12, r0
dp4 o6.z, c13, r0
add o7.xyz, r0, -c16
mad r0.xyz, r0, -c15.w, c15
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d9 " {
// Stats: 41 math
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 3
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 18 [_DetailAlbedoMap_ST]
Vector 16 [_LightPositionRange]
Vector 17 [_MainTex_ST]
Float 19 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 15 [_WorldSpaceLightPos0]
"vs_3_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6.xyz
dcl_texcoord6 o7.xyz
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c17, c17.zwzw
abs r0.x, c19.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c18.xyxy, c18
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c14
mul r1.xyz, c9, v1.y
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul o4.xyz, r1, v4.w
dp4 r0.w, c7, v0
dp4 o6.x, c11, r0
dp4 o6.y, c12, r0
dp4 o6.z, c13, r0
add o7.xyz, r0, -c16
mad r0.xyz, r0, -c15.w, c15
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d9 " {
// Stats: 45 math
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "SHADOWS_NATIVE" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 12 [_LightMatrix0]
Matrix 8 [_Object2World]
Matrix 16 [_World2Object] 3
Matrix 4 [glstate_matrix_mvp]
Matrix 0 [unity_World2Shadow0]
Vector 22 [_DetailAlbedoMap_ST]
Vector 21 [_MainTex_ST]
Float 23 [_UVSec]
Vector 19 [_WorldSpaceCameraPos]
Vector 20 [_WorldSpaceLightPos0]
"vs_3_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6
dcl_texcoord6 o7
dp4 o0.x, c4, v0
dp4 o0.y, c5, v0
dp4 o0.z, c6, v0
dp4 o0.w, c7, v0
mad o1.xy, v2, c21, c21.zwzw
abs r0.x, c23.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c22.xyxy, c22
dp4 r0.x, c8, v0
dp4 r0.y, c9, v0
dp4 r0.z, c10, v0
add o2.xyz, r0, -c19
mul r1.xyz, c17, v1.y
mad r1.xyz, c16, v1.x, r1
mad r1.xyz, c18, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c8, v4
dp3 r1.y, c9, v4
dp3 r1.z, c10, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul o4.xyz, r1, v4.w
dp4 r0.w, c11, v0
dp4 o6.x, c12, r0
dp4 o6.y, c13, r0
dp4 o6.z, c14, r0
dp4 o6.w, c15, r0
dp4 o7.x, c0, r0
dp4 o7.y, c1, r0
dp4 o7.z, c2, r0
dp4 o7.w, c3, r0
mad r0.xyz, r0, -c20.w, c20
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d9 " {
// Stats: 41 math
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 3
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 18 [_DetailAlbedoMap_ST]
Vector 16 [_LightPositionRange]
Vector 17 [_MainTex_ST]
Float 19 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 15 [_WorldSpaceLightPos0]
"vs_3_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6.xyz
dcl_texcoord6 o7.xyz
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c17, c17.zwzw
abs r0.x, c19.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c18.xyxy, c18
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c14
mul r1.xyz, c9, v1.y
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul o4.xyz, r1, v4.w
dp4 r0.w, c7, v0
dp4 o6.x, c11, r0
dp4 o6.y, c12, r0
dp4 o6.z, c13, r0
add o7.xyz, r0, -c16
mad r0.xyz, r0, -c15.w, c15
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d9 " {
// Stats: 41 math
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 3
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 18 [_DetailAlbedoMap_ST]
Vector 16 [_LightPositionRange]
Vector 17 [_MainTex_ST]
Float 19 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 15 [_WorldSpaceLightPos0]
"vs_3_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6.xyz
dcl_texcoord6 o7.xyz
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c17, c17.zwzw
abs r0.x, c19.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c18.xyxy, c18
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c14
mul r1.xyz, c9, v1.y
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul o4.xyz, r1, v4.w
dp4 r0.w, c7, v0
dp4 o6.x, c11, r0
dp4 o6.y, c12, r0
dp4 o6.z, c13, r0
add o7.xyz, r0, -c16
mad r0.xyz, r0, -c15.w, c15
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d9 " {
// Stats: 40 math
Keywords { "POINT" "SHADOWS_OFF" "_NORMALMAP" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 3
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 17 [_DetailAlbedoMap_ST]
Vector 16 [_MainTex_ST]
Float 18 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 15 [_WorldSpaceLightPos0]
"vs_3_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6.xyz
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c16, c16.zwzw
abs r0.x, c18.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c17.xyxy, c17
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c14
mul r1.xyz, c9, v1.y
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul o4.xyz, r1, v4.w
dp4 r0.w, c7, v0
dp4 o6.x, c11, r0
dp4 o6.y, c12, r0
dp4 o6.z, c13, r0
mad r0.xyz, r0, -c15.w, c15
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d9 " {
// Stats: 36 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "_NORMALMAP" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 13 [_DetailAlbedoMap_ST]
Vector 12 [_MainTex_ST]
Float 14 [_UVSec]
Vector 10 [_WorldSpaceCameraPos]
Vector 11 [_WorldSpaceLightPos0]
"vs_3_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c12, c12.zwzw
abs r0.x, c14.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c13.xyxy, c13
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c10
mad r0.xyz, r0, -c11.w, c11
mul r1.xyz, c8, v1.y
mad r1.xyz, c7, v1.x, r1
mad r1.xyz, c9, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul o4.xyz, r1, v4.w
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d9 " {
// Stats: 41 math
Keywords { "SPOT" "SHADOWS_OFF" "_NORMALMAP" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 8 [_LightMatrix0]
Matrix 4 [_Object2World]
Matrix 12 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 18 [_DetailAlbedoMap_ST]
Vector 17 [_MainTex_ST]
Float 19 [_UVSec]
Vector 15 [_WorldSpaceCameraPos]
Vector 16 [_WorldSpaceLightPos0]
"vs_3_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c17, c17.zwzw
abs r0.x, c19.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c18.xyxy, c18
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c15
mul r1.xyz, c13, v1.y
mad r1.xyz, c12, v1.x, r1
mad r1.xyz, c14, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul o4.xyz, r1, v4.w
dp4 r0.w, c7, v0
dp4 o6.x, c8, r0
dp4 o6.y, c9, r0
dp4 o6.z, c10, r0
dp4 o6.w, c11, r0
mad r0.xyz, r0, -c16.w, c16
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d9 " {
// Stats: 40 math
Keywords { "POINT_COOKIE" "SHADOWS_OFF" "_NORMALMAP" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 3
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 17 [_DetailAlbedoMap_ST]
Vector 16 [_MainTex_ST]
Float 18 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 15 [_WorldSpaceLightPos0]
"vs_3_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6.xyz
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c16, c16.zwzw
abs r0.x, c18.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c17.xyxy, c17
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c14
mul r1.xyz, c9, v1.y
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul o4.xyz, r1, v4.w
dp4 r0.w, c7, v0
dp4 o6.x, c11, r0
dp4 o6.y, c12, r0
dp4 o6.z, c13, r0
mad r0.xyz, r0, -c15.w, c15
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d9 " {
// Stats: 39 math
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_OFF" "_NORMALMAP" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 2
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 16 [_DetailAlbedoMap_ST]
Vector 15 [_MainTex_ST]
Float 17 [_UVSec]
Vector 13 [_WorldSpaceCameraPos]
Vector 14 [_WorldSpaceLightPos0]
"vs_3_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6.xy
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c15, c15.zwzw
abs r0.x, c17.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c16.xyxy, c16
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c13
mul r1.xyz, c9, v1.y
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul o4.xyz, r1, v4.w
dp4 r0.w, c7, v0
dp4 o6.x, c11, r0
dp4 o6.y, c12, r0
mad r0.xyz, r0, -c14.w, c14
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d9 " {
// Stats: 45 math
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_NATIVE" "_NORMALMAP" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 12 [_LightMatrix0]
Matrix 8 [_Object2World]
Matrix 16 [_World2Object] 3
Matrix 4 [glstate_matrix_mvp]
Matrix 0 [unity_World2Shadow0]
Vector 22 [_DetailAlbedoMap_ST]
Vector 21 [_MainTex_ST]
Float 23 [_UVSec]
Vector 19 [_WorldSpaceCameraPos]
Vector 20 [_WorldSpaceLightPos0]
"vs_3_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6
dcl_texcoord6 o7
dp4 o0.x, c4, v0
dp4 o0.y, c5, v0
dp4 o0.z, c6, v0
dp4 o0.w, c7, v0
mad o1.xy, v2, c21, c21.zwzw
abs r0.x, c23.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c22.xyxy, c22
dp4 r0.x, c8, v0
dp4 r0.y, c9, v0
dp4 r0.z, c10, v0
add o2.xyz, r0, -c19
mul r1.xyz, c17, v1.y
mad r1.xyz, c16, v1.x, r1
mad r1.xyz, c18, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c8, v4
dp3 r1.y, c9, v4
dp3 r1.z, c10, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul o4.xyz, r1, v4.w
dp4 r0.w, c11, v0
dp4 o6.x, c12, r0
dp4 o6.y, c13, r0
dp4 o6.z, c14, r0
dp4 o6.w, c15, r0
dp4 o7.x, c0, r0
dp4 o7.y, c1, r0
dp4 o7.z, c2, r0
dp4 o7.w, c3, r0
mad r0.xyz, r0, -c20.w, c20
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d9 " {
// Stats: 42 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 15 [_DetailAlbedoMap_ST]
Vector 14 [_MainTex_ST]
Vector 11 [_ProjectionParams]
Vector 12 [_ScreenParams]
Float 16 [_UVSec]
Vector 10 [_WorldSpaceCameraPos]
Vector 13 [_WorldSpaceLightPos0]
"vs_3_0
def c17, 0.5, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6
mad o1.xy, v2, c14, c14.zwzw
abs r0.x, c16.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c15.xyxy, c15
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c10
mad r0.xyz, r0, -c13.w, c13
mul r1.xyz, c8, v1.y
mad r1.xyz, c7, v1.x, r1
mad r1.xyz, c9, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul o4.xyz, r1, v4.w
dp4 r1.y, c1, v0
mul r0.w, r1.y, c11.x
mul r2.w, r0.w, c17.x
dp4 r1.x, c0, v0
dp4 r1.w, c3, v0
mul r2.xz, r1.xyww, c17.x
mad o6.xy, r2.z, c12.zwzw, r2.xwzw
dp4 r1.z, c2, v0
mov o0, r1
mov o6.zw, r1
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d9 " {
// Stats: 45 math
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 2
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 18 [_DetailAlbedoMap_ST]
Vector 17 [_MainTex_ST]
Vector 14 [_ProjectionParams]
Vector 15 [_ScreenParams]
Float 19 [_UVSec]
Vector 13 [_WorldSpaceCameraPos]
Vector 16 [_WorldSpaceLightPos0]
"vs_3_0
def c20, 0.5, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6.xy
dcl_texcoord6 o7
mad o1.xy, v2, c17, c17.zwzw
abs r0.x, c19.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c18.xyxy, c18
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c13
mul r1.xyz, c9, v1.y
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul o4.xyz, r1, v4.w
dp4 r0.w, c7, v0
dp4 o6.x, c11, r0
dp4 o6.y, c12, r0
mad r0.xyz, r0, -c16.w, c16
dp4 r1.y, c1, v0
mul r0.w, r1.y, c14.x
mul r2.w, r0.w, c20.x
dp4 r1.x, c0, v0
dp4 r1.w, c3, v0
mul r2.xz, r1.xyww, c20.x
mad o7.xy, r2.z, c15.zwzw, r2.xwzw
dp4 r1.z, c2, v0
mov o0, r1
mov o7.zw, r1
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d9 " {
// Stats: 41 math
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 3
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 18 [_DetailAlbedoMap_ST]
Vector 16 [_LightPositionRange]
Vector 17 [_MainTex_ST]
Float 19 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 15 [_WorldSpaceLightPos0]
"vs_3_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6.xyz
dcl_texcoord6 o7.xyz
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c17, c17.zwzw
abs r0.x, c19.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c18.xyxy, c18
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c14
mul r1.xyz, c9, v1.y
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul o4.xyz, r1, v4.w
dp4 r0.w, c7, v0
dp4 o6.x, c11, r0
dp4 o6.y, c12, r0
dp4 o6.z, c13, r0
add o7.xyz, r0, -c16
mad r0.xyz, r0, -c15.w, c15
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d9 " {
// Stats: 41 math
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 3
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 18 [_DetailAlbedoMap_ST]
Vector 16 [_LightPositionRange]
Vector 17 [_MainTex_ST]
Float 19 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 15 [_WorldSpaceLightPos0]
"vs_3_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6.xyz
dcl_texcoord6 o7.xyz
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c17, c17.zwzw
abs r0.x, c19.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c18.xyxy, c18
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c14
mul r1.xyz, c9, v1.y
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul o4.xyz, r1, v4.w
dp4 r0.w, c7, v0
dp4 o6.x, c11, r0
dp4 o6.y, c12, r0
dp4 o6.z, c13, r0
add o7.xyz, r0, -c16
mad r0.xyz, r0, -c15.w, c15
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d9 " {
// Stats: 45 math
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "SHADOWS_NATIVE" "_NORMALMAP" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 12 [_LightMatrix0]
Matrix 8 [_Object2World]
Matrix 16 [_World2Object] 3
Matrix 4 [glstate_matrix_mvp]
Matrix 0 [unity_World2Shadow0]
Vector 22 [_DetailAlbedoMap_ST]
Vector 21 [_MainTex_ST]
Float 23 [_UVSec]
Vector 19 [_WorldSpaceCameraPos]
Vector 20 [_WorldSpaceLightPos0]
"vs_3_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6
dcl_texcoord6 o7
dp4 o0.x, c4, v0
dp4 o0.y, c5, v0
dp4 o0.z, c6, v0
dp4 o0.w, c7, v0
mad o1.xy, v2, c21, c21.zwzw
abs r0.x, c23.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c22.xyxy, c22
dp4 r0.x, c8, v0
dp4 r0.y, c9, v0
dp4 r0.z, c10, v0
add o2.xyz, r0, -c19
mul r1.xyz, c17, v1.y
mad r1.xyz, c16, v1.x, r1
mad r1.xyz, c18, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c8, v4
dp3 r1.y, c9, v4
dp3 r1.z, c10, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul o4.xyz, r1, v4.w
dp4 r0.w, c11, v0
dp4 o6.x, c12, r0
dp4 o6.y, c13, r0
dp4 o6.z, c14, r0
dp4 o6.w, c15, r0
dp4 o7.x, c0, r0
dp4 o7.y, c1, r0
dp4 o7.z, c2, r0
dp4 o7.w, c3, r0
mad r0.xyz, r0, -c20.w, c20
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d9 " {
// Stats: 41 math
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 3
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 18 [_DetailAlbedoMap_ST]
Vector 16 [_LightPositionRange]
Vector 17 [_MainTex_ST]
Float 19 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 15 [_WorldSpaceLightPos0]
"vs_3_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6.xyz
dcl_texcoord6 o7.xyz
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c17, c17.zwzw
abs r0.x, c19.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c18.xyxy, c18
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c14
mul r1.xyz, c9, v1.y
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul o4.xyz, r1, v4.w
dp4 r0.w, c7, v0
dp4 o6.x, c11, r0
dp4 o6.y, c12, r0
dp4 o6.z, c13, r0
add o7.xyz, r0, -c16
mad r0.xyz, r0, -c15.w, c15
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d9 " {
// Stats: 41 math
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 3
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 18 [_DetailAlbedoMap_ST]
Vector 16 [_LightPositionRange]
Vector 17 [_MainTex_ST]
Float 19 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 15 [_WorldSpaceLightPos0]
"vs_3_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6.xyz
dcl_texcoord6 o7.xyz
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c17, c17.zwzw
abs r0.x, c19.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c18.xyxy, c18
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c14
mul r1.xyz, c9, v1.y
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul o4.xyz, r1, v4.w
dp4 r0.w, c7, v0
dp4 o6.x, c11, r0
dp4 o6.y, c12, r0
dp4 o6.z, c13, r0
add o7.xyz, r0, -c16
mad r0.xyz, r0, -c15.w, c15
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
}
Program "fp" {
SubProgram "d3d9 " {
// Stats: 84 math, 2 textures
Keywords { "POINT" "SHADOWS_OFF" }
Vector 3 [_Color]
Float 4 [_Glossiness]
Vector 0 [_LightColor0]
Vector 1 [_SpecColor]
Vector 2 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_LightTexture0] 2D 1
"ps_3_0
def c5, 1, 0, 0.00100000005, 31.622776
def c6, 9.99999975e-005, 0.967999995, 0.0299999993, 10
def c7, -0.5, 0, 0, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2.w
dcl_texcoord3_pp v3.w
dcl_texcoord4_pp v4
dcl_texcoord5 v5.xyz
dcl_2d s0
dcl_2d s1
mov r0.x, c5.x
add_pp r0.y, r0.x, -c4.x
add_pp r0.z, -r0.y, c5.x
mad_pp r0.z, r0.z, c6.y, c6.z
log_pp r0.z, r0.z
rcp r0.z, r0.z
mul_pp r0.z, r0.z, c6.w
mad_pp r0.w, r0.z, r0.z, c5.x
mul_pp r0.z, r0.z, r0.z
mul_pp r0.w, r0.w, c2.y
nrm_pp r1.xyz, v1
mov_pp r2.x, v2.w
mov_pp r2.y, v3.w
mov_pp r2.z, v4.w
dp3_pp r1.w, r2, r2
rsq_pp r1.w, r1.w
mad_pp r3.xyz, r2, r1.w, -r1
mul_pp r2.xyz, r1.w, r2
dp3_pp r1.w, r3, r3
add r2.w, -r1.w, c5.z
rsq_pp r1.w, r1.w
cmp_pp r1.w, r2.w, c5.w, r1.w
mul_pp r3.xyz, r1.w, r3
nrm_pp r4.xyz, v4
dp3_pp r1.w, r4, r3
dp3_pp r2.w, r2, r3
dp3_pp r2.x, r4, r2
dp3_pp r1.x, r4, -r1
max_pp r2.y, r1.x, c5.y
max_pp r1.x, r2.x, c5.y
max_pp r1.y, r2.w, c5.y
max_pp r2.x, r1.w, c5.y
pow_pp r1.z, r2.x, r0.z
mul_pp r0.z, r0.w, r1.z
mul_pp r0.w, r0.y, r0.y
mul_pp r1.z, r0.w, c2.w
mad_pp r0.w, r0.w, -c2.w, r0.x
mad_pp r1.w, r2.y, r0.w, r1.z
add_pp r2.x, -r2.y, c5.x
mad_pp r0.w, r1.x, r0.w, r1.z
mad r0.w, r0.w, r1.w, c6.x
rcp_pp r0.w, r0.w
mul_pp r0.z, r0.z, r0.w
mul_pp r0.z, r1.x, r0.z
mul_pp r0.z, r0.z, c2.x
max_pp r1.z, r0.z, c5.y
dp3 r0.z, v5, v5
texld_pp r3, r0.z, s1
mul_pp r2.yzw, r3.x, c0.xxyz
mul_pp r3.xyz, r1.z, r2.yzww
add_pp r0.z, -r1.y, c5.x
mul_pp r0.w, r1.y, r1.y
dp2add_pp r0.y, r0.w, r0.y, c7.x
mul_pp r0.w, r0.z, r0.z
mul_pp r0.w, r0.w, r0.w
mul_pp r0.z, r0.z, r0.w
lrp_pp r1.yzw, r0.z, r0.x, c1.xxyz
mul_pp r0.xzw, r1.yyzw, r3.xyyz
max_pp r1.y, c1.x, c1.y
max_pp r3.x, r1.y, c1.z
add_pp r1.y, -r3.x, c5.x
texld r3, v0, s0
mul_pp r3.xyz, r3, c3
mul_pp r1.yzw, r1.y, r3.xxyz
mul_pp r3.x, r2.x, r2.x
mul_pp r3.x, r3.x, r3.x
mul_pp r2.x, r2.x, r3.x
mad_pp r2.x, r0.y, r2.x, c5.x
add_pp r3.x, -r1.x, c5.x
mul_pp r3.y, r3.x, r3.x
mul_pp r3.y, r3.y, r3.y
mul_pp r3.x, r3.x, r3.y
mad_pp r0.y, r0.y, r3.x, c5.x
mul_pp r0.y, r2.x, r0.y
mul_pp r0.y, r1.x, r0.y
mul_pp r2.xyz, r0.y, r2.yzww
mad_pp oC0.xyz, r1.yzww, r2, r0.xzww
mov_pp oC0.w, c5.x

"
}
SubProgram "d3d9 " {
// Stats: 79 math, 1 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" }
Vector 3 [_Color]
Float 4 [_Glossiness]
Vector 0 [_LightColor0]
Vector 1 [_SpecColor]
Vector 2 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
"ps_3_0
def c5, 1, 0, 0.00100000005, 31.622776
def c6, 9.99999975e-005, 0.967999995, 0.0299999993, 10
def c7, -0.5, 0, 0, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2.w
dcl_texcoord3_pp v3.w
dcl_texcoord4_pp v4
dcl_2d s0
mov r0.x, c5.x
add_pp r0.y, r0.x, -c4.x
add_pp r0.z, -r0.y, c5.x
mad_pp r0.z, r0.z, c6.y, c6.z
log_pp r0.z, r0.z
rcp r0.z, r0.z
mul_pp r0.z, r0.z, c6.w
mad_pp r0.w, r0.z, r0.z, c5.x
mul_pp r0.z, r0.z, r0.z
mul_pp r0.w, r0.w, c2.y
dp3_pp r1.x, v1, v1
rsq_pp r1.x, r1.x
mov_pp r2.x, v2.w
mov_pp r2.y, v3.w
mov_pp r2.z, v4.w
mad_pp r1.yzw, v1.xxyz, -r1.x, r2.xxyz
mul_pp r3.xyz, r1.x, v1
dp3_pp r1.x, r1.yzww, r1.yzww
add r2.w, -r1.x, c5.z
rsq_pp r1.x, r1.x
cmp_pp r1.x, r2.w, c5.w, r1.x
mul_pp r1.xyz, r1.x, r1.yzww
nrm_pp r4.xyz, v4
dp3_pp r1.w, r4, r1
dp3_pp r1.x, r2, r1
dp3_pp r1.y, r4, r2
dp3_pp r1.z, r4, -r3
max_pp r2.x, r1.z, c5.y
max_pp r2.y, r1.y, c5.y
max_pp r2.z, r1.x, c5.y
max_pp r2.w, r1.w, c5.y
pow_pp r1.x, r2.w, r0.z
mul_pp r0.z, r0.w, r1.x
mul_pp r0.w, r0.y, r0.y
mul_pp r1.x, r0.w, c2.w
mad_pp r0.w, r0.w, -c2.w, r0.x
mad_pp r1.y, r2.x, r0.w, r1.x
add_pp r1.z, -r2.x, c5.x
mad_pp r0.w, r2.y, r0.w, r1.x
mad r0.w, r0.w, r1.y, c6.x
rcp_pp r0.w, r0.w
mul_pp r0.z, r0.z, r0.w
mul_pp r0.z, r2.y, r0.z
mul_pp r0.z, r0.z, c2.x
mul_pp r1.xyw, r0.z, c0.xyzz
cmp_pp r1.xyw, r0.z, r1, c5.y
add_pp r0.z, -r2.z, c5.x
mul_pp r0.w, r2.z, r2.z
dp2add_pp r0.y, r0.w, r0.y, c7.x
mul_pp r0.w, r0.z, r0.z
mul_pp r0.w, r0.w, r0.w
mul_pp r0.z, r0.z, r0.w
lrp_pp r2.xzw, r0.z, r0.x, c1.xyyz
mul_pp r0.xzw, r1.xyyw, r2
max_pp r1.x, c1.x, c1.y
max_pp r2.x, r1.x, c1.z
add_pp r1.x, -r2.x, c5.x
texld r3, v0, s0
mul_pp r2.xzw, r3.xyyz, c3.xyyz
mul_pp r1.xyw, r1.x, r2.xzzw
mul_pp r2.x, r1.z, r1.z
mul_pp r2.x, r2.x, r2.x
mul_pp r1.z, r1.z, r2.x
mad_pp r1.z, r0.y, r1.z, c5.x
add_pp r2.x, -r2.y, c5.x
mul_pp r2.z, r2.x, r2.x
mul_pp r2.z, r2.z, r2.z
mul_pp r2.x, r2.x, r2.z
mad_pp r0.y, r0.y, r2.x, c5.x
mul_pp r0.y, r1.z, r0.y
mul_pp r0.y, r2.y, r0.y
mul_pp r2.xyz, r0.y, c0
mad_pp oC0.xyz, r1.xyww, r2, r0.xzww
mov_pp oC0.w, c5.x

"
}
SubProgram "d3d9 " {
// Stats: 88 math, 3 textures
Keywords { "SPOT" "SHADOWS_OFF" }
Vector 3 [_Color]
Float 4 [_Glossiness]
Vector 0 [_LightColor0]
Vector 1 [_SpecColor]
Vector 2 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_LightTexture0] 2D 1
SetTexture 2 [_LightTextureB0] 2D 2
"ps_3_0
def c5, 1, 0.5, 0, 0.00100000005
def c6, 31.622776, 9.99999975e-005, 0.967999995, 0.0299999993
def c7, 10, 0, 0, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2.w
dcl_texcoord3_pp v3.w
dcl_texcoord4_pp v4
dcl_texcoord5 v5
dcl_2d s0
dcl_2d s1
dcl_2d s2
mov r0.x, c5.x
add_pp r0.y, r0.x, -c4.x
add_pp r0.z, -r0.y, c5.x
mad_pp r0.z, r0.z, c6.z, c6.w
log_pp r0.z, r0.z
rcp r0.z, r0.z
mul_pp r0.z, r0.z, c7.x
mad_pp r0.w, r0.z, r0.z, c5.x
mul_pp r0.z, r0.z, r0.z
mul_pp r0.w, r0.w, c2.y
nrm_pp r1.xyz, v1
mov_pp r2.x, v2.w
mov_pp r2.y, v3.w
mov_pp r2.z, v4.w
dp3_pp r1.w, r2, r2
rsq_pp r1.w, r1.w
mad_pp r3.xyz, r2, r1.w, -r1
mul_pp r2.xyz, r1.w, r2
dp3_pp r1.w, r3, r3
add r2.w, -r1.w, c5.w
rsq_pp r1.w, r1.w
cmp_pp r1.w, r2.w, c6.x, r1.w
mul_pp r3.xyz, r1.w, r3
nrm_pp r4.xyz, v4
dp3_pp r1.w, r4, r3
dp3_pp r2.w, r2, r3
dp3_pp r2.x, r4, r2
dp3_pp r1.x, r4, -r1
max_pp r2.y, r1.x, c5.z
max_pp r1.x, r2.x, c5.z
max_pp r1.y, r2.w, c5.z
max_pp r2.x, r1.w, c5.z
pow_pp r1.z, r2.x, r0.z
mul_pp r0.z, r0.w, r1.z
mul_pp r0.w, r0.y, r0.y
mul_pp r1.z, r0.w, c2.w
mad_pp r0.w, r0.w, -c2.w, r0.x
mad_pp r1.w, r2.y, r0.w, r1.z
add_pp r2.x, -r2.y, c5.x
mad_pp r0.w, r1.x, r0.w, r1.z
mad r0.w, r0.w, r1.w, c6.y
rcp_pp r0.w, r0.w
mul_pp r0.z, r0.z, r0.w
mul_pp r0.z, r1.x, r0.z
mul_pp r0.z, r0.z, c2.x
max_pp r1.z, r0.z, c5.z
rcp r0.z, v5.w
mad r0.zw, v5.xyxy, r0.z, c5.y
texld_pp r3, r0.zwzw, s1
dp3 r0.z, v5, v5
texld_pp r4, r0.z, s2
mul r0.z, r3.w, r4.x
mul_pp r2.yzw, r0.z, c0.xxyz
cmp_pp r2.yzw, -v5.z, c5.z, r2
mul_pp r3.xyz, r1.z, r2.yzww
add_pp r0.z, -r1.y, c5.x
mul_pp r0.w, r1.y, r1.y
dp2add_pp r0.y, r0.w, r0.y, -c5.y
mul_pp r0.w, r0.z, r0.z
mul_pp r0.w, r0.w, r0.w
mul_pp r0.z, r0.z, r0.w
lrp_pp r1.yzw, r0.z, r0.x, c1.xxyz
mul_pp r0.xzw, r1.yyzw, r3.xyyz
max_pp r1.y, c1.x, c1.y
max_pp r3.x, r1.y, c1.z
add_pp r1.y, -r3.x, c5.x
texld r3, v0, s0
mul_pp r3.xyz, r3, c3
mul_pp r1.yzw, r1.y, r3.xxyz
mul_pp r3.x, r2.x, r2.x
mul_pp r3.x, r3.x, r3.x
mul_pp r2.x, r2.x, r3.x
mad_pp r2.x, r0.y, r2.x, c5.x
add_pp r3.x, -r1.x, c5.x
mul_pp r3.y, r3.x, r3.x
mul_pp r3.y, r3.y, r3.y
mul_pp r3.x, r3.x, r3.y
mad_pp r0.y, r0.y, r3.x, c5.x
mul_pp r0.y, r2.x, r0.y
mul_pp r0.y, r1.x, r0.y
mul_pp r2.xyz, r0.y, r2.yzww
mad_pp oC0.xyz, r1.yzww, r2, r0.xzww
mov_pp oC0.w, c5.x

"
}
SubProgram "d3d9 " {
// Stats: 85 math, 3 textures
Keywords { "POINT_COOKIE" "SHADOWS_OFF" }
Vector 3 [_Color]
Float 4 [_Glossiness]
Vector 0 [_LightColor0]
Vector 1 [_SpecColor]
Vector 2 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_LightTexture0] CUBE 1
SetTexture 2 [_LightTextureB0] 2D 2
"ps_3_0
def c5, 1, 0, 0.00100000005, 31.622776
def c6, 9.99999975e-005, 0.967999995, 0.0299999993, 10
def c7, -0.5, 0, 0, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2.w
dcl_texcoord3_pp v3.w
dcl_texcoord4_pp v4
dcl_texcoord5 v5.xyz
dcl_2d s0
dcl_cube s1
dcl_2d s2
mov r0.x, c5.x
add_pp r0.y, r0.x, -c4.x
add_pp r0.z, -r0.y, c5.x
mad_pp r0.z, r0.z, c6.y, c6.z
log_pp r0.z, r0.z
rcp r0.z, r0.z
mul_pp r0.z, r0.z, c6.w
mad_pp r0.w, r0.z, r0.z, c5.x
mul_pp r0.z, r0.z, r0.z
mul_pp r0.w, r0.w, c2.y
nrm_pp r1.xyz, v1
mov_pp r2.x, v2.w
mov_pp r2.y, v3.w
mov_pp r2.z, v4.w
dp3_pp r1.w, r2, r2
rsq_pp r1.w, r1.w
mad_pp r3.xyz, r2, r1.w, -r1
mul_pp r2.xyz, r1.w, r2
dp3_pp r1.w, r3, r3
add r2.w, -r1.w, c5.z
rsq_pp r1.w, r1.w
cmp_pp r1.w, r2.w, c5.w, r1.w
mul_pp r3.xyz, r1.w, r3
nrm_pp r4.xyz, v4
dp3_pp r1.w, r4, r3
dp3_pp r2.w, r2, r3
dp3_pp r2.x, r4, r2
dp3_pp r1.x, r4, -r1
max_pp r2.y, r1.x, c5.y
max_pp r1.x, r2.x, c5.y
max_pp r1.y, r2.w, c5.y
max_pp r2.x, r1.w, c5.y
pow_pp r1.z, r2.x, r0.z
mul_pp r0.z, r0.w, r1.z
mul_pp r0.w, r0.y, r0.y
mul_pp r1.z, r0.w, c2.w
mad_pp r0.w, r0.w, -c2.w, r0.x
mad_pp r1.w, r2.y, r0.w, r1.z
add_pp r2.x, -r2.y, c5.x
mad_pp r0.w, r1.x, r0.w, r1.z
mad r0.w, r0.w, r1.w, c6.x
rcp_pp r0.w, r0.w
mul_pp r0.z, r0.z, r0.w
mul_pp r0.z, r1.x, r0.z
mul_pp r0.z, r0.z, c2.x
max_pp r1.z, r0.z, c5.y
dp3 r0.z, v5, v5
texld r3, r0.z, s2
texld r4, v5, s1
mul_pp r0.z, r3.x, r4.w
mul_pp r2.yzw, r0.z, c0.xxyz
mul_pp r3.xyz, r1.z, r2.yzww
add_pp r0.z, -r1.y, c5.x
mul_pp r0.w, r1.y, r1.y
dp2add_pp r0.y, r0.w, r0.y, c7.x
mul_pp r0.w, r0.z, r0.z
mul_pp r0.w, r0.w, r0.w
mul_pp r0.z, r0.z, r0.w
lrp_pp r1.yzw, r0.z, r0.x, c1.xxyz
mul_pp r0.xzw, r1.yyzw, r3.xyyz
max_pp r1.y, c1.x, c1.y
max_pp r3.x, r1.y, c1.z
add_pp r1.y, -r3.x, c5.x
texld r3, v0, s0
mul_pp r3.xyz, r3, c3
mul_pp r1.yzw, r1.y, r3.xxyz
mul_pp r3.x, r2.x, r2.x
mul_pp r3.x, r3.x, r3.x
mul_pp r2.x, r2.x, r3.x
mad_pp r2.x, r0.y, r2.x, c5.x
add_pp r3.x, -r1.x, c5.x
mul_pp r3.y, r3.x, r3.x
mul_pp r3.y, r3.y, r3.y
mul_pp r3.x, r3.x, r3.y
mad_pp r0.y, r0.y, r3.x, c5.x
mul_pp r0.y, r2.x, r0.y
mul_pp r0.y, r1.x, r0.y
mul_pp r2.xyz, r0.y, r2.yzww
mad_pp oC0.xyz, r1.yzww, r2, r0.xzww
mov_pp oC0.w, c5.x

"
}
SubProgram "d3d9 " {
// Stats: 80 math, 2 textures
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_OFF" }
Vector 3 [_Color]
Float 4 [_Glossiness]
Vector 0 [_LightColor0]
Vector 1 [_SpecColor]
Vector 2 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_LightTexture0] 2D 1
"ps_3_0
def c5, 1, 0, 0.00100000005, 31.622776
def c6, 9.99999975e-005, 0.967999995, 0.0299999993, 10
def c7, -0.5, 0, 0, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2.w
dcl_texcoord3_pp v3.w
dcl_texcoord4_pp v4
dcl_texcoord5 v5.xy
dcl_2d s0
dcl_2d s1
mov r0.x, c5.x
add_pp r0.y, r0.x, -c4.x
add_pp r0.z, -r0.y, c5.x
mad_pp r0.z, r0.z, c6.y, c6.z
log_pp r0.z, r0.z
rcp r0.z, r0.z
mul_pp r0.z, r0.z, c6.w
mad_pp r0.w, r0.z, r0.z, c5.x
mul_pp r0.z, r0.z, r0.z
mul_pp r0.w, r0.w, c2.y
dp3_pp r1.x, v1, v1
rsq_pp r1.x, r1.x
mov_pp r2.x, v2.w
mov_pp r2.y, v3.w
mov_pp r2.z, v4.w
mad_pp r1.yzw, v1.xxyz, -r1.x, r2.xxyz
mul_pp r3.xyz, r1.x, v1
dp3_pp r1.x, r1.yzww, r1.yzww
add r2.w, -r1.x, c5.z
rsq_pp r1.x, r1.x
cmp_pp r1.x, r2.w, c5.w, r1.x
mul_pp r1.xyz, r1.x, r1.yzww
nrm_pp r4.xyz, v4
dp3_pp r1.w, r4, r1
dp3_pp r1.x, r2, r1
dp3_pp r1.y, r4, r2
dp3_pp r1.z, r4, -r3
max_pp r2.x, r1.z, c5.y
max_pp r2.y, r1.y, c5.y
max_pp r2.z, r1.x, c5.y
max_pp r2.w, r1.w, c5.y
pow_pp r1.x, r2.w, r0.z
mul_pp r0.z, r0.w, r1.x
mul_pp r0.w, r0.y, r0.y
mul_pp r1.x, r0.w, c2.w
mad_pp r0.w, r0.w, -c2.w, r0.x
mad_pp r1.y, r2.x, r0.w, r1.x
add_pp r1.z, -r2.x, c5.x
mad_pp r0.w, r2.y, r0.w, r1.x
mad r0.w, r0.w, r1.y, c6.x
rcp_pp r0.w, r0.w
mul_pp r0.z, r0.z, r0.w
mul_pp r0.z, r2.y, r0.z
mul_pp r0.z, r0.z, c2.x
max_pp r1.x, r0.z, c5.y
texld_pp r3, v5, s1
mul_pp r3.xyz, r3.w, c0
mul_pp r1.xyw, r1.x, r3.xyzz
add_pp r0.z, -r2.z, c5.x
mul_pp r0.w, r2.z, r2.z
dp2add_pp r0.y, r0.w, r0.y, c7.x
mul_pp r0.w, r0.z, r0.z
mul_pp r0.w, r0.w, r0.w
mul_pp r0.z, r0.z, r0.w
lrp_pp r2.xzw, r0.z, r0.x, c1.xyyz
mul_pp r0.xzw, r1.xyyw, r2
max_pp r1.x, c1.x, c1.y
max_pp r2.x, r1.x, c1.z
add_pp r1.x, -r2.x, c5.x
texld r4, v0, s0
mul_pp r2.xzw, r4.xyyz, c3.xyyz
mul_pp r1.xyw, r1.x, r2.xzzw
mul_pp r2.x, r1.z, r1.z
mul_pp r2.x, r2.x, r2.x
mul_pp r1.z, r1.z, r2.x
mad_pp r1.z, r0.y, r1.z, c5.x
add_pp r2.x, -r2.y, c5.x
mul_pp r2.z, r2.x, r2.x
mul_pp r2.z, r2.z, r2.z
mul_pp r2.x, r2.x, r2.z
mad_pp r0.y, r0.y, r2.x, c5.x
mul_pp r0.y, r1.z, r0.y
mul_pp r0.y, r2.y, r0.y
mul_pp r2.xyz, r0.y, r3
mad_pp oC0.xyz, r1.xyww, r2, r0.xzww
mov_pp oC0.w, c5.x

"
}
SubProgram "d3d9 " {
// Stats: 91 math, 4 textures
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_NATIVE" }
Vector 4 [_Color]
Float 5 [_Glossiness]
Vector 1 [_LightColor0]
Vector 0 [_LightShadowData]
Vector 2 [_SpecColor]
Vector 3 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_ShadowMapTexture] 2D 1
SetTexture 2 [_LightTexture0] 2D 2
SetTexture 3 [_LightTextureB0] 2D 3
"ps_3_0
def c6, 1, 0.5, 0, 0.00100000005
def c7, 31.622776, 9.99999975e-005, 0.967999995, 0.0299999993
def c8, 10, 0, 0, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2.w
dcl_texcoord3_pp v3.w
dcl_texcoord4_pp v4
dcl_texcoord5 v5
dcl_texcoord6 v6
dcl_2d s0
dcl_2d s1
dcl_2d s2
dcl_2d s3
rcp r0.x, v5.w
mad r0.xy, v5, r0.x, c6.y
texld_pp r0, r0, s2
dp3 r0.x, v5, v5
texld_pp r1, r0.x, s3
mul r0.x, r0.w, r1.x
cmp r0.x, -v5.z, c6.z, r0.x
texldp_pp r1, v6, s1
mov r2.x, c6.x
lrp_pp r0.y, r1.x, r2.x, c0.x
mul_pp r0.x, r0.y, r0.x
mul_pp r0.xyz, r0.x, c1
add_pp r0.w, r2.x, -c5.x
add_pp r1.x, -r0.w, c6.x
mad_pp r1.x, r1.x, c7.z, c7.w
log_pp r1.x, r1.x
rcp r1.x, r1.x
mul_pp r1.x, r1.x, c8.x
mad_pp r1.y, r1.x, r1.x, c6.x
mul_pp r1.x, r1.x, r1.x
mul_pp r1.y, r1.y, c3.y
nrm_pp r3.xyz, v1
mov_pp r4.x, v2.w
mov_pp r4.y, v3.w
mov_pp r4.z, v4.w
dp3_pp r1.z, r4, r4
rsq_pp r1.z, r1.z
mad_pp r2.yzw, r4.xxyz, r1.z, -r3.xxyz
mul_pp r4.xyz, r1.z, r4
dp3_pp r1.z, r2.yzww, r2.yzww
add r1.w, -r1.z, c6.w
rsq_pp r1.z, r1.z
cmp_pp r1.z, r1.w, c7.x, r1.z
mul_pp r2.yzw, r1.z, r2
nrm_pp r5.xyz, v4
dp3_pp r1.z, r5, r2.yzww
dp3_pp r1.w, r4, r2.yzww
dp3_pp r2.y, r5, r4
dp3_pp r2.z, r5, -r3
max_pp r3.x, r2.z, c6.z
max_pp r3.y, r2.y, c6.z
max_pp r2.y, r1.w, c6.z
max_pp r2.z, r1.z, c6.z
pow_pp r3.z, r2.z, r1.x
mul_pp r1.x, r1.y, r3.z
mul_pp r1.y, r0.w, r0.w
mul_pp r1.z, r1.y, c3.w
mad_pp r1.y, r1.y, -c3.w, r2.x
mad_pp r1.w, r3.x, r1.y, r1.z
add_pp r2.z, -r3.x, c6.x
mad_pp r1.y, r3.y, r1.y, r1.z
mad r1.y, r1.y, r1.w, c7.y
rcp_pp r1.y, r1.y
mul_pp r1.x, r1.x, r1.y
mul_pp r1.x, r3.y, r1.x
mul_pp r1.x, r1.x, c3.x
max_pp r2.w, r1.x, c6.z
mul_pp r1.xyz, r0, r2.w
add_pp r1.w, -r2.y, c6.x
mul_pp r2.y, r2.y, r2.y
dp2add_pp r0.w, r2.y, r0.w, -c6.y
mul_pp r2.y, r1.w, r1.w
mul_pp r2.y, r2.y, r2.y
mul_pp r1.w, r1.w, r2.y
lrp_pp r3.xzw, r1.w, r2.x, c2.xyyz
mul_pp r1.xyz, r1, r3.xzww
max_pp r1.w, c2.x, c2.y
max_pp r2.x, r1.w, c2.z
add_pp r1.w, -r2.x, c6.x
texld r4, v0, s0
mul_pp r2.xyw, r4.xyzz, c4.xyzz
mul_pp r2.xyw, r1.w, r2
mul_pp r1.w, r2.z, r2.z
mul_pp r1.w, r1.w, r1.w
mul_pp r1.w, r2.z, r1.w
mad_pp r1.w, r0.w, r1.w, c6.x
add_pp r2.z, -r3.y, c6.x
mul_pp r3.x, r2.z, r2.z
mul_pp r3.x, r3.x, r3.x
mul_pp r2.z, r2.z, r3.x
mad_pp r0.w, r0.w, r2.z, c6.x
mul_pp r0.w, r1.w, r0.w
mul_pp r0.w, r3.y, r0.w
mul_pp r0.xyz, r0.w, r0
mad_pp oC0.xyz, r2.xyww, r0, r1
mov_pp oC0.w, c6.x

"
}
SubProgram "d3d9 " {
// Stats: 80 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Vector 3 [_Color]
Float 4 [_Glossiness]
Vector 0 [_LightColor0]
Vector 1 [_SpecColor]
Vector 2 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_ShadowMapTexture] 2D 1
"ps_3_0
def c5, 1, 0, 0.00100000005, 31.622776
def c6, 9.99999975e-005, 0.967999995, 0.0299999993, 10
def c7, -0.5, 0, 0, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2.w
dcl_texcoord3_pp v3.w
dcl_texcoord4_pp v4
dcl_texcoord5 v5
dcl_2d s0
dcl_2d s1
mov r0.x, c5.x
add_pp r0.y, r0.x, -c4.x
add_pp r0.z, -r0.y, c5.x
mad_pp r0.z, r0.z, c6.y, c6.z
log_pp r0.z, r0.z
rcp r0.z, r0.z
mul_pp r0.z, r0.z, c6.w
mad_pp r0.w, r0.z, r0.z, c5.x
mul_pp r0.z, r0.z, r0.z
mul_pp r0.w, r0.w, c2.y
dp3_pp r1.x, v1, v1
rsq_pp r1.x, r1.x
mov_pp r2.x, v2.w
mov_pp r2.y, v3.w
mov_pp r2.z, v4.w
mad_pp r1.yzw, v1.xxyz, -r1.x, r2.xxyz
mul_pp r3.xyz, r1.x, v1
dp3_pp r1.x, r1.yzww, r1.yzww
add r2.w, -r1.x, c5.z
rsq_pp r1.x, r1.x
cmp_pp r1.x, r2.w, c5.w, r1.x
mul_pp r1.xyz, r1.x, r1.yzww
nrm_pp r4.xyz, v4
dp3_pp r1.w, r4, r1
dp3_pp r1.x, r2, r1
dp3_pp r1.y, r4, r2
dp3_pp r1.z, r4, -r3
max_pp r2.x, r1.z, c5.y
max_pp r2.y, r1.y, c5.y
max_pp r2.z, r1.x, c5.y
max_pp r2.w, r1.w, c5.y
pow_pp r1.x, r2.w, r0.z
mul_pp r0.z, r0.w, r1.x
mul_pp r0.w, r0.y, r0.y
mul_pp r1.x, r0.w, c2.w
mad_pp r0.w, r0.w, -c2.w, r0.x
mad_pp r1.y, r2.x, r0.w, r1.x
add_pp r1.z, -r2.x, c5.x
mad_pp r0.w, r2.y, r0.w, r1.x
mad r0.w, r0.w, r1.y, c6.x
rcp_pp r0.w, r0.w
mul_pp r0.z, r0.z, r0.w
mul_pp r0.z, r2.y, r0.z
mul_pp r0.z, r0.z, c2.x
max_pp r1.x, r0.z, c5.y
texldp_pp r3, v5, s1
mul_pp r3.xyz, r3.x, c0
mul_pp r1.xyw, r1.x, r3.xyzz
add_pp r0.z, -r2.z, c5.x
mul_pp r0.w, r2.z, r2.z
dp2add_pp r0.y, r0.w, r0.y, c7.x
mul_pp r0.w, r0.z, r0.z
mul_pp r0.w, r0.w, r0.w
mul_pp r0.z, r0.z, r0.w
lrp_pp r2.xzw, r0.z, r0.x, c1.xyyz
mul_pp r0.xzw, r1.xyyw, r2
max_pp r1.x, c1.x, c1.y
max_pp r2.x, r1.x, c1.z
add_pp r1.x, -r2.x, c5.x
texld r4, v0, s0
mul_pp r2.xzw, r4.xyyz, c3.xyyz
mul_pp r1.xyw, r1.x, r2.xzzw
mul_pp r2.x, r1.z, r1.z
mul_pp r2.x, r2.x, r2.x
mul_pp r1.z, r1.z, r2.x
mad_pp r1.z, r0.y, r1.z, c5.x
add_pp r2.x, -r2.y, c5.x
mul_pp r2.z, r2.x, r2.x
mul_pp r2.z, r2.z, r2.z
mul_pp r2.x, r2.x, r2.z
mad_pp r0.y, r0.y, r2.x, c5.x
mul_pp r0.y, r1.z, r0.y
mul_pp r0.y, r2.y, r0.y
mul_pp r2.xyz, r0.y, r3
mad_pp oC0.xyz, r1.xyww, r2, r0.xzww
mov_pp oC0.w, c5.x

"
}
SubProgram "d3d9 " {
// Stats: 81 math, 3 textures
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
Vector 3 [_Color]
Float 4 [_Glossiness]
Vector 0 [_LightColor0]
Vector 1 [_SpecColor]
Vector 2 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_ShadowMapTexture] 2D 1
SetTexture 2 [_LightTexture0] 2D 2
"ps_3_0
def c5, 1, 0, 0.00100000005, 31.622776
def c6, 9.99999975e-005, 0.967999995, 0.0299999993, 10
def c7, -0.5, 0, 0, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2.w
dcl_texcoord3_pp v3.w
dcl_texcoord4_pp v4
dcl_texcoord5 v5.xy
dcl_texcoord6 v6
dcl_2d s0
dcl_2d s1
dcl_2d s2
mov r0.x, c5.x
add_pp r0.y, r0.x, -c4.x
add_pp r0.z, -r0.y, c5.x
mad_pp r0.z, r0.z, c6.y, c6.z
log_pp r0.z, r0.z
rcp r0.z, r0.z
mul_pp r0.z, r0.z, c6.w
mad_pp r0.w, r0.z, r0.z, c5.x
mul_pp r0.z, r0.z, r0.z
mul_pp r0.w, r0.w, c2.y
dp3_pp r1.x, v1, v1
rsq_pp r1.x, r1.x
mov_pp r2.x, v2.w
mov_pp r2.y, v3.w
mov_pp r2.z, v4.w
mad_pp r1.yzw, v1.xxyz, -r1.x, r2.xxyz
mul_pp r3.xyz, r1.x, v1
dp3_pp r1.x, r1.yzww, r1.yzww
add r2.w, -r1.x, c5.z
rsq_pp r1.x, r1.x
cmp_pp r1.x, r2.w, c5.w, r1.x
mul_pp r1.xyz, r1.x, r1.yzww
nrm_pp r4.xyz, v4
dp3_pp r1.w, r4, r1
dp3_pp r1.x, r2, r1
dp3_pp r1.y, r4, r2
dp3_pp r1.z, r4, -r3
max_pp r2.x, r1.z, c5.y
max_pp r2.y, r1.y, c5.y
max_pp r2.z, r1.x, c5.y
max_pp r2.w, r1.w, c5.y
pow_pp r1.x, r2.w, r0.z
mul_pp r0.z, r0.w, r1.x
mul_pp r0.w, r0.y, r0.y
mul_pp r1.x, r0.w, c2.w
mad_pp r0.w, r0.w, -c2.w, r0.x
mad_pp r1.y, r2.x, r0.w, r1.x
add_pp r1.z, -r2.x, c5.x
mad_pp r0.w, r2.y, r0.w, r1.x
mad r0.w, r0.w, r1.y, c6.x
rcp_pp r0.w, r0.w
mul_pp r0.z, r0.z, r0.w
mul_pp r0.z, r2.y, r0.z
mul_pp r0.z, r0.z, c2.x
max_pp r1.x, r0.z, c5.y
texld r3, v5, s2
texldp_pp r4, v6, s1
mul_pp r0.z, r3.w, r4.x
mul_pp r3.xyz, r0.z, c0
mul_pp r1.xyw, r1.x, r3.xyzz
add_pp r0.z, -r2.z, c5.x
mul_pp r0.w, r2.z, r2.z
dp2add_pp r0.y, r0.w, r0.y, c7.x
mul_pp r0.w, r0.z, r0.z
mul_pp r0.w, r0.w, r0.w
mul_pp r0.z, r0.z, r0.w
lrp_pp r2.xzw, r0.z, r0.x, c1.xyyz
mul_pp r0.xzw, r1.xyyw, r2
max_pp r1.x, c1.x, c1.y
max_pp r2.x, r1.x, c1.z
add_pp r1.x, -r2.x, c5.x
texld r4, v0, s0
mul_pp r2.xzw, r4.xyyz, c3.xyyz
mul_pp r1.xyw, r1.x, r2.xzzw
mul_pp r2.x, r1.z, r1.z
mul_pp r2.x, r2.x, r2.x
mul_pp r1.z, r1.z, r2.x
mad_pp r1.z, r0.y, r1.z, c5.x
add_pp r2.x, -r2.y, c5.x
mul_pp r2.z, r2.x, r2.x
mul_pp r2.z, r2.z, r2.z
mul_pp r2.x, r2.x, r2.z
mad_pp r0.y, r0.y, r2.x, c5.x
mul_pp r0.y, r1.z, r0.y
mul_pp r0.y, r2.y, r0.y
mul_pp r2.xyz, r0.y, r3
mad_pp oC0.xyz, r1.xyww, r2, r0.xzww
mov_pp oC0.w, c5.x

"
}
SubProgram "d3d9 " {
// Stats: 91 math, 3 textures
Keywords { "POINT" "SHADOWS_CUBE" }
Vector 5 [_Color]
Float 6 [_Glossiness]
Vector 2 [_LightColor0]
Vector 0 [_LightPositionRange]
Vector 1 [_LightShadowData]
Vector 3 [_SpecColor]
Vector 4 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_ShadowMapTexture] CUBE 1
SetTexture 2 [_LightTexture0] 2D 2
"ps_3_0
def c7, 1, 0.970000029, 0, 0.00100000005
def c8, 31.622776, 9.99999975e-005, 0.967999995, 0.0299999993
def c9, 10, -0.5, 0, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2.w
dcl_texcoord3_pp v3.w
dcl_texcoord4_pp v4
dcl_texcoord5 v5.xyz
dcl_texcoord6 v6.xyz
dcl_2d s0
dcl_cube s1
dcl_2d s2
mov r0.x, c7.x
add_pp r0.y, r0.x, -c6.x
add_pp r0.z, -r0.y, c7.x
mad_pp r0.z, r0.z, c8.z, c8.w
log_pp r0.z, r0.z
rcp r0.z, r0.z
mul_pp r0.z, r0.z, c9.x
mad_pp r0.w, r0.z, r0.z, c7.x
mul_pp r0.z, r0.z, r0.z
mul_pp r0.w, r0.w, c4.y
nrm_pp r1.xyz, v1
mov_pp r2.x, v2.w
mov_pp r2.y, v3.w
mov_pp r2.z, v4.w
dp3_pp r1.w, r2, r2
rsq_pp r1.w, r1.w
mad_pp r3.xyz, r2, r1.w, -r1
mul_pp r2.xyz, r1.w, r2
dp3_pp r1.w, r3, r3
add r2.w, -r1.w, c7.w
rsq_pp r1.w, r1.w
cmp_pp r1.w, r2.w, c8.x, r1.w
mul_pp r3.xyz, r1.w, r3
nrm_pp r4.xyz, v4
dp3_pp r1.w, r4, r3
dp3_pp r2.w, r2, r3
dp3_pp r2.x, r4, r2
dp3_pp r1.x, r4, -r1
max_pp r2.y, r1.x, c7.z
max_pp r1.x, r2.x, c7.z
max_pp r1.y, r2.w, c7.z
max_pp r2.x, r1.w, c7.z
pow_pp r1.z, r2.x, r0.z
mul_pp r0.z, r0.w, r1.z
mul_pp r0.w, r0.y, r0.y
mul_pp r1.z, r0.w, c4.w
mad_pp r0.w, r0.w, -c4.w, r0.x
mad_pp r1.w, r2.y, r0.w, r1.z
add_pp r2.x, -r2.y, c7.x
mad_pp r0.w, r1.x, r0.w, r1.z
mad r0.w, r0.w, r1.w, c8.y
rcp_pp r0.w, r0.w
mul_pp r0.z, r0.z, r0.w
mul_pp r0.z, r1.x, r0.z
mul_pp r0.z, r0.z, c4.x
max_pp r1.z, r0.z, c7.z
dp3 r0.z, v6, v6
rsq r0.z, r0.z
rcp r0.z, r0.z
mul r0.z, r0.z, c0.w
texld r3, v6, s1
mad r0.z, r0.z, -c7.y, r3.x
cmp_pp r0.z, r0.z, r0.x, c1.x
dp3 r0.w, v5, v5
texld r3, r0.w, s2
mul_pp r0.z, r0.z, r3.x
mul_pp r2.yzw, r0.z, c2.xxyz
mul_pp r3.xyz, r1.z, r2.yzww
add_pp r0.z, -r1.y, c7.x
mul_pp r0.w, r1.y, r1.y
dp2add_pp r0.y, r0.w, r0.y, c9.y
mul_pp r0.w, r0.z, r0.z
mul_pp r0.w, r0.w, r0.w
mul_pp r0.z, r0.z, r0.w
lrp_pp r1.yzw, r0.z, r0.x, c3.xxyz
mul_pp r0.xzw, r1.yyzw, r3.xyyz
max_pp r1.y, c3.x, c3.y
max_pp r3.x, r1.y, c3.z
add_pp r1.y, -r3.x, c7.x
texld r3, v0, s0
mul_pp r3.xyz, r3, c5
mul_pp r1.yzw, r1.y, r3.xxyz
mul_pp r3.x, r2.x, r2.x
mul_pp r3.x, r3.x, r3.x
mul_pp r2.x, r2.x, r3.x
mad_pp r2.x, r0.y, r2.x, c7.x
add_pp r3.x, -r1.x, c7.x
mul_pp r3.y, r3.x, r3.x
mul_pp r3.y, r3.y, r3.y
mul_pp r3.x, r3.x, r3.y
mad_pp r0.y, r0.y, r3.x, c7.x
mul_pp r0.y, r2.x, r0.y
mul_pp r0.y, r1.x, r0.y
mul_pp r2.xyz, r0.y, r2.yzww
mad_pp oC0.xyz, r1.yzww, r2, r0.xzww
mov_pp oC0.w, c7.x

"
}
SubProgram "d3d9 " {
// Stats: 91 math, 4 textures
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
Vector 5 [_Color]
Float 6 [_Glossiness]
Vector 2 [_LightColor0]
Vector 0 [_LightPositionRange]
Vector 1 [_LightShadowData]
Vector 3 [_SpecColor]
Vector 4 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_ShadowMapTexture] CUBE 1
SetTexture 2 [_LightTexture0] CUBE 2
SetTexture 3 [_LightTextureB0] 2D 3
"ps_3_0
def c7, 1, 0.970000029, 0, 0.00100000005
def c8, 31.622776, 9.99999975e-005, 0.967999995, 0.0299999993
def c9, 10, -0.5, 0, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2.w
dcl_texcoord3_pp v3.w
dcl_texcoord4_pp v4
dcl_texcoord5 v5.xyz
dcl_texcoord6 v6.xyz
dcl_2d s0
dcl_cube s1
dcl_cube s2
dcl_2d s3
dp3 r0.x, v6, v6
rsq r0.x, r0.x
rcp r0.x, r0.x
mul r0.x, r0.x, c0.w
texld r1, v6, s1
mad r0.x, r0.x, -c7.y, r1.x
mov r1.x, c7.x
cmp_pp r0.x, r0.x, r1.x, c1.x
dp3 r0.y, v5, v5
texld r2, r0.y, s3
texld r3, v5, s2
mul r0.y, r2.x, r3.w
mul_pp r0.x, r0.x, r0.y
mul_pp r0.xyz, r0.x, c2
add_pp r0.w, r1.x, -c6.x
add_pp r1.y, -r0.w, c7.x
mad_pp r1.y, r1.y, c8.z, c8.w
log_pp r1.y, r1.y
rcp r1.y, r1.y
mul_pp r1.y, r1.y, c9.x
mad_pp r1.z, r1.y, r1.y, c7.x
mul_pp r1.y, r1.y, r1.y
mul_pp r1.z, r1.z, c4.y
nrm_pp r2.xyz, v1
mov_pp r3.x, v2.w
mov_pp r3.y, v3.w
mov_pp r3.z, v4.w
dp3_pp r1.w, r3, r3
rsq_pp r1.w, r1.w
mad_pp r4.xyz, r3, r1.w, -r2
mul_pp r3.xyz, r1.w, r3
dp3_pp r1.w, r4, r4
add r2.w, -r1.w, c7.w
rsq_pp r1.w, r1.w
cmp_pp r1.w, r2.w, c8.x, r1.w
mul_pp r4.xyz, r1.w, r4
nrm_pp r5.xyz, v4
dp3_pp r1.w, r5, r4
dp3_pp r2.w, r3, r4
dp3_pp r3.x, r5, r3
dp3_pp r2.x, r5, -r2
max_pp r3.y, r2.x, c7.z
max_pp r2.x, r3.x, c7.z
max_pp r3.x, r2.w, c7.z
max_pp r2.y, r1.w, c7.z
pow_pp r3.z, r2.y, r1.y
mul_pp r1.y, r1.z, r3.z
mul_pp r1.z, r0.w, r0.w
mul_pp r1.w, r1.z, c4.w
mad_pp r1.z, r1.z, -c4.w, r1.x
mad_pp r2.y, r3.y, r1.z, r1.w
mad_pp r1.z, r2.x, r1.z, r1.w
mad r1.z, r1.z, r2.y, c8.y
rcp_pp r1.z, r1.z
mul_pp r1.y, r1.y, r1.z
mul_pp r1.y, r2.x, r1.y
mul_pp r1.y, r1.y, c4.x
max_pp r2.y, r1.y, c7.z
mul_pp r1.yzw, r0.xxyz, r2.y
add_pp r2.yz, -r3.xxyw, c7.x
mul_pp r2.w, r3.x, r3.x
dp2add_pp r0.w, r2.w, r0.w, c9.y
mul_pp r2.w, r2.y, r2.y
mul_pp r2.w, r2.w, r2.w
mul_pp r2.y, r2.y, r2.w
lrp_pp r3.xyz, r2.y, r1.x, c3
mul_pp r1.xyz, r1.yzww, r3
max_pp r1.w, c3.x, c3.y
max_pp r2.y, r1.w, c3.z
add_pp r1.w, -r2.y, c7.x
texld r3, v0, s0
mul_pp r3.xyz, r3, c5
mul_pp r3.xyz, r1.w, r3
mul_pp r1.w, r2.z, r2.z
mul_pp r1.w, r1.w, r1.w
mul_pp r1.w, r2.z, r1.w
mad_pp r1.w, r0.w, r1.w, c7.x
add_pp r2.y, -r2.x, c7.x
mul_pp r2.z, r2.y, r2.y
mul_pp r2.z, r2.z, r2.z
mul_pp r2.y, r2.y, r2.z
mad_pp r0.w, r0.w, r2.y, c7.x
mul_pp r0.w, r1.w, r0.w
mul_pp r0.w, r2.x, r0.w
mul_pp r0.xyz, r0.w, r0
mad_pp oC0.xyz, r3, r0, r1
mov_pp oC0.w, c7.x

"
}
SubProgram "d3d9 " {
// Stats: 99 math, 7 textures
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "SHADOWS_NATIVE" }
Vector 8 [_Color]
Float 9 [_Glossiness]
Vector 5 [_LightColor0]
Vector 4 [_LightShadowData]
Vector 0 [_ShadowOffsets0]
Vector 1 [_ShadowOffsets1]
Vector 2 [_ShadowOffsets2]
Vector 3 [_ShadowOffsets3]
Vector 6 [_SpecColor]
Vector 7 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_ShadowMapTexture] 2D 1
SetTexture 2 [_LightTexture0] 2D 2
SetTexture 3 [_LightTextureB0] 2D 3
"ps_3_0
def c10, 1, 0.5, 0, 0.25
def c11, 0.00100000005, 31.622776, 9.99999975e-005, 10
def c12, 0.967999995, 0.0299999993, 0, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2.w
dcl_texcoord3_pp v3.w
dcl_texcoord4_pp v4
dcl_texcoord5 v5
dcl_texcoord6 v6
dcl_2d s0
dcl_2d s1
dcl_2d s2
dcl_2d s3
mov r0.x, c10.x
rcp r0.y, v6.w
mad r1, v6, r0.y, c0
texldp_pp r1, r1, s1
mad r2, v6, r0.y, c1
texldp_pp r2, r2, s1
mov_pp r1.y, r2.x
mad r2, v6, r0.y, c2
mad r3, v6, r0.y, c3
texldp_pp r3, r3, s1
mov_pp r1.w, r3.x
texldp_pp r2, r2, s1
mov_pp r1.z, r2.x
lrp_pp r2, r1, r0.x, c4.x
dp4_pp r0.y, r2, c10.w
rcp r0.z, v5.w
mad r0.zw, v5.xyxy, r0.z, c10.y
texld_pp r1, r0.zwzw, s2
dp3 r0.z, v5, v5
texld_pp r2, r0.z, s3
mul r0.z, r1.w, r2.x
cmp r0.z, -v5.z, c10.z, r0.z
mul_pp r0.y, r0.y, r0.z
mul_pp r0.yzw, r0.y, c5.xxyz
add_pp r1.x, r0.x, -c9.x
add_pp r1.y, -r1.x, c10.x
mad_pp r1.y, r1.y, c12.x, c12.y
log_pp r1.y, r1.y
rcp r1.y, r1.y
mul_pp r1.y, r1.y, c11.w
mad_pp r1.z, r1.y, r1.y, c10.x
mul_pp r1.y, r1.y, r1.y
mul_pp r1.z, r1.z, c7.y
nrm_pp r2.xyz, v1
mov_pp r3.x, v2.w
mov_pp r3.y, v3.w
mov_pp r3.z, v4.w
dp3_pp r1.w, r3, r3
rsq_pp r1.w, r1.w
mad_pp r4.xyz, r3, r1.w, -r2
mul_pp r3.xyz, r1.w, r3
dp3_pp r1.w, r4, r4
add r2.w, -r1.w, c11.x
rsq_pp r1.w, r1.w
cmp_pp r1.w, r2.w, c11.y, r1.w
mul_pp r4.xyz, r1.w, r4
nrm_pp r5.xyz, v4
dp3_pp r1.w, r5, r4
dp3_pp r2.w, r3, r4
dp3_pp r3.x, r5, r3
dp3_pp r2.x, r5, -r2
max_pp r3.y, r2.x, c10.z
max_pp r2.x, r3.x, c10.z
max_pp r3.x, r2.w, c10.z
max_pp r2.y, r1.w, c10.z
pow_pp r3.z, r2.y, r1.y
mul_pp r1.y, r1.z, r3.z
mul_pp r1.z, r1.x, r1.x
mul_pp r1.w, r1.z, c7.w
mad_pp r1.z, r1.z, -c7.w, r0.x
mad_pp r2.y, r3.y, r1.z, r1.w
mad_pp r1.z, r2.x, r1.z, r1.w
mad r1.z, r1.z, r2.y, c11.z
rcp_pp r1.z, r1.z
mul_pp r1.y, r1.y, r1.z
mul_pp r1.y, r2.x, r1.y
mul_pp r1.y, r1.y, c7.x
max_pp r2.y, r1.y, c10.z
mul_pp r1.yzw, r0, r2.y
add_pp r2.yz, -r3.xxyw, c10.x
mul_pp r2.w, r3.x, r3.x
dp2add_pp r1.x, r2.w, r1.x, -c10.y
mul_pp r2.w, r2.y, r2.y
mul_pp r2.w, r2.w, r2.w
mul_pp r2.y, r2.y, r2.w
lrp_pp r3.xyz, r2.y, r0.x, c6
mul_pp r1.yzw, r1, r3.xxyz
max_pp r0.x, c6.x, c6.y
max_pp r2.y, r0.x, c6.z
add_pp r0.x, -r2.y, c10.x
texld r3, v0, s0
mul_pp r3.xyz, r3, c8
mul_pp r3.xyz, r0.x, r3
mul_pp r0.x, r2.z, r2.z
mul_pp r0.x, r0.x, r0.x
mul_pp r0.x, r2.z, r0.x
mad_pp r0.x, r1.x, r0.x, c10.x
add_pp r2.y, -r2.x, c10.x
mul_pp r2.z, r2.y, r2.y
mul_pp r2.z, r2.z, r2.z
mul_pp r2.y, r2.y, r2.z
mad_pp r1.x, r1.x, r2.y, c10.x
mul_pp r0.x, r0.x, r1.x
mul_pp r0.x, r2.x, r0.x
mul_pp r0.xyz, r0.x, r0.yzww
mad_pp oC0.xyz, r3, r0, r1.yzww
mov_pp oC0.w, c10.x

"
}
SubProgram "d3d9 " {
// Stats: 98 math, 6 textures
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Vector 5 [_Color]
Float 6 [_Glossiness]
Vector 2 [_LightColor0]
Vector 0 [_LightPositionRange]
Vector 1 [_LightShadowData]
Vector 3 [_SpecColor]
Vector 4 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_ShadowMapTexture] CUBE 1
SetTexture 2 [_LightTexture0] 2D 2
"ps_3_0
def c7, 1, 0.0078125, -0.0078125, 0.970000029
def c8, 0.25, 0, 0.00100000005, 31.622776
def c9, 9.99999975e-005, 0.967999995, 0.0299999993, 10
def c10, -0.5, 0, 0, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2.w
dcl_texcoord3_pp v3.w
dcl_texcoord4_pp v4
dcl_texcoord5 v5.xyz
dcl_texcoord6 v6.xyz
dcl_2d s0
dcl_cube s1
dcl_2d s2
dp3 r0.x, v6, v6
rsq r0.x, r0.x
rcp r0.x, r0.x
mul r0.x, r0.x, c0.w
add r0.yzw, c7.y, v6.xxyz
texld r1, r0.yzww, s1
add r0.yzw, c7.xzzy, v6.xxyz
texld r2, r0.yzww, s1
mov r1.y, r2.x
add r0.yzw, c7.xzyz, v6.xxyz
texld r2, r0.yzww, s1
mov r1.z, r2.x
add r0.yzw, c7.xyzz, v6.xxyz
texld r2, r0.yzww, s1
mov r1.w, r2.x
mad r0, r0.x, -c7.w, r1
mov r1.x, c7.x
cmp_pp r0, r0, r1.x, c1.x
dp4_pp r0.x, r0, c8.x
dp3 r0.y, v5, v5
texld r2, r0.y, s2
mul_pp r0.x, r0.x, r2.x
mul_pp r0.xyz, r0.x, c2
add_pp r0.w, r1.x, -c6.x
add_pp r1.y, -r0.w, c7.x
mad_pp r1.y, r1.y, c9.y, c9.z
log_pp r1.y, r1.y
rcp r1.y, r1.y
mul_pp r1.y, r1.y, c9.w
mad_pp r1.z, r1.y, r1.y, c7.x
mul_pp r1.y, r1.y, r1.y
mul_pp r1.z, r1.z, c4.y
nrm_pp r2.xyz, v1
mov_pp r3.x, v2.w
mov_pp r3.y, v3.w
mov_pp r3.z, v4.w
dp3_pp r1.w, r3, r3
rsq_pp r1.w, r1.w
mad_pp r4.xyz, r3, r1.w, -r2
mul_pp r3.xyz, r1.w, r3
dp3_pp r1.w, r4, r4
add r2.w, -r1.w, c8.z
rsq_pp r1.w, r1.w
cmp_pp r1.w, r2.w, c8.w, r1.w
mul_pp r4.xyz, r1.w, r4
nrm_pp r5.xyz, v4
dp3_pp r1.w, r5, r4
dp3_pp r2.w, r3, r4
dp3_pp r3.x, r5, r3
dp3_pp r2.x, r5, -r2
max_pp r3.y, r2.x, c8.y
max_pp r2.x, r3.x, c8.y
max_pp r3.x, r2.w, c8.y
max_pp r2.y, r1.w, c8.y
pow_pp r3.z, r2.y, r1.y
mul_pp r1.y, r1.z, r3.z
mul_pp r1.z, r0.w, r0.w
mul_pp r1.w, r1.z, c4.w
mad_pp r1.z, r1.z, -c4.w, r1.x
mad_pp r2.y, r3.y, r1.z, r1.w
mad_pp r1.z, r2.x, r1.z, r1.w
mad r1.z, r1.z, r2.y, c9.x
rcp_pp r1.z, r1.z
mul_pp r1.y, r1.y, r1.z
mul_pp r1.y, r2.x, r1.y
mul_pp r1.y, r1.y, c4.x
max_pp r2.y, r1.y, c8.y
mul_pp r1.yzw, r0.xxyz, r2.y
add_pp r2.yz, -r3.xxyw, c7.x
mul_pp r2.w, r3.x, r3.x
dp2add_pp r0.w, r2.w, r0.w, c10.x
mul_pp r2.w, r2.y, r2.y
mul_pp r2.w, r2.w, r2.w
mul_pp r2.y, r2.y, r2.w
lrp_pp r3.xyz, r2.y, r1.x, c3
mul_pp r1.xyz, r1.yzww, r3
max_pp r1.w, c3.x, c3.y
max_pp r2.y, r1.w, c3.z
add_pp r1.w, -r2.y, c7.x
texld r3, v0, s0
mul_pp r3.xyz, r3, c5
mul_pp r3.xyz, r1.w, r3
mul_pp r1.w, r2.z, r2.z
mul_pp r1.w, r1.w, r1.w
mul_pp r1.w, r2.z, r1.w
mad_pp r1.w, r0.w, r1.w, c7.x
add_pp r2.y, -r2.x, c7.x
mul_pp r2.z, r2.y, r2.y
mul_pp r2.z, r2.z, r2.z
mul_pp r2.y, r2.y, r2.z
mad_pp r0.w, r0.w, r2.y, c7.x
mul_pp r0.w, r1.w, r0.w
mul_pp r0.w, r2.x, r0.w
mul_pp r0.xyz, r0.w, r0
mad_pp oC0.xyz, r3, r0, r1
mov_pp oC0.w, c7.x

"
}
SubProgram "d3d9 " {
// Stats: 99 math, 7 textures
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Vector 5 [_Color]
Float 6 [_Glossiness]
Vector 2 [_LightColor0]
Vector 0 [_LightPositionRange]
Vector 1 [_LightShadowData]
Vector 3 [_SpecColor]
Vector 4 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_ShadowMapTexture] CUBE 1
SetTexture 2 [_LightTexture0] CUBE 2
SetTexture 3 [_LightTextureB0] 2D 3
"ps_3_0
def c7, 1, 0.0078125, -0.0078125, 0.970000029
def c8, 0.25, 0, 0.00100000005, 31.622776
def c9, 9.99999975e-005, 0.967999995, 0.0299999993, 10
def c10, -0.5, 0, 0, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2.w
dcl_texcoord3_pp v3.w
dcl_texcoord4_pp v4
dcl_texcoord5 v5.xyz
dcl_texcoord6 v6.xyz
dcl_2d s0
dcl_cube s1
dcl_cube s2
dcl_2d s3
dp3 r0.x, v6, v6
rsq r0.x, r0.x
rcp r0.x, r0.x
mul r0.x, r0.x, c0.w
add r0.yzw, c7.y, v6.xxyz
texld r1, r0.yzww, s1
add r0.yzw, c7.xzzy, v6.xxyz
texld r2, r0.yzww, s1
mov r1.y, r2.x
add r0.yzw, c7.xzyz, v6.xxyz
texld r2, r0.yzww, s1
mov r1.z, r2.x
add r0.yzw, c7.xyzz, v6.xxyz
texld r2, r0.yzww, s1
mov r1.w, r2.x
mad r0, r0.x, -c7.w, r1
mov r1.x, c7.x
cmp_pp r0, r0, r1.x, c1.x
dp4_pp r0.x, r0, c8.x
dp3 r0.y, v5, v5
texld r2, r0.y, s3
texld r3, v5, s2
mul r0.y, r2.x, r3.w
mul_pp r0.x, r0.x, r0.y
mul_pp r0.xyz, r0.x, c2
add_pp r0.w, r1.x, -c6.x
add_pp r1.y, -r0.w, c7.x
mad_pp r1.y, r1.y, c9.y, c9.z
log_pp r1.y, r1.y
rcp r1.y, r1.y
mul_pp r1.y, r1.y, c9.w
mad_pp r1.z, r1.y, r1.y, c7.x
mul_pp r1.y, r1.y, r1.y
mul_pp r1.z, r1.z, c4.y
nrm_pp r2.xyz, v1
mov_pp r3.x, v2.w
mov_pp r3.y, v3.w
mov_pp r3.z, v4.w
dp3_pp r1.w, r3, r3
rsq_pp r1.w, r1.w
mad_pp r4.xyz, r3, r1.w, -r2
mul_pp r3.xyz, r1.w, r3
dp3_pp r1.w, r4, r4
add r2.w, -r1.w, c8.z
rsq_pp r1.w, r1.w
cmp_pp r1.w, r2.w, c8.w, r1.w
mul_pp r4.xyz, r1.w, r4
nrm_pp r5.xyz, v4
dp3_pp r1.w, r5, r4
dp3_pp r2.w, r3, r4
dp3_pp r3.x, r5, r3
dp3_pp r2.x, r5, -r2
max_pp r3.y, r2.x, c8.y
max_pp r2.x, r3.x, c8.y
max_pp r3.x, r2.w, c8.y
max_pp r2.y, r1.w, c8.y
pow_pp r3.z, r2.y, r1.y
mul_pp r1.y, r1.z, r3.z
mul_pp r1.z, r0.w, r0.w
mul_pp r1.w, r1.z, c4.w
mad_pp r1.z, r1.z, -c4.w, r1.x
mad_pp r2.y, r3.y, r1.z, r1.w
mad_pp r1.z, r2.x, r1.z, r1.w
mad r1.z, r1.z, r2.y, c9.x
rcp_pp r1.z, r1.z
mul_pp r1.y, r1.y, r1.z
mul_pp r1.y, r2.x, r1.y
mul_pp r1.y, r1.y, c4.x
max_pp r2.y, r1.y, c8.y
mul_pp r1.yzw, r0.xxyz, r2.y
add_pp r2.yz, -r3.xxyw, c7.x
mul_pp r2.w, r3.x, r3.x
dp2add_pp r0.w, r2.w, r0.w, c10.x
mul_pp r2.w, r2.y, r2.y
mul_pp r2.w, r2.w, r2.w
mul_pp r2.y, r2.y, r2.w
lrp_pp r3.xyz, r2.y, r1.x, c3
mul_pp r1.xyz, r1.yzww, r3
max_pp r1.w, c3.x, c3.y
max_pp r2.y, r1.w, c3.z
add_pp r1.w, -r2.y, c7.x
texld r3, v0, s0
mul_pp r3.xyz, r3, c5
mul_pp r3.xyz, r1.w, r3
mul_pp r1.w, r2.z, r2.z
mul_pp r1.w, r1.w, r1.w
mul_pp r1.w, r2.z, r1.w
mad_pp r1.w, r0.w, r1.w, c7.x
add_pp r2.y, -r2.x, c7.x
mul_pp r2.z, r2.y, r2.y
mul_pp r2.z, r2.z, r2.z
mul_pp r2.y, r2.y, r2.z
mad_pp r0.w, r0.w, r2.y, c7.x
mul_pp r0.w, r1.w, r0.w
mul_pp r0.w, r2.x, r0.w
mul_pp r0.xyz, r0.w, r0
mad_pp oC0.xyz, r3, r0, r1
mov_pp oC0.w, c7.x

"
}
SubProgram "d3d9 " {
// Stats: 94 math, 3 textures
Keywords { "POINT" "SHADOWS_OFF" "_NORMALMAP" }
Float 4 [_BumpScale]
Vector 3 [_Color]
Float 5 [_Glossiness]
Vector 0 [_LightColor0]
Vector 1 [_SpecColor]
Vector 2 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_BumpMap] 2D 1
SetTexture 2 [_LightTexture0] 2D 2
"ps_3_0
def c6, 2, -1, 0, 1
def c7, 0.00100000005, 31.622776, 9.99999975e-005, 10
def c8, 0.967999995, 0.0299999993, -0.5, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2
dcl_texcoord3_pp v3
dcl_texcoord4_pp v4
dcl_texcoord5 v5.xyz
dcl_2d s0
dcl_2d s1
dcl_2d s2
texld_pp r0, v0, s1
mad_pp r0.xy, r0.wyzw, c6.x, c6.y
mul_pp r0.xy, r0, c4.x
mul_pp r1.xyz, r0.y, v3
mad_pp r1.xyz, r0.x, v2, r1
dp2add_sat_pp r0.x, r0, r0, c6.z
add_pp r0.x, -r0.x, c6.w
rsq_pp r0.x, r0.x
rcp_pp r0.x, r0.x
mad_pp r0.xyz, r0.x, v4, r1
nrm_pp r1.xyz, r0
nrm_pp r0.xyz, v1
mov_pp r2.x, v2.w
mov_pp r2.y, v3.w
mov_pp r2.z, v4.w
dp3_pp r0.w, r2, r2
rsq_pp r0.w, r0.w
mad_pp r3.xyz, r2, r0.w, -r0
dp3_pp r0.x, r1, -r0
max_pp r1.w, r0.x, c6.z
mul_pp r0.xyz, r0.w, r2
dp3_pp r0.w, r3, r3
add r2.x, -r0.w, c7.x
rsq_pp r0.w, r0.w
cmp_pp r0.w, r2.x, c7.y, r0.w
mul_pp r2.xyz, r0.w, r3
dp3_pp r0.w, r1, r2
dp3_pp r1.x, r1, r0
dp3_pp r0.x, r0, r2
max_pp r1.y, r0.x, c6.z
max_pp r0.x, r1.x, c6.z
max_pp r1.x, r0.w, c6.z
mov r0.w, c6.w
add_pp r0.y, r0.w, -c5.x
add_pp r0.z, -r0.y, c6.w
mad_pp r0.z, r0.z, c8.x, c8.y
log_pp r0.z, r0.z
rcp r0.z, r0.z
mul_pp r0.z, r0.z, c7.w
mul_pp r1.z, r0.z, r0.z
mad_pp r0.z, r0.z, r0.z, c6.w
mul_pp r0.z, r0.z, c2.y
pow_pp r2.x, r1.x, r1.z
mul_pp r0.z, r0.z, r2.x
mul_pp r1.x, r0.y, r0.y
mul_pp r1.z, r1.x, c2.w
mad_pp r1.x, r1.x, -c2.w, r0.w
mad_pp r2.x, r1.w, r1.x, r1.z
add_pp r1.w, -r1.w, c6.w
mad_pp r1.x, r0.x, r1.x, r1.z
mad r1.x, r1.x, r2.x, c7.z
rcp_pp r1.x, r1.x
mul_pp r0.z, r0.z, r1.x
mul_pp r0.z, r0.x, r0.z
mul_pp r0.z, r0.z, c2.x
max_pp r1.x, r0.z, c6.z
dp3 r0.z, v5, v5
texld_pp r2, r0.z, s2
mul_pp r2.xyz, r2.x, c0
mul_pp r3.xyz, r1.x, r2
add_pp r0.z, -r1.y, c6.w
mul_pp r1.x, r1.y, r1.y
dp2add_pp r0.y, r1.x, r0.y, c8.z
mul_pp r1.x, r0.z, r0.z
mul_pp r1.x, r1.x, r1.x
mul_pp r0.z, r0.z, r1.x
lrp_pp r1.xyz, r0.z, r0.w, c1
mul_pp r1.xyz, r1, r3
max_pp r0.z, c1.x, c1.y
max_pp r2.w, r0.z, c1.z
add_pp r0.z, -r2.w, c6.w
texld r3, v0, s0
mul_pp r3.xyz, r3, c3
mul_pp r3.xyz, r0.z, r3
mul_pp r0.z, r1.w, r1.w
mul_pp r0.z, r0.z, r0.z
mul_pp r0.z, r1.w, r0.z
mad_pp r0.z, r0.y, r0.z, c6.w
add_pp r0.w, -r0.x, c6.w
mul_pp r1.w, r0.w, r0.w
mul_pp r1.w, r1.w, r1.w
mul_pp r0.w, r0.w, r1.w
mad_pp r0.y, r0.y, r0.w, c6.w
mul_pp r0.y, r0.z, r0.y
mul_pp r0.x, r0.x, r0.y
mul_pp r0.xyz, r0.x, r2
mad_pp oC0.xyz, r3, r0, r1
mov_pp oC0.w, c6.w

"
}
SubProgram "d3d9 " {
// Stats: 89 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "_NORMALMAP" }
Float 4 [_BumpScale]
Vector 3 [_Color]
Float 5 [_Glossiness]
Vector 0 [_LightColor0]
Vector 1 [_SpecColor]
Vector 2 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_BumpMap] 2D 1
"ps_3_0
def c6, 2, -1, 0, 1
def c7, 0.00100000005, 31.622776, 9.99999975e-005, 10
def c8, 0.967999995, 0.0299999993, -0.5, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2
dcl_texcoord3_pp v3
dcl_texcoord4_pp v4
dcl_2d s0
dcl_2d s1
texld_pp r0, v0, s1
mad_pp r0.xy, r0.wyzw, c6.x, c6.y
mul_pp r0.xy, r0, c4.x
mul_pp r1.xyz, r0.y, v3
mad_pp r1.xyz, r0.x, v2, r1
dp2add_sat_pp r0.x, r0, r0, c6.z
add_pp r0.x, -r0.x, c6.w
rsq_pp r0.x, r0.x
rcp_pp r0.x, r0.x
mad_pp r0.xyz, r0.x, v4, r1
nrm_pp r1.xyz, r0
dp3_pp r0.x, v1, v1
rsq_pp r0.x, r0.x
mov_pp r2.x, v2.w
mov_pp r2.y, v3.w
mov_pp r2.z, v4.w
mad_pp r0.yzw, v1.xxyz, -r0.x, r2.xxyz
mul_pp r3.xyz, r0.x, v1
dp3_pp r0.x, r1, -r3
max_pp r1.w, r0.x, c6.z
dp3_pp r0.x, r0.yzww, r0.yzww
add r2.w, -r0.x, c7.x
rsq_pp r0.x, r0.x
cmp_pp r0.x, r2.w, c7.y, r0.x
mul_pp r0.xyz, r0.x, r0.yzww
dp3_pp r0.w, r1, r0
dp3_pp r1.x, r1, r2
dp3_pp r0.x, r2, r0
max_pp r1.y, r0.x, c6.z
max_pp r0.x, r1.x, c6.z
max_pp r1.x, r0.w, c6.z
mov r0.w, c6.w
add_pp r0.y, r0.w, -c5.x
add_pp r0.z, -r0.y, c6.w
mad_pp r0.z, r0.z, c8.x, c8.y
log_pp r0.z, r0.z
rcp r0.z, r0.z
mul_pp r0.z, r0.z, c7.w
mul_pp r1.z, r0.z, r0.z
mad_pp r0.z, r0.z, r0.z, c6.w
mul_pp r0.z, r0.z, c2.y
pow_pp r2.x, r1.x, r1.z
mul_pp r0.z, r0.z, r2.x
mul_pp r1.x, r0.y, r0.y
mul_pp r1.z, r1.x, c2.w
mad_pp r1.x, r1.x, -c2.w, r0.w
mad_pp r2.x, r1.w, r1.x, r1.z
add_pp r1.w, -r1.w, c6.w
mad_pp r1.x, r0.x, r1.x, r1.z
mad r1.x, r1.x, r2.x, c7.z
rcp_pp r1.x, r1.x
mul_pp r0.z, r0.z, r1.x
mul_pp r0.z, r0.x, r0.z
mul_pp r0.z, r0.z, c2.x
mul_pp r2.xyz, r0.z, c0
cmp_pp r2.xyz, r0.z, r2, c6.z
add_pp r0.z, -r1.y, c6.w
mul_pp r1.x, r1.y, r1.y
dp2add_pp r0.y, r1.x, r0.y, c8.z
mul_pp r1.x, r0.z, r0.z
mul_pp r1.x, r1.x, r1.x
mul_pp r0.z, r0.z, r1.x
lrp_pp r1.xyz, r0.z, r0.w, c1
mul_pp r1.xyz, r1, r2
max_pp r0.z, c1.x, c1.y
max_pp r2.x, r0.z, c1.z
add_pp r0.z, -r2.x, c6.w
texld r2, v0, s0
mul_pp r2.xyz, r2, c3
mul_pp r2.xyz, r0.z, r2
mul_pp r0.z, r1.w, r1.w
mul_pp r0.z, r0.z, r0.z
mul_pp r0.z, r1.w, r0.z
mad_pp r0.z, r0.y, r0.z, c6.w
add_pp r0.w, -r0.x, c6.w
mul_pp r1.w, r0.w, r0.w
mul_pp r1.w, r1.w, r1.w
mul_pp r0.w, r0.w, r1.w
mad_pp r0.y, r0.y, r0.w, c6.w
mul_pp r0.y, r0.z, r0.y
mul_pp r0.x, r0.x, r0.y
mul_pp r0.xyz, r0.x, c0
mad_pp oC0.xyz, r2, r0, r1
mov_pp oC0.w, c6.w

"
}
SubProgram "d3d9 " {
// Stats: 98 math, 4 textures
Keywords { "SPOT" "SHADOWS_OFF" "_NORMALMAP" }
Float 4 [_BumpScale]
Vector 3 [_Color]
Float 5 [_Glossiness]
Vector 0 [_LightColor0]
Vector 1 [_SpecColor]
Vector 2 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_BumpMap] 2D 1
SetTexture 2 [_LightTexture0] 2D 2
SetTexture 3 [_LightTextureB0] 2D 3
"ps_3_0
def c6, 0.5, 0.00100000005, 31.622776, 9.99999975e-005
def c7, 0.967999995, 0.0299999993, 10, 0
def c8, 2, -1, 0, 1
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2
dcl_texcoord3_pp v3
dcl_texcoord4_pp v4
dcl_texcoord5 v5
dcl_2d s0
dcl_2d s1
dcl_2d s2
dcl_2d s3
texld_pp r0, v0, s1
mad_pp r0.xy, r0.wyzw, c8.x, c8.y
mul_pp r0.xy, r0, c4.x
mul_pp r1.xyz, r0.y, v3
mad_pp r1.xyz, r0.x, v2, r1
dp2add_sat_pp r0.x, r0, r0, c8.z
add_pp r0.x, -r0.x, c8.w
rsq_pp r0.x, r0.x
rcp_pp r0.x, r0.x
mad_pp r0.xyz, r0.x, v4, r1
nrm_pp r1.xyz, r0
nrm_pp r0.xyz, v1
mov_pp r2.x, v2.w
mov_pp r2.y, v3.w
mov_pp r2.z, v4.w
dp3_pp r0.w, r2, r2
rsq_pp r0.w, r0.w
mad_pp r3.xyz, r2, r0.w, -r0
dp3_pp r0.x, r1, -r0
max_pp r1.w, r0.x, c8.z
mul_pp r0.xyz, r0.w, r2
dp3_pp r0.w, r3, r3
add r2.x, -r0.w, c6.y
rsq_pp r0.w, r0.w
cmp_pp r0.w, r2.x, c6.z, r0.w
mul_pp r2.xyz, r0.w, r3
dp3_pp r0.w, r1, r2
dp3_pp r1.x, r1, r0
dp3_pp r0.x, r0, r2
max_pp r1.y, r0.x, c8.z
max_pp r0.x, r1.x, c8.z
max_pp r1.x, r0.w, c8.z
mov r0.w, c8.w
add_pp r0.y, r0.w, -c5.x
add_pp r0.z, -r0.y, c8.w
mad_pp r0.z, r0.z, c7.x, c7.y
log_pp r0.z, r0.z
rcp r0.z, r0.z
mul_pp r0.z, r0.z, c7.z
mul_pp r1.z, r0.z, r0.z
mad_pp r0.z, r0.z, r0.z, c8.w
mul_pp r0.z, r0.z, c2.y
pow_pp r2.x, r1.x, r1.z
mul_pp r0.z, r0.z, r2.x
mul_pp r1.x, r0.y, r0.y
mul_pp r1.z, r1.x, c2.w
mad_pp r1.x, r1.x, -c2.w, r0.w
mad_pp r2.x, r1.w, r1.x, r1.z
add_pp r1.w, -r1.w, c8.w
mad_pp r1.x, r0.x, r1.x, r1.z
mad r1.x, r1.x, r2.x, c6.w
rcp_pp r1.x, r1.x
mul_pp r0.z, r0.z, r1.x
mul_pp r0.z, r0.x, r0.z
mul_pp r0.z, r0.z, c2.x
max_pp r1.x, r0.z, c8.z
rcp r0.z, v5.w
mad r2.xy, v5, r0.z, c6.x
texld_pp r2, r2, s2
dp3 r0.z, v5, v5
texld_pp r3, r0.z, s3
mul r0.z, r2.w, r3.x
mul_pp r2.xyz, r0.z, c0
cmp_pp r2.xyz, -v5.z, c8.z, r2
mul_pp r3.xyz, r1.x, r2
add_pp r0.z, -r1.y, c8.w
mul_pp r1.x, r1.y, r1.y
dp2add_pp r0.y, r1.x, r0.y, -c6.x
mul_pp r1.x, r0.z, r0.z
mul_pp r1.x, r1.x, r1.x
mul_pp r0.z, r0.z, r1.x
lrp_pp r1.xyz, r0.z, r0.w, c1
mul_pp r1.xyz, r1, r3
max_pp r0.z, c1.x, c1.y
max_pp r2.w, r0.z, c1.z
add_pp r0.z, -r2.w, c8.w
texld r3, v0, s0
mul_pp r3.xyz, r3, c3
mul_pp r3.xyz, r0.z, r3
mul_pp r0.z, r1.w, r1.w
mul_pp r0.z, r0.z, r0.z
mul_pp r0.z, r1.w, r0.z
mad_pp r0.z, r0.y, r0.z, c8.w
add_pp r0.w, -r0.x, c8.w
mul_pp r1.w, r0.w, r0.w
mul_pp r1.w, r1.w, r1.w
mul_pp r0.w, r0.w, r1.w
mad_pp r0.y, r0.y, r0.w, c8.w
mul_pp r0.y, r0.z, r0.y
mul_pp r0.x, r0.x, r0.y
mul_pp r0.xyz, r0.x, r2
mad_pp oC0.xyz, r3, r0, r1
mov_pp oC0.w, c8.w

"
}
SubProgram "d3d9 " {
// Stats: 95 math, 4 textures
Keywords { "POINT_COOKIE" "SHADOWS_OFF" "_NORMALMAP" }
Float 4 [_BumpScale]
Vector 3 [_Color]
Float 5 [_Glossiness]
Vector 0 [_LightColor0]
Vector 1 [_SpecColor]
Vector 2 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_BumpMap] 2D 1
SetTexture 2 [_LightTexture0] CUBE 2
SetTexture 3 [_LightTextureB0] 2D 3
"ps_3_0
def c6, 2, -1, 0, 1
def c7, 0.00100000005, 31.622776, 9.99999975e-005, 10
def c8, 0.967999995, 0.0299999993, -0.5, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2
dcl_texcoord3_pp v3
dcl_texcoord4_pp v4
dcl_texcoord5 v5.xyz
dcl_2d s0
dcl_2d s1
dcl_cube s2
dcl_2d s3
texld_pp r0, v0, s1
mad_pp r0.xy, r0.wyzw, c6.x, c6.y
mul_pp r0.xy, r0, c4.x
mul_pp r1.xyz, r0.y, v3
mad_pp r1.xyz, r0.x, v2, r1
dp2add_sat_pp r0.x, r0, r0, c6.z
add_pp r0.x, -r0.x, c6.w
rsq_pp r0.x, r0.x
rcp_pp r0.x, r0.x
mad_pp r0.xyz, r0.x, v4, r1
nrm_pp r1.xyz, r0
nrm_pp r0.xyz, v1
mov_pp r2.x, v2.w
mov_pp r2.y, v3.w
mov_pp r2.z, v4.w
dp3_pp r0.w, r2, r2
rsq_pp r0.w, r0.w
mad_pp r3.xyz, r2, r0.w, -r0
dp3_pp r0.x, r1, -r0
max_pp r1.w, r0.x, c6.z
mul_pp r0.xyz, r0.w, r2
dp3_pp r0.w, r3, r3
add r2.x, -r0.w, c7.x
rsq_pp r0.w, r0.w
cmp_pp r0.w, r2.x, c7.y, r0.w
mul_pp r2.xyz, r0.w, r3
dp3_pp r0.w, r1, r2
dp3_pp r1.x, r1, r0
dp3_pp r0.x, r0, r2
max_pp r1.y, r0.x, c6.z
max_pp r0.x, r1.x, c6.z
max_pp r1.x, r0.w, c6.z
mov r0.w, c6.w
add_pp r0.y, r0.w, -c5.x
add_pp r0.z, -r0.y, c6.w
mad_pp r0.z, r0.z, c8.x, c8.y
log_pp r0.z, r0.z
rcp r0.z, r0.z
mul_pp r0.z, r0.z, c7.w
mul_pp r1.z, r0.z, r0.z
mad_pp r0.z, r0.z, r0.z, c6.w
mul_pp r0.z, r0.z, c2.y
pow_pp r2.x, r1.x, r1.z
mul_pp r0.z, r0.z, r2.x
mul_pp r1.x, r0.y, r0.y
mul_pp r1.z, r1.x, c2.w
mad_pp r1.x, r1.x, -c2.w, r0.w
mad_pp r2.x, r1.w, r1.x, r1.z
add_pp r1.w, -r1.w, c6.w
mad_pp r1.x, r0.x, r1.x, r1.z
mad r1.x, r1.x, r2.x, c7.z
rcp_pp r1.x, r1.x
mul_pp r0.z, r0.z, r1.x
mul_pp r0.z, r0.x, r0.z
mul_pp r0.z, r0.z, c2.x
max_pp r1.x, r0.z, c6.z
dp3 r0.z, v5, v5
texld r2, r0.z, s3
texld r3, v5, s2
mul_pp r0.z, r2.x, r3.w
mul_pp r2.xyz, r0.z, c0
mul_pp r3.xyz, r1.x, r2
add_pp r0.z, -r1.y, c6.w
mul_pp r1.x, r1.y, r1.y
dp2add_pp r0.y, r1.x, r0.y, c8.z
mul_pp r1.x, r0.z, r0.z
mul_pp r1.x, r1.x, r1.x
mul_pp r0.z, r0.z, r1.x
lrp_pp r1.xyz, r0.z, r0.w, c1
mul_pp r1.xyz, r1, r3
max_pp r0.z, c1.x, c1.y
max_pp r2.w, r0.z, c1.z
add_pp r0.z, -r2.w, c6.w
texld r3, v0, s0
mul_pp r3.xyz, r3, c3
mul_pp r3.xyz, r0.z, r3
mul_pp r0.z, r1.w, r1.w
mul_pp r0.z, r0.z, r0.z
mul_pp r0.z, r1.w, r0.z
mad_pp r0.z, r0.y, r0.z, c6.w
add_pp r0.w, -r0.x, c6.w
mul_pp r1.w, r0.w, r0.w
mul_pp r1.w, r1.w, r1.w
mul_pp r0.w, r0.w, r1.w
mad_pp r0.y, r0.y, r0.w, c6.w
mul_pp r0.y, r0.z, r0.y
mul_pp r0.x, r0.x, r0.y
mul_pp r0.xyz, r0.x, r2
mad_pp oC0.xyz, r3, r0, r1
mov_pp oC0.w, c6.w

"
}
SubProgram "d3d9 " {
// Stats: 90 math, 3 textures
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_OFF" "_NORMALMAP" }
Float 4 [_BumpScale]
Vector 3 [_Color]
Float 5 [_Glossiness]
Vector 0 [_LightColor0]
Vector 1 [_SpecColor]
Vector 2 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_BumpMap] 2D 1
SetTexture 2 [_LightTexture0] 2D 2
"ps_3_0
def c6, 2, -1, 0, 1
def c7, 0.00100000005, 31.622776, 9.99999975e-005, 10
def c8, 0.967999995, 0.0299999993, -0.5, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2
dcl_texcoord3_pp v3
dcl_texcoord4_pp v4
dcl_texcoord5 v5.xy
dcl_2d s0
dcl_2d s1
dcl_2d s2
texld_pp r0, v0, s1
mad_pp r0.xy, r0.wyzw, c6.x, c6.y
mul_pp r0.xy, r0, c4.x
mul_pp r1.xyz, r0.y, v3
mad_pp r1.xyz, r0.x, v2, r1
dp2add_sat_pp r0.x, r0, r0, c6.z
add_pp r0.x, -r0.x, c6.w
rsq_pp r0.x, r0.x
rcp_pp r0.x, r0.x
mad_pp r0.xyz, r0.x, v4, r1
nrm_pp r1.xyz, r0
dp3_pp r0.x, v1, v1
rsq_pp r0.x, r0.x
mov_pp r2.x, v2.w
mov_pp r2.y, v3.w
mov_pp r2.z, v4.w
mad_pp r0.yzw, v1.xxyz, -r0.x, r2.xxyz
mul_pp r3.xyz, r0.x, v1
dp3_pp r0.x, r1, -r3
max_pp r1.w, r0.x, c6.z
dp3_pp r0.x, r0.yzww, r0.yzww
add r2.w, -r0.x, c7.x
rsq_pp r0.x, r0.x
cmp_pp r0.x, r2.w, c7.y, r0.x
mul_pp r0.xyz, r0.x, r0.yzww
dp3_pp r0.w, r1, r0
dp3_pp r1.x, r1, r2
dp3_pp r0.x, r2, r0
max_pp r1.y, r0.x, c6.z
max_pp r0.x, r1.x, c6.z
max_pp r1.x, r0.w, c6.z
mov r0.w, c6.w
add_pp r0.y, r0.w, -c5.x
add_pp r0.z, -r0.y, c6.w
mad_pp r0.z, r0.z, c8.x, c8.y
log_pp r0.z, r0.z
rcp r0.z, r0.z
mul_pp r0.z, r0.z, c7.w
mul_pp r1.z, r0.z, r0.z
mad_pp r0.z, r0.z, r0.z, c6.w
mul_pp r0.z, r0.z, c2.y
pow_pp r2.x, r1.x, r1.z
mul_pp r0.z, r0.z, r2.x
mul_pp r1.x, r0.y, r0.y
mul_pp r1.z, r1.x, c2.w
mad_pp r1.x, r1.x, -c2.w, r0.w
mad_pp r2.x, r1.w, r1.x, r1.z
add_pp r1.w, -r1.w, c6.w
mad_pp r1.x, r0.x, r1.x, r1.z
mad r1.x, r1.x, r2.x, c7.z
rcp_pp r1.x, r1.x
mul_pp r0.z, r0.z, r1.x
mul_pp r0.z, r0.x, r0.z
mul_pp r0.z, r0.z, c2.x
max_pp r1.x, r0.z, c6.z
texld_pp r2, v5, s2
mul_pp r2.xyz, r2.w, c0
mul_pp r3.xyz, r1.x, r2
add_pp r0.z, -r1.y, c6.w
mul_pp r1.x, r1.y, r1.y
dp2add_pp r0.y, r1.x, r0.y, c8.z
mul_pp r1.x, r0.z, r0.z
mul_pp r1.x, r1.x, r1.x
mul_pp r0.z, r0.z, r1.x
lrp_pp r1.xyz, r0.z, r0.w, c1
mul_pp r1.xyz, r1, r3
max_pp r0.z, c1.x, c1.y
max_pp r2.w, r0.z, c1.z
add_pp r0.z, -r2.w, c6.w
texld r3, v0, s0
mul_pp r3.xyz, r3, c3
mul_pp r3.xyz, r0.z, r3
mul_pp r0.z, r1.w, r1.w
mul_pp r0.z, r0.z, r0.z
mul_pp r0.z, r1.w, r0.z
mad_pp r0.z, r0.y, r0.z, c6.w
add_pp r0.w, -r0.x, c6.w
mul_pp r1.w, r0.w, r0.w
mul_pp r1.w, r1.w, r1.w
mul_pp r0.w, r0.w, r1.w
mad_pp r0.y, r0.y, r0.w, c6.w
mul_pp r0.y, r0.z, r0.y
mul_pp r0.x, r0.x, r0.y
mul_pp r0.xyz, r0.x, r2
mad_pp oC0.xyz, r3, r0, r1
mov_pp oC0.w, c6.w

"
}
SubProgram "d3d9 " {
// Stats: 101 math, 5 textures
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_NATIVE" "_NORMALMAP" }
Float 5 [_BumpScale]
Vector 4 [_Color]
Float 6 [_Glossiness]
Vector 1 [_LightColor0]
Vector 0 [_LightShadowData]
Vector 2 [_SpecColor]
Vector 3 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_BumpMap] 2D 1
SetTexture 2 [_ShadowMapTexture] 2D 2
SetTexture 3 [_LightTexture0] 2D 3
SetTexture 4 [_LightTextureB0] 2D 4
"ps_3_0
def c7, 0.5, 0.00100000005, 31.622776, 9.99999975e-005
def c8, 0.967999995, 0.0299999993, 10, 0
def c9, 2, -1, 0, 1
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2
dcl_texcoord3_pp v3
dcl_texcoord4_pp v4
dcl_texcoord5 v5
dcl_texcoord6 v6
dcl_2d s0
dcl_2d s1
dcl_2d s2
dcl_2d s3
dcl_2d s4
texld_pp r0, v0, s1
mad_pp r0.xy, r0.wyzw, c9.x, c9.y
mul_pp r0.xy, r0, c5.x
mul_pp r1.xyz, r0.y, v3
mad_pp r1.xyz, r0.x, v2, r1
dp2add_sat_pp r0.x, r0, r0, c9.z
add_pp r0.x, -r0.x, c9.w
rsq_pp r0.x, r0.x
rcp_pp r0.x, r0.x
mad_pp r0.xyz, r0.x, v4, r1
nrm_pp r1.xyz, r0
nrm_pp r0.xyz, v1
mov_pp r2.x, v2.w
mov_pp r2.y, v3.w
mov_pp r2.z, v4.w
dp3_pp r0.w, r2, r2
rsq_pp r0.w, r0.w
mad_pp r3.xyz, r2, r0.w, -r0
dp3_pp r0.x, r1, -r0
max_pp r1.w, r0.x, c9.z
mul_pp r0.xyz, r0.w, r2
dp3_pp r0.w, r3, r3
add r2.x, -r0.w, c7.y
rsq_pp r0.w, r0.w
cmp_pp r0.w, r2.x, c7.z, r0.w
mul_pp r2.xyz, r0.w, r3
dp3_pp r0.w, r1, r2
dp3_pp r1.x, r1, r0
dp3_pp r0.x, r0, r2
max_pp r1.y, r0.x, c9.z
max_pp r0.x, r1.x, c9.z
max_pp r1.x, r0.w, c9.z
mov r0.w, c9.w
add_pp r0.y, r0.w, -c6.x
add_pp r0.z, -r0.y, c9.w
mad_pp r0.z, r0.z, c8.x, c8.y
log_pp r0.z, r0.z
rcp r0.z, r0.z
mul_pp r0.z, r0.z, c8.z
mul_pp r1.z, r0.z, r0.z
mad_pp r0.z, r0.z, r0.z, c9.w
mul_pp r0.z, r0.z, c3.y
pow_pp r2.x, r1.x, r1.z
mul_pp r0.z, r0.z, r2.x
mul_pp r1.x, r0.y, r0.y
mul_pp r1.z, r1.x, c3.w
mad_pp r1.x, r1.x, -c3.w, r0.w
mad_pp r2.x, r1.w, r1.x, r1.z
add_pp r1.w, -r1.w, c9.w
mad_pp r1.x, r0.x, r1.x, r1.z
mad r1.x, r1.x, r2.x, c7.w
rcp_pp r1.x, r1.x
mul_pp r0.z, r0.z, r1.x
mul_pp r0.z, r0.x, r0.z
mul_pp r0.z, r0.z, c3.x
max_pp r1.x, r0.z, c9.z
rcp r0.z, v5.w
mad r2.xy, v5, r0.z, c7.x
texld_pp r2, r2, s3
dp3 r0.z, v5, v5
texld_pp r3, r0.z, s4
mul r0.z, r2.w, r3.x
cmp r0.z, -v5.z, c9.z, r0.z
texldp_pp r2, v6, s2
lrp_pp r1.z, r2.x, r0.w, c0.x
mul_pp r0.z, r0.z, r1.z
mul_pp r2.xyz, r0.z, c1
mul_pp r3.xyz, r1.x, r2
add_pp r0.z, -r1.y, c9.w
mul_pp r1.x, r1.y, r1.y
dp2add_pp r0.y, r1.x, r0.y, -c7.x
mul_pp r1.x, r0.z, r0.z
mul_pp r1.x, r1.x, r1.x
mul_pp r0.z, r0.z, r1.x
lrp_pp r1.xyz, r0.z, r0.w, c2
mul_pp r1.xyz, r1, r3
max_pp r0.z, c2.x, c2.y
max_pp r2.w, r0.z, c2.z
add_pp r0.z, -r2.w, c9.w
texld r3, v0, s0
mul_pp r3.xyz, r3, c4
mul_pp r3.xyz, r0.z, r3
mul_pp r0.z, r1.w, r1.w
mul_pp r0.z, r0.z, r0.z
mul_pp r0.z, r1.w, r0.z
mad_pp r0.z, r0.y, r0.z, c9.w
add_pp r0.w, -r0.x, c9.w
mul_pp r1.w, r0.w, r0.w
mul_pp r1.w, r1.w, r1.w
mul_pp r0.w, r0.w, r1.w
mad_pp r0.y, r0.y, r0.w, c9.w
mul_pp r0.y, r0.z, r0.y
mul_pp r0.x, r0.x, r0.y
mul_pp r0.xyz, r0.x, r2
mad_pp oC0.xyz, r3, r0, r1
mov_pp oC0.w, c9.w

"
}
SubProgram "d3d9 " {
// Stats: 90 math, 3 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" }
Float 4 [_BumpScale]
Vector 3 [_Color]
Float 5 [_Glossiness]
Vector 0 [_LightColor0]
Vector 1 [_SpecColor]
Vector 2 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_BumpMap] 2D 1
SetTexture 2 [_ShadowMapTexture] 2D 2
"ps_3_0
def c6, 2, -1, 0, 1
def c7, 0.00100000005, 31.622776, 9.99999975e-005, 10
def c8, 0.967999995, 0.0299999993, -0.5, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2
dcl_texcoord3_pp v3
dcl_texcoord4_pp v4
dcl_texcoord5 v5
dcl_2d s0
dcl_2d s1
dcl_2d s2
texld_pp r0, v0, s1
mad_pp r0.xy, r0.wyzw, c6.x, c6.y
mul_pp r0.xy, r0, c4.x
mul_pp r1.xyz, r0.y, v3
mad_pp r1.xyz, r0.x, v2, r1
dp2add_sat_pp r0.x, r0, r0, c6.z
add_pp r0.x, -r0.x, c6.w
rsq_pp r0.x, r0.x
rcp_pp r0.x, r0.x
mad_pp r0.xyz, r0.x, v4, r1
nrm_pp r1.xyz, r0
dp3_pp r0.x, v1, v1
rsq_pp r0.x, r0.x
mov_pp r2.x, v2.w
mov_pp r2.y, v3.w
mov_pp r2.z, v4.w
mad_pp r0.yzw, v1.xxyz, -r0.x, r2.xxyz
mul_pp r3.xyz, r0.x, v1
dp3_pp r0.x, r1, -r3
max_pp r1.w, r0.x, c6.z
dp3_pp r0.x, r0.yzww, r0.yzww
add r2.w, -r0.x, c7.x
rsq_pp r0.x, r0.x
cmp_pp r0.x, r2.w, c7.y, r0.x
mul_pp r0.xyz, r0.x, r0.yzww
dp3_pp r0.w, r1, r0
dp3_pp r1.x, r1, r2
dp3_pp r0.x, r2, r0
max_pp r1.y, r0.x, c6.z
max_pp r0.x, r1.x, c6.z
max_pp r1.x, r0.w, c6.z
mov r0.w, c6.w
add_pp r0.y, r0.w, -c5.x
add_pp r0.z, -r0.y, c6.w
mad_pp r0.z, r0.z, c8.x, c8.y
log_pp r0.z, r0.z
rcp r0.z, r0.z
mul_pp r0.z, r0.z, c7.w
mul_pp r1.z, r0.z, r0.z
mad_pp r0.z, r0.z, r0.z, c6.w
mul_pp r0.z, r0.z, c2.y
pow_pp r2.x, r1.x, r1.z
mul_pp r0.z, r0.z, r2.x
mul_pp r1.x, r0.y, r0.y
mul_pp r1.z, r1.x, c2.w
mad_pp r1.x, r1.x, -c2.w, r0.w
mad_pp r2.x, r1.w, r1.x, r1.z
add_pp r1.w, -r1.w, c6.w
mad_pp r1.x, r0.x, r1.x, r1.z
mad r1.x, r1.x, r2.x, c7.z
rcp_pp r1.x, r1.x
mul_pp r0.z, r0.z, r1.x
mul_pp r0.z, r0.x, r0.z
mul_pp r0.z, r0.z, c2.x
max_pp r1.x, r0.z, c6.z
texldp_pp r2, v5, s2
mul_pp r2.xyz, r2.x, c0
mul_pp r3.xyz, r1.x, r2
add_pp r0.z, -r1.y, c6.w
mul_pp r1.x, r1.y, r1.y
dp2add_pp r0.y, r1.x, r0.y, c8.z
mul_pp r1.x, r0.z, r0.z
mul_pp r1.x, r1.x, r1.x
mul_pp r0.z, r0.z, r1.x
lrp_pp r1.xyz, r0.z, r0.w, c1
mul_pp r1.xyz, r1, r3
max_pp r0.z, c1.x, c1.y
max_pp r2.w, r0.z, c1.z
add_pp r0.z, -r2.w, c6.w
texld r3, v0, s0
mul_pp r3.xyz, r3, c3
mul_pp r3.xyz, r0.z, r3
mul_pp r0.z, r1.w, r1.w
mul_pp r0.z, r0.z, r0.z
mul_pp r0.z, r1.w, r0.z
mad_pp r0.z, r0.y, r0.z, c6.w
add_pp r0.w, -r0.x, c6.w
mul_pp r1.w, r0.w, r0.w
mul_pp r1.w, r1.w, r1.w
mul_pp r0.w, r0.w, r1.w
mad_pp r0.y, r0.y, r0.w, c6.w
mul_pp r0.y, r0.z, r0.y
mul_pp r0.x, r0.x, r0.y
mul_pp r0.xyz, r0.x, r2
mad_pp oC0.xyz, r3, r0, r1
mov_pp oC0.w, c6.w

"
}
SubProgram "d3d9 " {
// Stats: 91 math, 4 textures
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" }
Float 4 [_BumpScale]
Vector 3 [_Color]
Float 5 [_Glossiness]
Vector 0 [_LightColor0]
Vector 1 [_SpecColor]
Vector 2 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_BumpMap] 2D 1
SetTexture 2 [_ShadowMapTexture] 2D 2
SetTexture 3 [_LightTexture0] 2D 3
"ps_3_0
def c6, 2, -1, 0, 1
def c7, 0.00100000005, 31.622776, 9.99999975e-005, 10
def c8, 0.967999995, 0.0299999993, -0.5, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2
dcl_texcoord3_pp v3
dcl_texcoord4_pp v4
dcl_texcoord5 v5.xy
dcl_texcoord6 v6
dcl_2d s0
dcl_2d s1
dcl_2d s2
dcl_2d s3
texld_pp r0, v0, s1
mad_pp r0.xy, r0.wyzw, c6.x, c6.y
mul_pp r0.xy, r0, c4.x
mul_pp r1.xyz, r0.y, v3
mad_pp r1.xyz, r0.x, v2, r1
dp2add_sat_pp r0.x, r0, r0, c6.z
add_pp r0.x, -r0.x, c6.w
rsq_pp r0.x, r0.x
rcp_pp r0.x, r0.x
mad_pp r0.xyz, r0.x, v4, r1
nrm_pp r1.xyz, r0
dp3_pp r0.x, v1, v1
rsq_pp r0.x, r0.x
mov_pp r2.x, v2.w
mov_pp r2.y, v3.w
mov_pp r2.z, v4.w
mad_pp r0.yzw, v1.xxyz, -r0.x, r2.xxyz
mul_pp r3.xyz, r0.x, v1
dp3_pp r0.x, r1, -r3
max_pp r1.w, r0.x, c6.z
dp3_pp r0.x, r0.yzww, r0.yzww
add r2.w, -r0.x, c7.x
rsq_pp r0.x, r0.x
cmp_pp r0.x, r2.w, c7.y, r0.x
mul_pp r0.xyz, r0.x, r0.yzww
dp3_pp r0.w, r1, r0
dp3_pp r1.x, r1, r2
dp3_pp r0.x, r2, r0
max_pp r1.y, r0.x, c6.z
max_pp r0.x, r1.x, c6.z
max_pp r1.x, r0.w, c6.z
mov r0.w, c6.w
add_pp r0.y, r0.w, -c5.x
add_pp r0.z, -r0.y, c6.w
mad_pp r0.z, r0.z, c8.x, c8.y
log_pp r0.z, r0.z
rcp r0.z, r0.z
mul_pp r0.z, r0.z, c7.w
mul_pp r1.z, r0.z, r0.z
mad_pp r0.z, r0.z, r0.z, c6.w
mul_pp r0.z, r0.z, c2.y
pow_pp r2.x, r1.x, r1.z
mul_pp r0.z, r0.z, r2.x
mul_pp r1.x, r0.y, r0.y
mul_pp r1.z, r1.x, c2.w
mad_pp r1.x, r1.x, -c2.w, r0.w
mad_pp r2.x, r1.w, r1.x, r1.z
add_pp r1.w, -r1.w, c6.w
mad_pp r1.x, r0.x, r1.x, r1.z
mad r1.x, r1.x, r2.x, c7.z
rcp_pp r1.x, r1.x
mul_pp r0.z, r0.z, r1.x
mul_pp r0.z, r0.x, r0.z
mul_pp r0.z, r0.z, c2.x
max_pp r1.x, r0.z, c6.z
texld r2, v5, s3
texldp_pp r3, v6, s2
mul_pp r0.z, r2.w, r3.x
mul_pp r2.xyz, r0.z, c0
mul_pp r3.xyz, r1.x, r2
add_pp r0.z, -r1.y, c6.w
mul_pp r1.x, r1.y, r1.y
dp2add_pp r0.y, r1.x, r0.y, c8.z
mul_pp r1.x, r0.z, r0.z
mul_pp r1.x, r1.x, r1.x
mul_pp r0.z, r0.z, r1.x
lrp_pp r1.xyz, r0.z, r0.w, c1
mul_pp r1.xyz, r1, r3
max_pp r0.z, c1.x, c1.y
max_pp r2.w, r0.z, c1.z
add_pp r0.z, -r2.w, c6.w
texld r3, v0, s0
mul_pp r3.xyz, r3, c3
mul_pp r3.xyz, r0.z, r3
mul_pp r0.z, r1.w, r1.w
mul_pp r0.z, r0.z, r0.z
mul_pp r0.z, r1.w, r0.z
mad_pp r0.z, r0.y, r0.z, c6.w
add_pp r0.w, -r0.x, c6.w
mul_pp r1.w, r0.w, r0.w
mul_pp r1.w, r1.w, r1.w
mul_pp r0.w, r0.w, r1.w
mad_pp r0.y, r0.y, r0.w, c6.w
mul_pp r0.y, r0.z, r0.y
mul_pp r0.x, r0.x, r0.y
mul_pp r0.xyz, r0.x, r2
mad_pp oC0.xyz, r3, r0, r1
mov_pp oC0.w, c6.w

"
}
SubProgram "d3d9 " {
// Stats: 101 math, 4 textures
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" }
Float 6 [_BumpScale]
Vector 5 [_Color]
Float 7 [_Glossiness]
Vector 2 [_LightColor0]
Vector 0 [_LightPositionRange]
Vector 1 [_LightShadowData]
Vector 3 [_SpecColor]
Vector 4 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_BumpMap] 2D 1
SetTexture 2 [_ShadowMapTexture] CUBE 2
SetTexture 3 [_LightTexture0] 2D 3
"ps_3_0
def c8, 2, -1, 0, 1
def c9, 0.970000029, 0.00100000005, 31.622776, 9.99999975e-005
def c10, 0.967999995, 0.0299999993, 10, -0.5
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2
dcl_texcoord3_pp v3
dcl_texcoord4_pp v4
dcl_texcoord5 v5.xyz
dcl_texcoord6 v6.xyz
dcl_2d s0
dcl_2d s1
dcl_cube s2
dcl_2d s3
texld_pp r0, v0, s1
mad_pp r0.xy, r0.wyzw, c8.x, c8.y
mul_pp r0.xy, r0, c6.x
mul_pp r1.xyz, r0.y, v3
mad_pp r1.xyz, r0.x, v2, r1
dp2add_sat_pp r0.x, r0, r0, c8.z
add_pp r0.x, -r0.x, c8.w
rsq_pp r0.x, r0.x
rcp_pp r0.x, r0.x
mad_pp r0.xyz, r0.x, v4, r1
nrm_pp r1.xyz, r0
nrm_pp r0.xyz, v1
mov_pp r2.x, v2.w
mov_pp r2.y, v3.w
mov_pp r2.z, v4.w
dp3_pp r0.w, r2, r2
rsq_pp r0.w, r0.w
mad_pp r3.xyz, r2, r0.w, -r0
dp3_pp r0.x, r1, -r0
max_pp r1.w, r0.x, c8.z
mul_pp r0.xyz, r0.w, r2
dp3_pp r0.w, r3, r3
add r2.x, -r0.w, c9.y
rsq_pp r0.w, r0.w
cmp_pp r0.w, r2.x, c9.z, r0.w
mul_pp r2.xyz, r0.w, r3
dp3_pp r0.w, r1, r2
dp3_pp r1.x, r1, r0
dp3_pp r0.x, r0, r2
max_pp r1.y, r0.x, c8.z
max_pp r0.x, r1.x, c8.z
max_pp r1.x, r0.w, c8.z
mov r0.w, c8.w
add_pp r0.y, r0.w, -c7.x
add_pp r0.z, -r0.y, c8.w
mad_pp r0.z, r0.z, c10.x, c10.y
log_pp r0.z, r0.z
rcp r0.z, r0.z
mul_pp r0.z, r0.z, c10.z
mul_pp r1.z, r0.z, r0.z
mad_pp r0.z, r0.z, r0.z, c8.w
mul_pp r0.z, r0.z, c4.y
pow_pp r2.x, r1.x, r1.z
mul_pp r0.z, r0.z, r2.x
mul_pp r1.x, r0.y, r0.y
mul_pp r1.z, r1.x, c4.w
mad_pp r1.x, r1.x, -c4.w, r0.w
mad_pp r2.x, r1.w, r1.x, r1.z
add_pp r1.w, -r1.w, c8.w
mad_pp r1.x, r0.x, r1.x, r1.z
mad r1.x, r1.x, r2.x, c9.w
rcp_pp r1.x, r1.x
mul_pp r0.z, r0.z, r1.x
mul_pp r0.z, r0.x, r0.z
mul_pp r0.z, r0.z, c4.x
max_pp r1.x, r0.z, c8.z
dp3 r0.z, v6, v6
rsq r0.z, r0.z
rcp r0.z, r0.z
mul r0.z, r0.z, c0.w
texld r2, v6, s2
mad r0.z, r0.z, -c9.x, r2.x
cmp_pp r0.z, r0.z, r0.w, c1.x
dp3 r1.z, v5, v5
texld r2, r1.z, s3
mul_pp r0.z, r0.z, r2.x
mul_pp r2.xyz, r0.z, c2
mul_pp r3.xyz, r1.x, r2
add_pp r0.z, -r1.y, c8.w
mul_pp r1.x, r1.y, r1.y
dp2add_pp r0.y, r1.x, r0.y, c10.w
mul_pp r1.x, r0.z, r0.z
mul_pp r1.x, r1.x, r1.x
mul_pp r0.z, r0.z, r1.x
lrp_pp r1.xyz, r0.z, r0.w, c3
mul_pp r1.xyz, r1, r3
max_pp r0.z, c3.x, c3.y
max_pp r2.w, r0.z, c3.z
add_pp r0.z, -r2.w, c8.w
texld r3, v0, s0
mul_pp r3.xyz, r3, c5
mul_pp r3.xyz, r0.z, r3
mul_pp r0.z, r1.w, r1.w
mul_pp r0.z, r0.z, r0.z
mul_pp r0.z, r1.w, r0.z
mad_pp r0.z, r0.y, r0.z, c8.w
add_pp r0.w, -r0.x, c8.w
mul_pp r1.w, r0.w, r0.w
mul_pp r1.w, r1.w, r1.w
mul_pp r0.w, r0.w, r1.w
mad_pp r0.y, r0.y, r0.w, c8.w
mul_pp r0.y, r0.z, r0.y
mul_pp r0.x, r0.x, r0.y
mul_pp r0.xyz, r0.x, r2
mad_pp oC0.xyz, r3, r0, r1
mov_pp oC0.w, c8.w

"
}
SubProgram "d3d9 " {
// Stats: 102 math, 5 textures
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" }
Float 6 [_BumpScale]
Vector 5 [_Color]
Float 7 [_Glossiness]
Vector 2 [_LightColor0]
Vector 0 [_LightPositionRange]
Vector 1 [_LightShadowData]
Vector 3 [_SpecColor]
Vector 4 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_BumpMap] 2D 1
SetTexture 2 [_ShadowMapTexture] CUBE 2
SetTexture 3 [_LightTexture0] CUBE 3
SetTexture 4 [_LightTextureB0] 2D 4
"ps_3_0
def c8, 2, -1, 0, 1
def c9, 0.970000029, 0.00100000005, 31.622776, 9.99999975e-005
def c10, 0.967999995, 0.0299999993, 10, -0.5
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2
dcl_texcoord3_pp v3
dcl_texcoord4_pp v4
dcl_texcoord5 v5.xyz
dcl_texcoord6 v6.xyz
dcl_2d s0
dcl_2d s1
dcl_cube s2
dcl_cube s3
dcl_2d s4
texld_pp r0, v0, s1
mad_pp r0.xy, r0.wyzw, c8.x, c8.y
mul_pp r0.xy, r0, c6.x
mul_pp r1.xyz, r0.y, v3
mad_pp r1.xyz, r0.x, v2, r1
dp2add_sat_pp r0.x, r0, r0, c8.z
add_pp r0.x, -r0.x, c8.w
rsq_pp r0.x, r0.x
rcp_pp r0.x, r0.x
mad_pp r0.xyz, r0.x, v4, r1
nrm_pp r1.xyz, r0
nrm_pp r0.xyz, v1
mov_pp r2.x, v2.w
mov_pp r2.y, v3.w
mov_pp r2.z, v4.w
dp3_pp r0.w, r2, r2
rsq_pp r0.w, r0.w
mad_pp r3.xyz, r2, r0.w, -r0
dp3_pp r0.x, r1, -r0
max_pp r1.w, r0.x, c8.z
mul_pp r0.xyz, r0.w, r2
dp3_pp r0.w, r3, r3
add r2.x, -r0.w, c9.y
rsq_pp r0.w, r0.w
cmp_pp r0.w, r2.x, c9.z, r0.w
mul_pp r2.xyz, r0.w, r3
dp3_pp r0.w, r1, r2
dp3_pp r1.x, r1, r0
dp3_pp r0.x, r0, r2
max_pp r1.y, r0.x, c8.z
max_pp r0.x, r1.x, c8.z
max_pp r1.x, r0.w, c8.z
mov r0.w, c8.w
add_pp r0.y, r0.w, -c7.x
add_pp r0.z, -r0.y, c8.w
mad_pp r0.z, r0.z, c10.x, c10.y
log_pp r0.z, r0.z
rcp r0.z, r0.z
mul_pp r0.z, r0.z, c10.z
mul_pp r1.z, r0.z, r0.z
mad_pp r0.z, r0.z, r0.z, c8.w
mul_pp r0.z, r0.z, c4.y
pow_pp r2.x, r1.x, r1.z
mul_pp r0.z, r0.z, r2.x
mul_pp r1.x, r0.y, r0.y
mul_pp r1.z, r1.x, c4.w
mad_pp r1.x, r1.x, -c4.w, r0.w
mad_pp r2.x, r1.w, r1.x, r1.z
add_pp r1.w, -r1.w, c8.w
mad_pp r1.x, r0.x, r1.x, r1.z
mad r1.x, r1.x, r2.x, c9.w
rcp_pp r1.x, r1.x
mul_pp r0.z, r0.z, r1.x
mul_pp r0.z, r0.x, r0.z
mul_pp r0.z, r0.z, c4.x
max_pp r1.x, r0.z, c8.z
dp3 r0.z, v6, v6
rsq r0.z, r0.z
rcp r0.z, r0.z
mul r0.z, r0.z, c0.w
texld r2, v6, s2
mad r0.z, r0.z, -c9.x, r2.x
cmp_pp r0.z, r0.z, r0.w, c1.x
dp3 r1.z, v5, v5
texld r2, r1.z, s4
texld r3, v5, s3
mul r1.z, r2.x, r3.w
mul_pp r0.z, r0.z, r1.z
mul_pp r2.xyz, r0.z, c2
mul_pp r3.xyz, r1.x, r2
add_pp r0.z, -r1.y, c8.w
mul_pp r1.x, r1.y, r1.y
dp2add_pp r0.y, r1.x, r0.y, c10.w
mul_pp r1.x, r0.z, r0.z
mul_pp r1.x, r1.x, r1.x
mul_pp r0.z, r0.z, r1.x
lrp_pp r1.xyz, r0.z, r0.w, c3
mul_pp r1.xyz, r1, r3
max_pp r0.z, c3.x, c3.y
max_pp r2.w, r0.z, c3.z
add_pp r0.z, -r2.w, c8.w
texld r3, v0, s0
mul_pp r3.xyz, r3, c5
mul_pp r3.xyz, r0.z, r3
mul_pp r0.z, r1.w, r1.w
mul_pp r0.z, r0.z, r0.z
mul_pp r0.z, r1.w, r0.z
mad_pp r0.z, r0.y, r0.z, c8.w
add_pp r0.w, -r0.x, c8.w
mul_pp r1.w, r0.w, r0.w
mul_pp r1.w, r1.w, r1.w
mul_pp r0.w, r0.w, r1.w
mad_pp r0.y, r0.y, r0.w, c8.w
mul_pp r0.y, r0.z, r0.y
mul_pp r0.x, r0.x, r0.y
mul_pp r0.xyz, r0.x, r2
mad_pp oC0.xyz, r3, r0, r1
mov_pp oC0.w, c8.w

"
}
SubProgram "d3d9 " {
// Stats: 110 math, 8 textures
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "SHADOWS_NATIVE" "_NORMALMAP" }
Float 9 [_BumpScale]
Vector 8 [_Color]
Float 10 [_Glossiness]
Vector 5 [_LightColor0]
Vector 4 [_LightShadowData]
Vector 0 [_ShadowOffsets0]
Vector 1 [_ShadowOffsets1]
Vector 2 [_ShadowOffsets2]
Vector 3 [_ShadowOffsets3]
Vector 6 [_SpecColor]
Vector 7 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_BumpMap] 2D 1
SetTexture 2 [_ShadowMapTexture] 2D 2
SetTexture 3 [_LightTexture0] 2D 3
SetTexture 4 [_LightTextureB0] 2D 4
"ps_3_0
def c11, 2, -1, 0, 1
def c12, 0.5, 0.25, 0.00100000005, 31.622776
def c13, 9.99999975e-005, 0.967999995, 0.0299999993, 10
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2
dcl_texcoord3_pp v3
dcl_texcoord4_pp v4
dcl_texcoord5 v5
dcl_texcoord6 v6
dcl_2d s0
dcl_2d s1
dcl_2d s2
dcl_2d s3
dcl_2d s4
mov r0.w, c11.w
rcp r0.x, v6.w
mad r1, v6, r0.x, c0
texldp_pp r1, r1, s2
mad r2, v6, r0.x, c1
texldp_pp r2, r2, s2
mov_pp r1.y, r2.x
mad r2, v6, r0.x, c2
mad r3, v6, r0.x, c3
texldp_pp r3, r3, s2
mov_pp r1.w, r3.x
texldp_pp r2, r2, s2
mov_pp r1.z, r2.x
lrp_pp r2, r1, r0.w, c4.x
dp4_pp r0.x, r2, c12.y
rcp r0.y, v5.w
mad r0.yz, v5.xxyw, r0.y, c12.x
texld_pp r1, r0.yzzw, s3
dp3 r0.y, v5, v5
texld_pp r2, r0.y, s4
mul r0.y, r1.w, r2.x
cmp r0.y, -v5.z, c11.z, r0.y
mul_pp r0.x, r0.x, r0.y
mul_pp r0.xyz, r0.x, c5
texld_pp r1, v0, s1
mad_pp r1.xy, r1.wyzw, c11.x, c11.y
mul_pp r1.xy, r1, c9.x
mul_pp r2.xyz, r1.y, v3
mad_pp r2.xyz, r1.x, v2, r2
dp2add_sat_pp r1.x, r1, r1, c11.z
add_pp r1.x, -r1.x, c11.w
rsq_pp r1.x, r1.x
rcp_pp r1.x, r1.x
mad_pp r1.xyz, r1.x, v4, r2
nrm_pp r2.xyz, r1
nrm_pp r1.xyz, v1
mov_pp r3.x, v2.w
mov_pp r3.y, v3.w
mov_pp r3.z, v4.w
dp3_pp r1.w, r3, r3
rsq_pp r1.w, r1.w
mad_pp r4.xyz, r3, r1.w, -r1
dp3_pp r1.x, r2, -r1
max_pp r2.w, r1.x, c11.z
mul_pp r1.xyz, r1.w, r3
dp3_pp r1.w, r4, r4
add r3.x, -r1.w, c12.z
rsq_pp r1.w, r1.w
cmp_pp r1.w, r3.x, c12.w, r1.w
mul_pp r3.xyz, r1.w, r4
dp3_pp r1.w, r2, r3
dp3_pp r2.x, r2, r1
dp3_pp r1.x, r1, r3
max_pp r2.y, r1.x, c11.z
max_pp r1.x, r2.x, c11.z
max_pp r2.x, r1.w, c11.z
add_pp r1.y, r0.w, -c10.x
add_pp r1.z, -r1.y, c11.w
mad_pp r1.z, r1.z, c13.y, c13.z
log_pp r1.z, r1.z
rcp r1.z, r1.z
mul_pp r1.z, r1.z, c13.w
mul_pp r1.w, r1.z, r1.z
mad_pp r1.z, r1.z, r1.z, c11.w
mul_pp r1.z, r1.z, c7.y
pow_pp r3.x, r2.x, r1.w
mul_pp r1.z, r1.z, r3.x
mul_pp r1.w, r1.y, r1.y
mul_pp r2.x, r1.w, c7.w
mad_pp r1.w, r1.w, -c7.w, r0.w
mad_pp r2.z, r2.w, r1.w, r2.x
add_pp r2.w, -r2.w, c11.w
mad_pp r1.w, r1.x, r1.w, r2.x
mad r1.w, r1.w, r2.z, c13.x
rcp_pp r1.w, r1.w
mul_pp r1.z, r1.z, r1.w
mul_pp r1.z, r1.x, r1.z
mul_pp r1.z, r1.z, c7.x
max_pp r2.x, r1.z, c11.z
mul_pp r3.xyz, r0, r2.x
add_pp r1.z, -r2.y, c11.w
mul_pp r1.w, r2.y, r2.y
dp2add_pp r1.y, r1.w, r1.y, -c12.x
mul_pp r1.w, r1.z, r1.z
mul_pp r1.w, r1.w, r1.w
mul_pp r1.z, r1.z, r1.w
lrp_pp r2.xyz, r1.z, r0.w, c6
mul_pp r2.xyz, r2, r3
mul_pp r0.w, r2.w, r2.w
mul_pp r0.w, r0.w, r0.w
mul_pp r0.w, r2.w, r0.w
mad_pp r0.w, r1.y, r0.w, c11.w
add_pp r1.z, -r1.x, c11.w
mul_pp r1.w, r1.z, r1.z
mul_pp r1.w, r1.w, r1.w
mul_pp r1.z, r1.z, r1.w
mad_pp r1.y, r1.y, r1.z, c11.w
mul_pp r0.w, r0.w, r1.y
mul_pp r0.w, r1.x, r0.w
mul_pp r0.xyz, r0.w, r0
max_pp r0.w, c6.x, c6.y
max_pp r1.x, r0.w, c6.z
add_pp r0.w, -r1.x, c11.w
texld r1, v0, s0
mul_pp r1.xyz, r1, c8
mul_pp r1.xyz, r0.w, r1
mad_pp oC0.xyz, r1, r0, r2
mov_pp oC0.w, c11.w

"
}
SubProgram "d3d9 " {
// Stats: 109 math, 7 textures
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" }
Float 6 [_BumpScale]
Vector 5 [_Color]
Float 7 [_Glossiness]
Vector 2 [_LightColor0]
Vector 0 [_LightPositionRange]
Vector 1 [_LightShadowData]
Vector 3 [_SpecColor]
Vector 4 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_BumpMap] 2D 1
SetTexture 2 [_ShadowMapTexture] CUBE 2
SetTexture 3 [_LightTexture0] 2D 3
"ps_3_0
def c8, 2, -1, 0, 1
def c9, 0.0078125, -0.0078125, 0.970000029, 0.25
def c10, 0.00100000005, 31.622776, 9.99999975e-005, 10
def c11, 0.967999995, 0.0299999993, -0.5, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2
dcl_texcoord3_pp v3
dcl_texcoord4_pp v4
dcl_texcoord5 v5.xyz
dcl_texcoord6 v6.xyz
dcl_2d s0
dcl_2d s1
dcl_cube s2
dcl_2d s3
dp3 r0.x, v6, v6
rsq r0.x, r0.x
rcp r0.x, r0.x
mul r0.x, r0.x, c0.w
add r0.yzw, c9.x, v6.xxyz
texld r1, r0.yzww, s2
add r0.yzw, c9.xyyx, v6.xxyz
texld r2, r0.yzww, s2
mov r1.y, r2.x
add r0.yzw, c9.xyxy, v6.xxyz
texld r2, r0.yzww, s2
mov r1.z, r2.x
add r0.yzw, c9.xxyy, v6.xxyz
texld r2, r0.yzww, s2
mov r1.w, r2.x
mad r0, r0.x, -c9.z, r1
mov r1.w, c8.w
cmp_pp r0, r0, r1.w, c1.x
dp4_pp r0.x, r0, c9.w
dp3 r0.y, v5, v5
texld r2, r0.y, s3
mul_pp r0.x, r0.x, r2.x
mul_pp r0.xyz, r0.x, c2
texld_pp r2, v0, s1
mad_pp r1.xy, r2.wyzw, c8.x, c8.y
mul_pp r1.xy, r1, c6.x
mul_pp r2.xyz, r1.y, v3
mad_pp r2.xyz, r1.x, v2, r2
dp2add_sat_pp r0.w, r1, r1, c8.z
add_pp r0.w, -r0.w, c8.w
rsq_pp r0.w, r0.w
rcp_pp r0.w, r0.w
mad_pp r1.xyz, r0.w, v4, r2
nrm_pp r2.xyz, r1
nrm_pp r1.xyz, v1
mov_pp r3.x, v2.w
mov_pp r3.y, v3.w
mov_pp r3.z, v4.w
dp3_pp r0.w, r3, r3
rsq_pp r0.w, r0.w
mad_pp r4.xyz, r3, r0.w, -r1
dp3_pp r1.x, r2, -r1
max_pp r2.w, r1.x, c8.z
mul_pp r1.xyz, r0.w, r3
dp3_pp r0.w, r4, r4
add r3.x, -r0.w, c10.x
rsq_pp r0.w, r0.w
cmp_pp r0.w, r3.x, c10.y, r0.w
mul_pp r3.xyz, r0.w, r4
dp3_pp r0.w, r2, r3
dp3_pp r2.x, r2, r1
dp3_pp r1.x, r1, r3
max_pp r2.y, r1.x, c8.z
max_pp r1.x, r2.x, c8.z
max_pp r1.y, r0.w, c8.z
add_pp r0.w, r1.w, -c7.x
add_pp r1.z, -r0.w, c8.w
mad_pp r1.z, r1.z, c11.x, c11.y
log_pp r1.z, r1.z
rcp r1.z, r1.z
mul_pp r1.z, r1.z, c10.w
mul_pp r2.x, r1.z, r1.z
mad_pp r1.z, r1.z, r1.z, c8.w
mul_pp r1.z, r1.z, c4.y
pow_pp r3.x, r1.y, r2.x
mul_pp r1.y, r1.z, r3.x
mul_pp r1.z, r0.w, r0.w
mul_pp r2.x, r1.z, c4.w
mad_pp r1.z, r1.z, -c4.w, r1.w
mad_pp r2.z, r2.w, r1.z, r2.x
add_pp r2.w, -r2.w, c8.w
mad_pp r1.z, r1.x, r1.z, r2.x
mad r1.z, r1.z, r2.z, c10.z
rcp_pp r1.z, r1.z
mul_pp r1.y, r1.y, r1.z
mul_pp r1.y, r1.x, r1.y
mul_pp r1.y, r1.y, c4.x
max_pp r2.x, r1.y, c8.z
mul_pp r3.xyz, r0, r2.x
add_pp r1.y, -r2.y, c8.w
mul_pp r1.z, r2.y, r2.y
dp2add_pp r0.w, r1.z, r0.w, c11.z
mul_pp r1.z, r1.y, r1.y
mul_pp r1.z, r1.z, r1.z
mul_pp r1.y, r1.y, r1.z
lrp_pp r2.xyz, r1.y, r1.w, c3
mul_pp r1.yzw, r2.xxyz, r3.xxyz
max_pp r2.x, c3.x, c3.y
max_pp r3.x, r2.x, c3.z
add_pp r2.x, -r3.x, c8.w
texld r3, v0, s0
mul_pp r3.xyz, r3, c5
mul_pp r2.xyz, r2.x, r3
mul_pp r3.x, r2.w, r2.w
mul_pp r3.x, r3.x, r3.x
mul_pp r2.w, r2.w, r3.x
mad_pp r2.w, r0.w, r2.w, c8.w
add_pp r3.x, -r1.x, c8.w
mul_pp r3.y, r3.x, r3.x
mul_pp r3.y, r3.y, r3.y
mul_pp r3.x, r3.x, r3.y
mad_pp r0.w, r0.w, r3.x, c8.w
mul_pp r0.w, r2.w, r0.w
mul_pp r0.w, r1.x, r0.w
mul_pp r0.xyz, r0.w, r0
mad_pp oC0.xyz, r2, r0, r1.yzww
mov_pp oC0.w, c8.w

"
}
SubProgram "d3d9 " {
// Stats: 110 math, 8 textures
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_NORMALMAP" }
Float 6 [_BumpScale]
Vector 5 [_Color]
Float 7 [_Glossiness]
Vector 2 [_LightColor0]
Vector 0 [_LightPositionRange]
Vector 1 [_LightShadowData]
Vector 3 [_SpecColor]
Vector 4 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_BumpMap] 2D 1
SetTexture 2 [_ShadowMapTexture] CUBE 2
SetTexture 3 [_LightTexture0] CUBE 3
SetTexture 4 [_LightTextureB0] 2D 4
"ps_3_0
def c8, 2, -1, 0, 1
def c9, 0.0078125, -0.0078125, 0.970000029, 0.25
def c10, 0.00100000005, 31.622776, 9.99999975e-005, 10
def c11, 0.967999995, 0.0299999993, -0.5, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2
dcl_texcoord3_pp v3
dcl_texcoord4_pp v4
dcl_texcoord5 v5.xyz
dcl_texcoord6 v6.xyz
dcl_2d s0
dcl_2d s1
dcl_cube s2
dcl_cube s3
dcl_2d s4
dp3 r0.x, v6, v6
rsq r0.x, r0.x
rcp r0.x, r0.x
mul r0.x, r0.x, c0.w
add r0.yzw, c9.x, v6.xxyz
texld r1, r0.yzww, s2
add r0.yzw, c9.xyyx, v6.xxyz
texld r2, r0.yzww, s2
mov r1.y, r2.x
add r0.yzw, c9.xyxy, v6.xxyz
texld r2, r0.yzww, s2
mov r1.z, r2.x
add r0.yzw, c9.xxyy, v6.xxyz
texld r2, r0.yzww, s2
mov r1.w, r2.x
mad r0, r0.x, -c9.z, r1
mov r1.w, c8.w
cmp_pp r0, r0, r1.w, c1.x
dp4_pp r0.x, r0, c9.w
dp3 r0.y, v5, v5
texld r2, r0.y, s4
texld r3, v5, s3
mul r0.y, r2.x, r3.w
mul_pp r0.x, r0.x, r0.y
mul_pp r0.xyz, r0.x, c2
texld_pp r2, v0, s1
mad_pp r1.xy, r2.wyzw, c8.x, c8.y
mul_pp r1.xy, r1, c6.x
mul_pp r2.xyz, r1.y, v3
mad_pp r2.xyz, r1.x, v2, r2
dp2add_sat_pp r0.w, r1, r1, c8.z
add_pp r0.w, -r0.w, c8.w
rsq_pp r0.w, r0.w
rcp_pp r0.w, r0.w
mad_pp r1.xyz, r0.w, v4, r2
nrm_pp r2.xyz, r1
nrm_pp r1.xyz, v1
mov_pp r3.x, v2.w
mov_pp r3.y, v3.w
mov_pp r3.z, v4.w
dp3_pp r0.w, r3, r3
rsq_pp r0.w, r0.w
mad_pp r4.xyz, r3, r0.w, -r1
dp3_pp r1.x, r2, -r1
max_pp r2.w, r1.x, c8.z
mul_pp r1.xyz, r0.w, r3
dp3_pp r0.w, r4, r4
add r3.x, -r0.w, c10.x
rsq_pp r0.w, r0.w
cmp_pp r0.w, r3.x, c10.y, r0.w
mul_pp r3.xyz, r0.w, r4
dp3_pp r0.w, r2, r3
dp3_pp r2.x, r2, r1
dp3_pp r1.x, r1, r3
max_pp r2.y, r1.x, c8.z
max_pp r1.x, r2.x, c8.z
max_pp r1.y, r0.w, c8.z
add_pp r0.w, r1.w, -c7.x
add_pp r1.z, -r0.w, c8.w
mad_pp r1.z, r1.z, c11.x, c11.y
log_pp r1.z, r1.z
rcp r1.z, r1.z
mul_pp r1.z, r1.z, c10.w
mul_pp r2.x, r1.z, r1.z
mad_pp r1.z, r1.z, r1.z, c8.w
mul_pp r1.z, r1.z, c4.y
pow_pp r3.x, r1.y, r2.x
mul_pp r1.y, r1.z, r3.x
mul_pp r1.z, r0.w, r0.w
mul_pp r2.x, r1.z, c4.w
mad_pp r1.z, r1.z, -c4.w, r1.w
mad_pp r2.z, r2.w, r1.z, r2.x
add_pp r2.w, -r2.w, c8.w
mad_pp r1.z, r1.x, r1.z, r2.x
mad r1.z, r1.z, r2.z, c10.z
rcp_pp r1.z, r1.z
mul_pp r1.y, r1.y, r1.z
mul_pp r1.y, r1.x, r1.y
mul_pp r1.y, r1.y, c4.x
max_pp r2.x, r1.y, c8.z
mul_pp r3.xyz, r0, r2.x
add_pp r1.y, -r2.y, c8.w
mul_pp r1.z, r2.y, r2.y
dp2add_pp r0.w, r1.z, r0.w, c11.z
mul_pp r1.z, r1.y, r1.y
mul_pp r1.z, r1.z, r1.z
mul_pp r1.y, r1.y, r1.z
lrp_pp r2.xyz, r1.y, r1.w, c3
mul_pp r1.yzw, r2.xxyz, r3.xxyz
mul_pp r2.x, r2.w, r2.w
mul_pp r2.x, r2.x, r2.x
mul_pp r2.x, r2.w, r2.x
mad_pp r2.x, r0.w, r2.x, c8.w
add_pp r2.y, -r1.x, c8.w
mul_pp r2.z, r2.y, r2.y
mul_pp r2.z, r2.z, r2.z
mul_pp r2.y, r2.y, r2.z
mad_pp r0.w, r0.w, r2.y, c8.w
mul_pp r0.w, r2.x, r0.w
mul_pp r0.w, r1.x, r0.w
mul_pp r0.xyz, r0.w, r0
max_pp r0.w, c3.x, c3.y
max_pp r1.x, r0.w, c3.z
add_pp r0.w, -r1.x, c8.w
texld r2, v0, s0
mul_pp r2.xyz, r2, c5
mul_pp r2.xyz, r0.w, r2
mad_pp oC0.xyz, r2, r0, r1.yzww
mov_pp oC0.w, c8.w

"
}
}
 }


 // Stats for Vertex shader:
 //        d3d9 : 24 avg math (8..41)
 // Stats for Fragment shader:
 //        d3d9 : 3 avg math (2..4)
 Pass {
  Name "SHADOWCASTER"
  Tags { "LIGHTMODE"="SHADOWCASTER" "SHADOWSUPPORT"="true" "RenderType"="Opaque" "PerformanceChecks"="False" }
  GpuProgramID 163686
Program "vp" {
SubProgram "d3d9 " {
// Stats: 41 math
Keywords { "SHADOWS_DEPTH" }
Bind "vertex" Vertex
Bind "normal" Normal
Matrix 8 [_Object2World] 3
Matrix 11 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [unity_MatrixVP]
Vector 14 [_WorldSpaceLightPos0]
Vector 15 [unity_LightShadowBias]
"vs_3_0
def c16, 1, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord o0
dcl_position o1
abs r0.x, c15.z
slt r0.x, -r0.x, r0.x
mul r0.yzw, c12.xxyz, v1.y
mad r0.yzw, c11.xxyz, v1.x, r0
mad r0.yzw, c13.xxyz, v1.z, r0
nrm r1.xyz, r0.yzww
mad r2, v0.xyzx, c16.xxxy, c16.yyyx
dp4 r3.x, c8, r2
dp4 r3.y, c9, r2
dp4 r3.z, c10, r2
mad r0.yzw, r3.xxyz, -c14.w, c14.xxyz
nrm r4.xyz, r0.yzww
dp3 r0.y, r1, r4
mad r0.y, r0.y, -r0.y, c16.x
rsq r0.y, r0.y
rcp r0.y, r0.y
mul r0.y, r0.y, c15.z
mad r1.xyz, r1, -r0.y, r3
mov r1.w, c16.x
dp4 r3.x, c4, r1
dp4 r3.y, c5, r1
dp4 r3.z, c6, r1
dp4 r3.w, c7, r1
dp4 r1.x, c0, r2
dp4 r1.y, c1, r2
dp4 r1.z, c2, r2
dp4 r1.w, c3, r2
lrp r2, r0.x, r3, r1
rcp r0.x, r2.w
mul_sat r0.x, r0.x, c15.x
add r0.x, r0.x, r2.z
max r0.y, r0.x, c16.y
lrp r2.z, c15.y, r0.y, r0.x
mov o0, r2
mov o1, r2

"
}
SubProgram "d3d9 " {
// Stats: 8 math
Keywords { "SHADOWS_CUBE" }
Bind "vertex" Vertex
Matrix 4 [_Object2World] 3
Matrix 0 [glstate_matrix_mvp]
Vector 7 [_LightPositionRange]
"vs_3_0
dcl_position v0
dcl_texcoord o0.xyz
dcl_position o1
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o0.xyz, r0, -c7
dp4 o1.x, c0, v0
dp4 o1.y, c1, v0
dp4 o1.z, c2, v0
dp4 o1.w, c3, v0

"
}
}
Program "fp" {
SubProgram "d3d9 " {
// Stats: 2 math
Keywords { "SHADOWS_DEPTH" }
"ps_3_0
dcl_texcoord v0.zw
rcp r0.x, v0.w
mul_pp oC0, r0.x, v0.z

"
}
SubProgram "d3d9 " {
// Stats: 4 math
Keywords { "SHADOWS_CUBE" }
Vector 0 [_LightPositionRange]
"ps_3_0
dcl_texcoord v0.xyz
dp3 r0.x, v0, v0
rsq r0.x, r0.x
rcp r0.x, r0.x
mul_pp oC0, r0.x, c0.w

"
}
}
 }


 // Stats for Vertex shader:
 //        d3d9 : 39 avg math (34..44)
 // Stats for Fragment shader:
 //        d3d9 : 105 avg math (98..113), 6 avg texture (6..7), 5 branch
 Pass {
  Name "DEFERRED"
  Tags { "LIGHTMODE"="Deferred" "RenderType"="Opaque" "PerformanceChecks"="False" }
  GpuProgramID 250614
Program "vp" {
SubProgram "d3d9 " {
// Stats: 34 math
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 16 [_DetailAlbedoMap_ST]
Vector 15 [_MainTex_ST]
Float 17 [_UVSec]
Vector 10 [_WorldSpaceCameraPos]
Vector 13 [unity_SHBb]
Vector 12 [unity_SHBg]
Vector 11 [unity_SHBr]
Vector 14 [unity_SHC]
"vs_3_0
def c18, 0, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6
dcl_texcoord6 o7.xyz
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c15, c15.zwzw
abs r0.x, c17.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c16.xyxy, c16
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c10
mov o7.xyz, r0
mul r0.xyz, c8, v1.y
mad r0.xyz, c7, v1.x, r0
mad r0.xyz, c9, v1.z, r0
nrm r1.xyz, r0
mul r0.x, r1.y, r1.y
mad r0.x, r1.x, r1.x, -r0.x
mul r2, r1.yzzx, r1.xyzz
mov o5.xyz, r1
dp4 r1.x, c11, r2
dp4 r1.y, c12, r2
dp4 r1.z, c13, r2
mad o6.xyz, c14, r0.x, r1
mov o3, c18.x
mov o4, c18.x
mov o5.w, c18.x
mov o6.w, c18.x

"
}
SubProgram "d3d9 " {
// Stats: 44 math
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "_NORMALMAP" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 16 [_DetailAlbedoMap_ST]
Vector 15 [_MainTex_ST]
Float 17 [_UVSec]
Vector 10 [_WorldSpaceCameraPos]
Vector 13 [unity_SHBb]
Vector 12 [unity_SHBg]
Vector 11 [unity_SHBr]
Vector 14 [unity_SHC]
"vs_3_0
def c18, 0, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6
dcl_texcoord6 o7.xyz
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c15, c15.zwzw
abs r0.x, c17.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c16.xyxy, c16
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c10
mov o7.xyz, r0
dp3 r0.x, c4, v4
dp3 r0.y, c5, v4
dp3 r0.z, c6, v4
nrm r1.xyz, r0
mul r0.xyz, c8, v1.y
mad r0.xyz, c7, v1.x, r0
mad r0.xyz, c9, v1.z, r0
nrm r2.xyz, r0
mul r0.xyz, r1.yzxw, r2.zxyw
mad r0.xyz, r2.yzxw, r1.zxyw, -r0
mov o3.xyz, r1
mul o4.xyz, r0, v4.w
mul r0.x, r2.y, r2.y
mad r0.x, r2.x, r2.x, -r0.x
mul r1, r2.yzzx, r2.xyzz
mov o5.xyz, r2
dp4 r2.x, c11, r1
dp4 r2.y, c12, r1
dp4 r2.z, c13, r1
mad o6.xyz, c14, r0.x, r2
mov o3.w, c18.x
mov o4.w, c18.x
mov o5.w, c18.x
mov o6.w, c18.x

"
}
SubProgram "d3d9 " {
// Stats: 34 math
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "UNITY_HDR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 16 [_DetailAlbedoMap_ST]
Vector 15 [_MainTex_ST]
Float 17 [_UVSec]
Vector 10 [_WorldSpaceCameraPos]
Vector 13 [unity_SHBb]
Vector 12 [unity_SHBg]
Vector 11 [unity_SHBr]
Vector 14 [unity_SHC]
"vs_3_0
def c18, 0, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6
dcl_texcoord6 o7.xyz
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c15, c15.zwzw
abs r0.x, c17.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c16.xyxy, c16
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c10
mov o7.xyz, r0
mul r0.xyz, c8, v1.y
mad r0.xyz, c7, v1.x, r0
mad r0.xyz, c9, v1.z, r0
nrm r1.xyz, r0
mul r0.x, r1.y, r1.y
mad r0.x, r1.x, r1.x, -r0.x
mul r2, r1.yzzx, r1.xyzz
mov o5.xyz, r1
dp4 r1.x, c11, r2
dp4 r1.y, c12, r2
dp4 r1.z, c13, r2
mad o6.xyz, c14, r0.x, r1
mov o3, c18.x
mov o4, c18.x
mov o5.w, c18.x
mov o6.w, c18.x

"
}
SubProgram "d3d9 " {
// Stats: 44 math
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "UNITY_HDR_ON" "_NORMALMAP" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 16 [_DetailAlbedoMap_ST]
Vector 15 [_MainTex_ST]
Float 17 [_UVSec]
Vector 10 [_WorldSpaceCameraPos]
Vector 13 [unity_SHBb]
Vector 12 [unity_SHBg]
Vector 11 [unity_SHBr]
Vector 14 [unity_SHC]
"vs_3_0
def c18, 0, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6
dcl_texcoord6 o7.xyz
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c15, c15.zwzw
abs r0.x, c17.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c16.xyxy, c16
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c10
mov o7.xyz, r0
dp3 r0.x, c4, v4
dp3 r0.y, c5, v4
dp3 r0.z, c6, v4
nrm r1.xyz, r0
mul r0.xyz, c8, v1.y
mad r0.xyz, c7, v1.x, r0
mad r0.xyz, c9, v1.z, r0
nrm r2.xyz, r0
mul r0.xyz, r1.yzxw, r2.zxyw
mad r0.xyz, r2.yzxw, r1.zxyw, -r0
mov o3.xyz, r1
mul o4.xyz, r0, v4.w
mul r0.x, r2.y, r2.y
mad r0.x, r2.x, r2.x, -r0.x
mul r1, r2.yzzx, r2.xyzz
mov o5.xyz, r2
dp4 r2.x, c11, r1
dp4 r2.y, c12, r1
dp4 r2.z, c13, r1
mad o6.xyz, c14, r0.x, r2
mov o3.w, c18.x
mov o4.w, c18.x
mov o5.w, c18.x
mov o6.w, c18.x

"
}
}
Program "fp" {
SubProgram "d3d9 " {
// Stats: 101 math, 6 textures, 5 branches
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
Vector 12 [_Color]
Float 13 [_Glossiness]
Float 14 [_OcclusionStrength]
Vector 11 [_SpecColor]
Vector 2 [unity_SHAb]
Vector 1 [unity_SHAg]
Vector 0 [unity_SHAr]
Vector 3 [unity_SpecCube0_BoxMax]
Vector 4 [unity_SpecCube0_BoxMin]
Vector 6 [unity_SpecCube0_HDR]
Vector 5 [unity_SpecCube0_ProbePosition]
Vector 7 [unity_SpecCube1_BoxMax]
Vector 8 [unity_SpecCube1_BoxMin]
Vector 10 [unity_SpecCube1_HDR]
Vector 9 [unity_SpecCube1_ProbePosition]
SetTexture 0 [unity_SpecCube0] CUBE 0
SetTexture 1 [unity_SpecCube1] CUBE 1
SetTexture 2 [_MainTex] 2D 2
SetTexture 3 [_OcclusionMap] 2D 3
"ps_3_0
def c15, 7, 0.999989986, 0, 0
def c16, 1, 0, 0.5, 0.75
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord4_pp v2.xyz
dcl_texcoord5_pp v3.xyz
dcl_texcoord6_pp v4.xyz
dcl_cube s0
dcl_cube s1
dcl_2d s2
dcl_2d s3
nrm_pp r0.xyz, v2
nrm_pp r1.xyz, v1
texld r2, v0, s2
mul_pp r2.xyz, r2, c12
max_pp r1.w, c11.x, c11.y
max_pp r2.w, r1.w, c11.z
add_pp r1.w, -r2.w, c16.x
mul_pp r2.xyz, r1.w, r2
texld_pp r3, v0, s3
mov r4.xyz, c16
add_pp r3.x, r4.x, -c14.x
mad_pp r2.w, r3.y, c14.x, r3.x
mov r0.w, c16.x
dp4_pp r3.x, c0, r0
dp4_pp r3.y, c1, r0
dp4_pp r3.z, c2, r0
add_pp r3.xyz, r3, v3
mul_pp r3.xyz, r2.w, r3
dp3 r3.w, r1, r0
add r3.w, r3.w, r3.w
mad_pp r5.xyz, r0, -r3.w, r1
if_lt -c5.w, r4.y
nrm_pp r6.xyz, r5
add r7.xyz, c3, -v4
rcp r8.x, r6.x
rcp r8.y, r6.y
rcp r8.z, r6.z
mul_pp r7.xyz, r7, r8
add r9.xyz, c4, -v4
mul_pp r8.xyz, r8, r9
cmp_pp r7.xyz, -r6, r8, r7
min_pp r3.w, r7.y, r7.x
min_pp r4.w, r7.z, r3.w
mov r7.xyz, c4
add r7.xyz, r7, c3
mad r8.xyz, r7, r4.z, -c5
add r8.xyz, r8, v4
mad r6.xyz, r6, r4.w, r8
mad_pp r6.xyz, r7, -c16.z, r6
else
mov_pp r6.xyz, r5
endif
add_pp r3.w, r4.x, -c13.x
pow_pp r4.x, r3.w, c16.w
mul_pp r6.w, r4.x, c15.x
texldl_pp r7, r6, s0
pow_pp r3.w, r7.w, c6.y
mul_pp r3.w, r3.w, c6.x
mul_pp r8.xyz, r7, r3.w
mov r4.w, c4.w
if_lt r4.w, c15.y
if_lt -c9.w, r4.y
nrm_pp r9.xyz, r5
add r4.xyw, c7.xyzz, -v4.xyzz
rcp r10.x, r9.x
rcp r10.y, r9.y
rcp r10.z, r9.z
mul_pp r4.xyw, r4, r10.xyzz
add r11.xyz, c8, -v4
mul_pp r10.xyz, r10, r11
cmp_pp r4.xyw, -r9.xyzz, r10.xyzz, r4
min_pp r5.w, r4.y, r4.x
min_pp r7.w, r4.w, r5.w
mov r10.xyz, c7
add r4.xyw, r10.xyzz, c8.xyzz
mad r10.xyz, r4.xyww, r4.z, -c9
add r10.xyz, r10, v4
mad r9.xyz, r9, r7.w, r10
mad_pp r6.xyz, r4.xyww, -c16.z, r9
else
mov_pp r6.xyz, r5
endif
texldl_pp r4, r6, s1
pow_pp r5.x, r4.w, c10.y
mul_pp r4.w, r5.x, c10.x
mul_pp r4.xyz, r4, r4.w
mad r5.xyz, r3.w, r7, -r4
mad_pp r8.xyz, c4.w, r5, r4
endif
mul_pp r4.xyz, r2.w, r8
dp3_pp r1.x, r0, -r1
add_pp r1.yz, -r1.xwxw, c16.x
add_sat_pp r1.y, r1.y, c13.x
cmp_pp r1.x, r1.x, r1.z, c16.x
mul_pp r1.z, r1.x, r1.x
mul_pp r1.z, r1.z, r1.z
mul_pp r1.x, r1.x, r1.z
lrp_pp r5.xyz, r1.x, r1.y, c11
mul_pp r1.xyz, r4, r5
mad_pp r1.xyz, r2, r3, r1
exp_pp oC3.x, -r1.x
exp_pp oC3.y, -r1.y
exp_pp oC3.z, -r1.z
mov_pp oC0, r2
mov_pp oC1.xyz, c11
mov_pp oC1.w, c13.x
mad_pp oC2, r0, c16.zzzx, c16.zzzy
mov_pp oC3.w, c16.x

"
}
SubProgram "d3d9 " {
// Stats: 113 math, 7 textures, 5 branches
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "_NORMALMAP" }
Float 13 [_BumpScale]
Vector 12 [_Color]
Float 14 [_Glossiness]
Float 15 [_OcclusionStrength]
Vector 11 [_SpecColor]
Vector 2 [unity_SHAb]
Vector 1 [unity_SHAg]
Vector 0 [unity_SHAr]
Vector 3 [unity_SpecCube0_BoxMax]
Vector 4 [unity_SpecCube0_BoxMin]
Vector 6 [unity_SpecCube0_HDR]
Vector 5 [unity_SpecCube0_ProbePosition]
Vector 7 [unity_SpecCube1_BoxMax]
Vector 8 [unity_SpecCube1_BoxMin]
Vector 10 [unity_SpecCube1_HDR]
Vector 9 [unity_SpecCube1_ProbePosition]
SetTexture 0 [unity_SpecCube0] CUBE 0
SetTexture 1 [unity_SpecCube1] CUBE 1
SetTexture 2 [_MainTex] 2D 2
SetTexture 3 [_BumpMap] 2D 3
SetTexture 4 [_OcclusionMap] 2D 4
"ps_3_0
def c16, 2, -1, 0, 1
def c17, 0.5, 0.75, 7, 0.999989986
def c18, 0.5, 1, 0, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2.xyz
dcl_texcoord3_pp v3.xyz
dcl_texcoord4_pp v4.xyz
dcl_texcoord5_pp v5.xyz
dcl_texcoord6_pp v6.xyz
dcl_cube s0
dcl_cube s1
dcl_2d s2
dcl_2d s3
dcl_2d s4
texld_pp r0, v0, s3
mad_pp r0.xy, r0.wyzw, c16.x, c16.y
mul_pp r0.xy, r0, c13.x
dp2add_sat_pp r0.z, r0, r0, c16.z
add_pp r0.z, -r0.z, c16.w
rsq_pp r0.z, r0.z
rcp_pp r0.z, r0.z
mul_pp r1.xyz, r0.y, v3
mad_pp r0.xyw, r0.x, v2.xyzz, r1.xyzz
mad_pp r0.xyz, r0.z, v4, r0.xyww
nrm_pp r1.xyz, r0
nrm_pp r0.xyz, v1
texld r2, v0, s2
mul_pp r2.xyz, r2, c12
max_pp r0.w, c11.x, c11.y
max_pp r2.w, r0.w, c11.z
add_pp r0.w, -r2.w, c16.w
mul_pp r2.xyz, r0.w, r2
texld_pp r3, v0, s4
mov r3.zw, c16
add_pp r3.x, r3.w, -c15.x
mad_pp r2.w, r3.y, c15.x, r3.x
mov_pp r1.w, c16.w
dp4_pp r4.x, c0, r1
dp4_pp r4.y, c1, r1
dp4_pp r4.z, c2, r1
add_pp r4.xyz, r4, v5
mul_pp r4.xyz, r2.w, r4
dp3 r3.x, r0, r1
add r3.x, r3.x, r3.x
mad_pp r5.xyz, r1, -r3.x, r0
if_lt -c5.w, r3.z
nrm_pp r6.xyz, r5
add r7.xyz, c3, -v6
rcp r8.x, r6.x
rcp r8.y, r6.y
rcp r8.z, r6.z
mul_pp r7.xyz, r7, r8
add r9.xyz, c4, -v6
mul_pp r8.xyz, r8, r9
cmp_pp r7.xyz, -r6, r8, r7
min_pp r3.x, r7.y, r7.x
min_pp r4.w, r7.z, r3.x
mov r7.xyz, c4
add r7.xyz, r7, c3
mov r3.x, c17.x
mad r8.xyz, r7, r3.x, -c5
add r8.xyz, r8, v6
mad r6.xyz, r6, r4.w, r8
mad_pp r6.xyz, r7, -c17.x, r6
else
mov_pp r6.xyz, r5
endif
add_pp r3.x, r3.w, -c14.x
pow_pp r4.w, r3.x, c17.y
mul_pp r6.w, r4.w, c17.z
texldl_pp r7, r6, s0
pow_pp r3.x, r7.w, c6.y
mul_pp r3.x, r3.x, c6.x
mul_pp r8.xyz, r7, r3.x
mov r9.xw, c17
if_lt c4.w, r9.w
if_lt -c9.w, r3.z
nrm_pp r10.xyz, r5
add r3.yzw, c7.xxyz, -v6.xxyz
rcp r11.x, r10.x
rcp r11.y, r10.y
rcp r11.z, r10.z
mul_pp r3.yzw, r3, r11.xxyz
add r9.yzw, c8.xxyz, -v6.xxyz
mul_pp r9.yzw, r11.xxyz, r9
cmp_pp r3.yzw, -r10.xxyz, r9, r3
min_pp r4.w, r3.z, r3.y
min_pp r5.w, r3.w, r4.w
mov r11.xyz, c7
add r3.yzw, r11.xxyz, c8.xxyz
mad r9.xyz, r3.yzww, r9.x, -c9
add r9.xyz, r9, v6
mad r9.xyz, r10, r5.w, r9
mad_pp r6.xyz, r3.yzww, -c17.x, r9
else
mov_pp r6.xyz, r5
endif
texldl_pp r5, r6, s1
pow_pp r3.y, r5.w, c10.y
mul_pp r3.y, r3.y, c10.x
mul_pp r3.yzw, r5.xxyz, r3.y
mad r5.xyz, r3.x, r7, -r3.yzww
mad_pp r8.xyz, c4.w, r5, r3.yzww
endif
mul_pp r3.xyz, r2.w, r8
dp3_pp r0.x, r1, -r0
add_pp r0.y, -r0.w, c14.x
add_sat_pp r0.y, r0.y, c16.w
add_pp r0.z, -r0.x, c16.w
cmp_pp r0.x, r0.x, r0.z, c16.w
mul_pp r0.z, r0.x, r0.x
mul_pp r0.z, r0.z, r0.z
mul_pp r0.x, r0.x, r0.z
lrp_pp r5.xyz, r0.x, r0.y, c11
mul_pp r0.xyz, r3, r5
mad_pp r0.xyz, r2, r4, r0
exp_pp oC3.x, -r0.x
exp_pp oC3.y, -r0.y
exp_pp oC3.z, -r0.z
mov_pp oC0, r2
mov_pp oC1.xyz, c11
mov_pp oC1.w, c14.x
mad_pp oC2, r1, c18.xxxy, c18.xxxz
mov_pp oC3.w, c16.w

"
}
SubProgram "d3d9 " {
// Stats: 98 math, 6 textures, 5 branches
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "UNITY_HDR_ON" }
Vector 12 [_Color]
Float 13 [_Glossiness]
Float 14 [_OcclusionStrength]
Vector 11 [_SpecColor]
Vector 2 [unity_SHAb]
Vector 1 [unity_SHAg]
Vector 0 [unity_SHAr]
Vector 3 [unity_SpecCube0_BoxMax]
Vector 4 [unity_SpecCube0_BoxMin]
Vector 6 [unity_SpecCube0_HDR]
Vector 5 [unity_SpecCube0_ProbePosition]
Vector 7 [unity_SpecCube1_BoxMax]
Vector 8 [unity_SpecCube1_BoxMin]
Vector 10 [unity_SpecCube1_HDR]
Vector 9 [unity_SpecCube1_ProbePosition]
SetTexture 0 [unity_SpecCube0] CUBE 0
SetTexture 1 [unity_SpecCube1] CUBE 1
SetTexture 2 [_MainTex] 2D 2
SetTexture 3 [_OcclusionMap] 2D 3
"ps_3_0
def c15, 7, 0.999989986, 0, 0
def c16, 1, 0, 0.5, 0.75
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord4_pp v2.xyz
dcl_texcoord5_pp v3.xyz
dcl_texcoord6_pp v4.xyz
dcl_cube s0
dcl_cube s1
dcl_2d s2
dcl_2d s3
nrm_pp r0.xyz, v2
nrm_pp r1.xyz, v1
texld r2, v0, s2
mul_pp r2.xyz, r2, c12
max_pp r1.w, c11.x, c11.y
max_pp r2.w, r1.w, c11.z
add_pp r1.w, -r2.w, c16.x
mul_pp r2.xyz, r1.w, r2
texld_pp r3, v0, s3
mov r4.xyz, c16
add_pp r3.x, r4.x, -c14.x
mad_pp r2.w, r3.y, c14.x, r3.x
mov r0.w, c16.x
dp4_pp r3.x, c0, r0
dp4_pp r3.y, c1, r0
dp4_pp r3.z, c2, r0
add_pp r3.xyz, r3, v3
mul_pp r3.xyz, r2.w, r3
dp3 r3.w, r1, r0
add r3.w, r3.w, r3.w
mad_pp r5.xyz, r0, -r3.w, r1
if_lt -c5.w, r4.y
nrm_pp r6.xyz, r5
add r7.xyz, c3, -v4
rcp r8.x, r6.x
rcp r8.y, r6.y
rcp r8.z, r6.z
mul_pp r7.xyz, r7, r8
add r9.xyz, c4, -v4
mul_pp r8.xyz, r8, r9
cmp_pp r7.xyz, -r6, r8, r7
min_pp r3.w, r7.y, r7.x
min_pp r4.w, r7.z, r3.w
mov r7.xyz, c4
add r7.xyz, r7, c3
mad r8.xyz, r7, r4.z, -c5
add r8.xyz, r8, v4
mad r6.xyz, r6, r4.w, r8
mad_pp r6.xyz, r7, -c16.z, r6
else
mov_pp r6.xyz, r5
endif
add_pp r3.w, r4.x, -c13.x
pow_pp r4.x, r3.w, c16.w
mul_pp r6.w, r4.x, c15.x
texldl_pp r7, r6, s0
pow_pp r3.w, r7.w, c6.y
mul_pp r3.w, r3.w, c6.x
mul_pp r8.xyz, r7, r3.w
mov r4.w, c4.w
if_lt r4.w, c15.y
if_lt -c9.w, r4.y
nrm_pp r9.xyz, r5
add r4.xyw, c7.xyzz, -v4.xyzz
rcp r10.x, r9.x
rcp r10.y, r9.y
rcp r10.z, r9.z
mul_pp r4.xyw, r4, r10.xyzz
add r11.xyz, c8, -v4
mul_pp r10.xyz, r10, r11
cmp_pp r4.xyw, -r9.xyzz, r10.xyzz, r4
min_pp r5.w, r4.y, r4.x
min_pp r7.w, r4.w, r5.w
mov r10.xyz, c7
add r4.xyw, r10.xyzz, c8.xyzz
mad r10.xyz, r4.xyww, r4.z, -c9
add r10.xyz, r10, v4
mad r9.xyz, r9, r7.w, r10
mad_pp r6.xyz, r4.xyww, -c16.z, r9
else
mov_pp r6.xyz, r5
endif
texldl_pp r4, r6, s1
pow_pp r5.x, r4.w, c10.y
mul_pp r4.w, r5.x, c10.x
mul_pp r4.xyz, r4, r4.w
mad r5.xyz, r3.w, r7, -r4
mad_pp r8.xyz, c4.w, r5, r4
endif
mul_pp r4.xyz, r2.w, r8
dp3_pp r1.x, r0, -r1
add_pp r1.yz, -r1.xwxw, c16.x
add_sat_pp r1.y, r1.y, c13.x
cmp_pp r1.x, r1.x, r1.z, c16.x
mul_pp r1.z, r1.x, r1.x
mul_pp r1.z, r1.z, r1.z
mul_pp r1.x, r1.x, r1.z
lrp_pp r5.xyz, r1.x, r1.y, c11
mul_pp r1.xyz, r4, r5
mad_pp oC3.xyz, r2, r3, r1
mov_pp oC0, r2
mov_pp oC1.xyz, c11
mov_pp oC1.w, c13.x
mad_pp oC2, r0, c16.zzzx, c16.zzzy
mov_pp oC3.w, c16.x

"
}
SubProgram "d3d9 " {
// Stats: 110 math, 7 textures, 5 branches
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "UNITY_HDR_ON" "_NORMALMAP" }
Float 13 [_BumpScale]
Vector 12 [_Color]
Float 14 [_Glossiness]
Float 15 [_OcclusionStrength]
Vector 11 [_SpecColor]
Vector 2 [unity_SHAb]
Vector 1 [unity_SHAg]
Vector 0 [unity_SHAr]
Vector 3 [unity_SpecCube0_BoxMax]
Vector 4 [unity_SpecCube0_BoxMin]
Vector 6 [unity_SpecCube0_HDR]
Vector 5 [unity_SpecCube0_ProbePosition]
Vector 7 [unity_SpecCube1_BoxMax]
Vector 8 [unity_SpecCube1_BoxMin]
Vector 10 [unity_SpecCube1_HDR]
Vector 9 [unity_SpecCube1_ProbePosition]
SetTexture 0 [unity_SpecCube0] CUBE 0
SetTexture 1 [unity_SpecCube1] CUBE 1
SetTexture 2 [_MainTex] 2D 2
SetTexture 3 [_BumpMap] 2D 3
SetTexture 4 [_OcclusionMap] 2D 4
"ps_3_0
def c16, 2, -1, 0, 1
def c17, 0.5, 0.75, 7, 0.999989986
def c18, 0.5, 1, 0, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2.xyz
dcl_texcoord3_pp v3.xyz
dcl_texcoord4_pp v4.xyz
dcl_texcoord5_pp v5.xyz
dcl_texcoord6_pp v6.xyz
dcl_cube s0
dcl_cube s1
dcl_2d s2
dcl_2d s3
dcl_2d s4
texld_pp r0, v0, s3
mad_pp r0.xy, r0.wyzw, c16.x, c16.y
mul_pp r0.xy, r0, c13.x
dp2add_sat_pp r0.z, r0, r0, c16.z
add_pp r0.z, -r0.z, c16.w
rsq_pp r0.z, r0.z
rcp_pp r0.z, r0.z
mul_pp r1.xyz, r0.y, v3
mad_pp r0.xyw, r0.x, v2.xyzz, r1.xyzz
mad_pp r0.xyz, r0.z, v4, r0.xyww
nrm_pp r1.xyz, r0
nrm_pp r0.xyz, v1
texld r2, v0, s2
mul_pp r2.xyz, r2, c12
max_pp r0.w, c11.x, c11.y
max_pp r2.w, r0.w, c11.z
add_pp r0.w, -r2.w, c16.w
mul_pp r2.xyz, r0.w, r2
texld_pp r3, v0, s4
mov r3.zw, c16
add_pp r3.x, r3.w, -c15.x
mad_pp r2.w, r3.y, c15.x, r3.x
mov_pp r1.w, c16.w
dp4_pp r4.x, c0, r1
dp4_pp r4.y, c1, r1
dp4_pp r4.z, c2, r1
add_pp r4.xyz, r4, v5
mul_pp r4.xyz, r2.w, r4
dp3 r3.x, r0, r1
add r3.x, r3.x, r3.x
mad_pp r5.xyz, r1, -r3.x, r0
if_lt -c5.w, r3.z
nrm_pp r6.xyz, r5
add r7.xyz, c3, -v6
rcp r8.x, r6.x
rcp r8.y, r6.y
rcp r8.z, r6.z
mul_pp r7.xyz, r7, r8
add r9.xyz, c4, -v6
mul_pp r8.xyz, r8, r9
cmp_pp r7.xyz, -r6, r8, r7
min_pp r3.x, r7.y, r7.x
min_pp r4.w, r7.z, r3.x
mov r7.xyz, c4
add r7.xyz, r7, c3
mov r3.x, c17.x
mad r8.xyz, r7, r3.x, -c5
add r8.xyz, r8, v6
mad r6.xyz, r6, r4.w, r8
mad_pp r6.xyz, r7, -c17.x, r6
else
mov_pp r6.xyz, r5
endif
add_pp r3.x, r3.w, -c14.x
pow_pp r4.w, r3.x, c17.y
mul_pp r6.w, r4.w, c17.z
texldl_pp r7, r6, s0
pow_pp r3.x, r7.w, c6.y
mul_pp r3.x, r3.x, c6.x
mul_pp r8.xyz, r7, r3.x
mov r9.xw, c17
if_lt c4.w, r9.w
if_lt -c9.w, r3.z
nrm_pp r10.xyz, r5
add r3.yzw, c7.xxyz, -v6.xxyz
rcp r11.x, r10.x
rcp r11.y, r10.y
rcp r11.z, r10.z
mul_pp r3.yzw, r3, r11.xxyz
add r9.yzw, c8.xxyz, -v6.xxyz
mul_pp r9.yzw, r11.xxyz, r9
cmp_pp r3.yzw, -r10.xxyz, r9, r3
min_pp r4.w, r3.z, r3.y
min_pp r5.w, r3.w, r4.w
mov r11.xyz, c7
add r3.yzw, r11.xxyz, c8.xxyz
mad r9.xyz, r3.yzww, r9.x, -c9
add r9.xyz, r9, v6
mad r9.xyz, r10, r5.w, r9
mad_pp r6.xyz, r3.yzww, -c17.x, r9
else
mov_pp r6.xyz, r5
endif
texldl_pp r5, r6, s1
pow_pp r3.y, r5.w, c10.y
mul_pp r3.y, r3.y, c10.x
mul_pp r3.yzw, r5.xxyz, r3.y
mad r5.xyz, r3.x, r7, -r3.yzww
mad_pp r8.xyz, c4.w, r5, r3.yzww
endif
mul_pp r3.xyz, r2.w, r8
dp3_pp r0.x, r1, -r0
add_pp r0.y, -r0.w, c14.x
add_sat_pp r0.y, r0.y, c16.w
add_pp r0.z, -r0.x, c16.w
cmp_pp r0.x, r0.x, r0.z, c16.w
mul_pp r0.z, r0.x, r0.x
mul_pp r0.z, r0.z, r0.z
mul_pp r0.x, r0.x, r0.z
lrp_pp r5.xyz, r0.x, r0.y, c11
mul_pp r0.xyz, r3, r5
mad_pp oC3.xyz, r2, r4, r0
mov_pp oC0, r2
mov_pp oC1.xyz, c11
mov_pp oC1.w, c14.x
mad_pp oC2, r1, c18.xxxy, c18.xxxz
mov_pp oC3.w, c16.w

"
}
}
 }
}
SubShader { 
 LOD 150
 Tags { "RenderType"="Opaque" "PerformanceChecks"="False" }


 // Stats for Vertex shader:
 //        d3d9 : 62 avg math (41..84)
 // Stats for Fragment shader:
 //        d3d9 : 46 avg math (42..51), 5 avg texture (4..6)
 Pass {
  Name "FORWARD"
  Tags { "LIGHTMODE"="ForwardBase" "SHADOWSUPPORT"="true" "RenderType"="Opaque" "PerformanceChecks"="False" }
  ZWrite [_ZWrite]
  Blend [_SrcBlend] [_DstBlend]
  GpuProgramID 329204
Program "vp" {
SubProgram "d3d9 " {
// Stats: 41 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 19 [_DetailAlbedoMap_ST]
Vector 18 [_MainTex_ST]
Float 20 [_UVSec]
Vector 10 [_WorldSpaceCameraPos]
Vector 13 [unity_SHAb]
Vector 12 [unity_SHAg]
Vector 11 [unity_SHAr]
Vector 16 [unity_SHBb]
Vector 15 [unity_SHBg]
Vector 14 [unity_SHBr]
Vector 17 [unity_SHC]
"vs_2_0
def c21, 1, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.z, c2, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c18, c18.zwzw
mul r0.x, c20.x, c20.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c19.xyxy, c19
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add r0.xyz, r0, -c10
dp3 r0.w, r0, r0
rsq r0.w, r0.w
mul oT1.xyz, r0.w, r0
mul r0.xyz, v1.y, c8
mad r0.xyz, c7, v1.x, r0
mad r0.xyz, c9, v1.z, r0
nrm r1.xyz, r0
mul r0.x, r1.y, r1.y
mad r0.x, r1.x, r1.x, -r0.x
mul r2, r1.yzzx, r1.xyzz
dp4 r3.x, c14, r2
dp4 r3.y, c15, r2
dp4 r3.z, c16, r2
mad r0.xyz, c17, r0.x, r3
mov r1.w, c21.x
dp4 r2.x, c11, r1
dp4 r2.y, c12, r1
dp4 r2.z, c13, r1
mov oT4.xyz, r1
add oT5.xyz, r0, r2
mov oT2, c21.y
mov oT3, c21.y
mov oT4.w, c21.y
mov oT5.w, c21.y

"
}
SubProgram "d3d9 " {
// Stats: 47 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 21 [_DetailAlbedoMap_ST]
Vector 20 [_MainTex_ST]
Vector 11 [_ProjectionParams]
Vector 12 [_ScreenParams]
Float 22 [_UVSec]
Vector 10 [_WorldSpaceCameraPos]
Vector 15 [unity_SHAb]
Vector 14 [unity_SHAg]
Vector 13 [unity_SHAr]
Vector 18 [unity_SHBb]
Vector 17 [unity_SHBg]
Vector 16 [unity_SHBr]
Vector 19 [unity_SHC]
"vs_2_0
def c23, 0.5, 1, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
mad oT0.xy, v2, c20, c20.zwzw
mul r0.x, c22.x, c22.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c21.xyxy, c21
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add r0.xyz, r0, -c10
dp3 r0.w, r0, r0
rsq r0.w, r0.w
mul oT1.xyz, r0.w, r0
dp4 r0.y, c1, v0
mul r1.x, r0.y, c11.x
mul r1.w, r1.x, c23.x
dp4 r0.x, c0, v0
dp4 r0.w, c3, v0
mul r1.xz, r0.xyww, c23.x
mad oT6.xy, r1.z, c12.zwzw, r1.xwzw
mul r1.xyz, v1.y, c8
mad r1.xyz, c7, v1.x, r1
mad r1.xyz, c9, v1.z, r1
nrm r2.xyz, r1
mul r1.x, r2.y, r2.y
mad r1.x, r2.x, r2.x, -r1.x
mul r3, r2.yzzx, r2.xyzz
dp4 r4.x, c16, r3
dp4 r4.y, c17, r3
dp4 r4.z, c18, r3
mad r1.xyz, c19, r1.x, r4
mov r2.w, c23.y
dp4 r3.x, c13, r2
dp4 r3.y, c14, r2
dp4 r3.z, c15, r2
mov oT4.xyz, r2
add oT5.xyz, r1, r3
dp4 r0.z, c2, v0
mov oPos, r0
mov oT6.zw, r0
mov oT2, c23.z
mov oT3, c23.z
mov oT4.w, c23.z
mov oT5.w, c23.z

"
}
SubProgram "d3d9 " {
// Stats: 68 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "VERTEXLIGHT_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 8 [_Object2World] 3
Matrix 11 [_World2Object] 3
Matrix 4 [glstate_matrix_mvp]
Vector 27 [_DetailAlbedoMap_ST]
Vector 26 [_MainTex_ST]
Float 28 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 18 [unity_4LightAtten0]
Vector 15 [unity_4LightPosX0]
Vector 16 [unity_4LightPosY0]
Vector 17 [unity_4LightPosZ0]
Vector 0 [unity_LightColor0]
Vector 1 [unity_LightColor1]
Vector 2 [unity_LightColor2]
Vector 3 [unity_LightColor3]
Vector 21 [unity_SHAb]
Vector 20 [unity_SHAg]
Vector 19 [unity_SHAr]
Vector 24 [unity_SHBb]
Vector 23 [unity_SHBg]
Vector 22 [unity_SHBr]
Vector 25 [unity_SHC]
"vs_2_0
def c29, 1, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dp4 oPos.x, c4, v0
dp4 oPos.y, c5, v0
dp4 oPos.z, c6, v0
dp4 oPos.w, c7, v0
mad oT0.xy, v2, c26, c26.zwzw
mul r0.x, c28.x, c28.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c27.xyxy, c27
dp4 r0.x, c8, v0
dp4 r0.y, c9, v0
dp4 r0.z, c10, v0
add r1.xyz, r0, -c14
add r2, -r0.x, c15
add r3, -r0.y, c16
add r0, -r0.z, c17
dp3 r1.w, r1, r1
rsq r1.w, r1.w
mul oT1.xyz, r1.w, r1
mul r1, r3, r3
mad r1, r2, r2, r1
mad r1, r0, r0, r1
rsq r4.x, r1.x
rsq r4.y, r1.y
rsq r4.z, r1.z
rsq r4.w, r1.w
mov r5.x, c29.x
mad r1, r1, c18, r5.x
mul r5.xyz, v1.y, c12
mad r5.xyz, c11, v1.x, r5
mad r5.xyz, c13, v1.z, r5
nrm r6.xyz, r5
mul r3, r3, r6.y
mad r2, r2, r6.x, r3
mad r0, r0, r6.z, r2
mul r0, r4, r0
max r0, r0, c29.y
rcp r2.x, r1.x
rcp r2.y, r1.y
rcp r2.z, r1.z
rcp r2.w, r1.w
mul r0, r0, r2
mul r1.xyz, r0.y, c1
mad r1.xyz, c0, r0.x, r1
mad r0.xyz, c2, r0.z, r1
mad r0.xyz, c3, r0.w, r0
mul r0.w, r6.y, r6.y
mad r0.w, r6.x, r6.x, -r0.w
mul r1, r6.yzzx, r6.xyzz
dp4 r2.x, c22, r1
dp4 r2.y, c23, r1
dp4 r2.z, c24, r1
mad r1.xyz, c25, r0.w, r2
mov r6.w, c29.x
dp4 r2.x, c19, r6
dp4 r2.y, c20, r6
dp4 r2.z, c21, r6
mov oT4.xyz, r6
add r1.xyz, r1, r2
add oT5.xyz, r0, r1
mov oT2, c29.y
mov oT3, c29.y
mov oT4.w, c29.y
mov oT5.w, c29.y

"
}
SubProgram "d3d9 " {
// Stats: 74 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "VERTEXLIGHT_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 8 [_Object2World] 3
Matrix 11 [_World2Object] 3
Matrix 4 [glstate_matrix_mvp]
Vector 29 [_DetailAlbedoMap_ST]
Vector 28 [_MainTex_ST]
Vector 15 [_ProjectionParams]
Vector 16 [_ScreenParams]
Float 30 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 20 [unity_4LightAtten0]
Vector 17 [unity_4LightPosX0]
Vector 18 [unity_4LightPosY0]
Vector 19 [unity_4LightPosZ0]
Vector 0 [unity_LightColor0]
Vector 1 [unity_LightColor1]
Vector 2 [unity_LightColor2]
Vector 3 [unity_LightColor3]
Vector 23 [unity_SHAb]
Vector 22 [unity_SHAg]
Vector 21 [unity_SHAr]
Vector 26 [unity_SHBb]
Vector 25 [unity_SHBg]
Vector 24 [unity_SHBr]
Vector 27 [unity_SHC]
"vs_2_0
def c31, 0.5, 1, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
mad oT0.xy, v2, c28, c28.zwzw
mul r0.x, c30.x, c30.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c29.xyxy, c29
dp4 r0.x, c8, v0
dp4 r0.y, c9, v0
dp4 r0.z, c10, v0
add r1.xyz, r0, -c14
add r2, -r0.x, c17
add r3, -r0.y, c18
add r0, -r0.z, c19
dp3 r1.w, r1, r1
rsq r1.w, r1.w
mul oT1.xyz, r1.w, r1
dp4 r1.y, c5, v0
mul r4.x, r1.y, c15.x
mul r4.w, r4.x, c31.x
dp4 r1.x, c4, v0
dp4 r1.w, c7, v0
mul r4.xz, r1.xyww, c31.x
mad oT6.xy, r4.z, c16.zwzw, r4.xwzw
mul r4, r3, r3
mad r4, r2, r2, r4
mad r4, r0, r0, r4
rsq r5.x, r4.x
rsq r5.y, r4.y
rsq r5.z, r4.z
rsq r5.w, r4.w
mov r6.y, c31.y
mad r4, r4, c20, r6.y
mul r6.xyz, v1.y, c12
mad r6.xyz, c11, v1.x, r6
mad r6.xyz, c13, v1.z, r6
nrm r7.xyz, r6
mul r3, r3, r7.y
mad r2, r2, r7.x, r3
mad r0, r0, r7.z, r2
mul r0, r5, r0
max r0, r0, c31.z
rcp r2.x, r4.x
rcp r2.y, r4.y
rcp r2.z, r4.z
rcp r2.w, r4.w
mul r0, r0, r2
mul r2.xyz, r0.y, c1
mad r2.xyz, c0, r0.x, r2
mad r0.xyz, c2, r0.z, r2
mad r0.xyz, c3, r0.w, r0
mul r0.w, r7.y, r7.y
mad r0.w, r7.x, r7.x, -r0.w
mul r2, r7.yzzx, r7.xyzz
dp4 r3.x, c24, r2
dp4 r3.y, c25, r2
dp4 r3.z, c26, r2
mad r2.xyz, c27, r0.w, r3
mov r7.w, c31.y
dp4 r3.x, c21, r7
dp4 r3.y, c22, r7
dp4 r3.z, c23, r7
mov oT4.xyz, r7
add r2.xyz, r2, r3
add oT5.xyz, r0, r2
dp4 r1.z, c6, v0
mov oPos, r1
mov oT6.zw, r1
mov oT2, c31.z
mov oT3, c31.z
mov oT4.w, c31.z
mov oT5.w, c31.z

"
}
SubProgram "d3d9 " {
// Stats: 51 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "_NORMALMAP" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 19 [_DetailAlbedoMap_ST]
Vector 18 [_MainTex_ST]
Float 20 [_UVSec]
Vector 10 [_WorldSpaceCameraPos]
Vector 13 [unity_SHAb]
Vector 12 [unity_SHAg]
Vector 11 [unity_SHAr]
Vector 16 [unity_SHBb]
Vector 15 [unity_SHBg]
Vector 14 [unity_SHBr]
Vector 17 [unity_SHC]
"vs_2_0
def c21, 1, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.z, c2, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c18, c18.zwzw
mul r0.x, c20.x, c20.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c19.xyxy, c19
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add r0.xyz, r0, -c10
dp3 r0.w, r0, r0
rsq r0.w, r0.w
mul oT1.xyz, r0.w, r0
dp3 r0.x, c4, v4
dp3 r0.y, c5, v4
dp3 r0.z, c6, v4
nrm r1.xyz, r0
mul r0.xyz, v1.y, c8
mad r0.xyz, c7, v1.x, r0
mad r0.xyz, c9, v1.z, r0
nrm r2.xyz, r0
mul r0.xyz, r1.yzxw, r2.zxyw
mad r0.xyz, r2.yzxw, r1.zxyw, -r0
mov oT2.xyz, r1
mul oT3.xyz, r0, v4.w
mul r0.x, r2.y, r2.y
mad r0.x, r2.x, r2.x, -r0.x
mul r1, r2.yzzx, r2.xyzz
dp4 r3.x, c14, r1
dp4 r3.y, c15, r1
dp4 r3.z, c16, r1
mad r0.xyz, c17, r0.x, r3
mov r2.w, c21.x
dp4 r1.x, c11, r2
dp4 r1.y, c12, r2
dp4 r1.z, c13, r2
mov oT4.xyz, r2
add oT5.xyz, r0, r1
mov oT2.w, c21.y
mov oT3.w, c21.y
mov oT4.w, c21.y
mov oT5.w, c21.y

"
}
SubProgram "d3d9 " {
// Stats: 57 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "_NORMALMAP" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 21 [_DetailAlbedoMap_ST]
Vector 20 [_MainTex_ST]
Vector 11 [_ProjectionParams]
Vector 12 [_ScreenParams]
Float 22 [_UVSec]
Vector 10 [_WorldSpaceCameraPos]
Vector 15 [unity_SHAb]
Vector 14 [unity_SHAg]
Vector 13 [unity_SHAr]
Vector 18 [unity_SHBb]
Vector 17 [unity_SHBg]
Vector 16 [unity_SHBr]
Vector 19 [unity_SHC]
"vs_2_0
def c23, 0.5, 1, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
mad oT0.xy, v2, c20, c20.zwzw
mul r0.x, c22.x, c22.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c21.xyxy, c21
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add r0.xyz, r0, -c10
dp3 r0.w, r0, r0
rsq r0.w, r0.w
mul oT1.xyz, r0.w, r0
dp3 r0.x, c4, v4
dp3 r0.y, c5, v4
dp3 r0.z, c6, v4
nrm r1.xyz, r0
mul r0.xyz, v1.y, c8
mad r0.xyz, c7, v1.x, r0
mad r0.xyz, c9, v1.z, r0
nrm r2.xyz, r0
mul r0.xyz, r1.yzxw, r2.zxyw
mad r0.xyz, r2.yzxw, r1.zxyw, -r0
mov oT2.xyz, r1
mul oT3.xyz, r0, v4.w
dp4 r0.y, c1, v0
mul r1.x, r0.y, c11.x
mul r1.w, r1.x, c23.x
dp4 r0.x, c0, v0
dp4 r0.w, c3, v0
mul r1.xz, r0.xyww, c23.x
mad oT6.xy, r1.z, c12.zwzw, r1.xwzw
mul r1.x, r2.y, r2.y
mad r1.x, r2.x, r2.x, -r1.x
mul r3, r2.yzzx, r2.xyzz
dp4 r4.x, c16, r3
dp4 r4.y, c17, r3
dp4 r4.z, c18, r3
mad r1.xyz, c19, r1.x, r4
mov r2.w, c23.y
dp4 r3.x, c13, r2
dp4 r3.y, c14, r2
dp4 r3.z, c15, r2
mov oT4.xyz, r2
add oT5.xyz, r1, r3
dp4 r0.z, c2, v0
mov oPos, r0
mov oT6.zw, r0
mov oT2.w, c23.z
mov oT3.w, c23.z
mov oT4.w, c23.z
mov oT5.w, c23.z

"
}
SubProgram "d3d9 " {
// Stats: 78 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "VERTEXLIGHT_ON" "_NORMALMAP" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 8 [_Object2World] 3
Matrix 11 [_World2Object] 3
Matrix 4 [glstate_matrix_mvp]
Vector 27 [_DetailAlbedoMap_ST]
Vector 26 [_MainTex_ST]
Float 28 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 18 [unity_4LightAtten0]
Vector 15 [unity_4LightPosX0]
Vector 16 [unity_4LightPosY0]
Vector 17 [unity_4LightPosZ0]
Vector 0 [unity_LightColor0]
Vector 1 [unity_LightColor1]
Vector 2 [unity_LightColor2]
Vector 3 [unity_LightColor3]
Vector 21 [unity_SHAb]
Vector 20 [unity_SHAg]
Vector 19 [unity_SHAr]
Vector 24 [unity_SHBb]
Vector 23 [unity_SHBg]
Vector 22 [unity_SHBr]
Vector 25 [unity_SHC]
"vs_2_0
def c29, 1, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dp4 oPos.x, c4, v0
dp4 oPos.y, c5, v0
dp4 oPos.z, c6, v0
dp4 oPos.w, c7, v0
mad oT0.xy, v2, c26, c26.zwzw
mul r0.x, c28.x, c28.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c27.xyxy, c27
dp4 r0.x, c8, v0
dp4 r0.y, c9, v0
dp4 r0.z, c10, v0
add r1.xyz, r0, -c14
add r2, -r0.x, c15
add r3, -r0.y, c16
add r0, -r0.z, c17
dp3 r1.w, r1, r1
rsq r1.w, r1.w
mul oT1.xyz, r1.w, r1
dp3 r1.x, c8, v4
dp3 r1.y, c9, v4
dp3 r1.z, c10, v4
nrm r4.xyz, r1
mul r1.xyz, v1.y, c12
mad r1.xyz, c11, v1.x, r1
mad r1.xyz, c13, v1.z, r1
nrm r5.xyz, r1
mul r1.xyz, r4.yzxw, r5.zxyw
mad r1.xyz, r5.yzxw, r4.zxyw, -r1
mov oT2.xyz, r4
mul oT3.xyz, r1, v4.w
mul r1.x, r5.y, r5.y
mad r1.x, r5.x, r5.x, -r1.x
mul r4, r5.yzzx, r5.xyzz
dp4 r6.x, c22, r4
dp4 r6.y, c23, r4
dp4 r6.z, c24, r4
mad r1.xyz, c25, r1.x, r6
mov r5.w, c29.x
dp4 r4.x, c19, r5
dp4 r4.y, c20, r5
dp4 r4.z, c21, r5
add r1.xyz, r1, r4
mul r4, r3, r5.y
mul r3, r3, r3
mad r3, r2, r2, r3
mad r2, r2, r5.x, r4
mad r2, r0, r5.z, r2
mov oT4.xyz, r5
mad r0, r0, r0, r3
rsq r3.x, r0.x
rsq r3.y, r0.y
rsq r3.z, r0.z
rsq r3.w, r0.w
mov r4.x, c29.x
mad r0, r0, c18, r4.x
mul r2, r2, r3
max r2, r2, c29.y
rcp r3.x, r0.x
rcp r3.y, r0.y
rcp r3.z, r0.z
rcp r3.w, r0.w
mul r0, r2, r3
mul r2.xyz, r0.y, c1
mad r2.xyz, c0, r0.x, r2
mad r0.xyz, c2, r0.z, r2
mad r0.xyz, c3, r0.w, r0
add oT5.xyz, r0, r1
mov oT2.w, c29.y
mov oT3.w, c29.y
mov oT4.w, c29.y
mov oT5.w, c29.y

"
}
SubProgram "d3d9 " {
// Stats: 84 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "VERTEXLIGHT_ON" "_NORMALMAP" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 8 [_Object2World] 3
Matrix 11 [_World2Object] 3
Matrix 4 [glstate_matrix_mvp]
Vector 29 [_DetailAlbedoMap_ST]
Vector 28 [_MainTex_ST]
Vector 15 [_ProjectionParams]
Vector 16 [_ScreenParams]
Float 30 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 20 [unity_4LightAtten0]
Vector 17 [unity_4LightPosX0]
Vector 18 [unity_4LightPosY0]
Vector 19 [unity_4LightPosZ0]
Vector 0 [unity_LightColor0]
Vector 1 [unity_LightColor1]
Vector 2 [unity_LightColor2]
Vector 3 [unity_LightColor3]
Vector 23 [unity_SHAb]
Vector 22 [unity_SHAg]
Vector 21 [unity_SHAr]
Vector 26 [unity_SHBb]
Vector 25 [unity_SHBg]
Vector 24 [unity_SHBr]
Vector 27 [unity_SHC]
"vs_2_0
def c31, 0.5, 1, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
mad oT0.xy, v2, c28, c28.zwzw
mul r0.x, c30.x, c30.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c29.xyxy, c29
dp4 r0.x, c8, v0
dp4 r0.y, c9, v0
dp4 r0.z, c10, v0
add r1.xyz, r0, -c14
add r2, -r0.x, c17
add r3, -r0.y, c18
add r0, -r0.z, c19
dp3 r1.w, r1, r1
rsq r1.w, r1.w
mul oT1.xyz, r1.w, r1
dp3 r1.x, c8, v4
dp3 r1.y, c9, v4
dp3 r1.z, c10, v4
nrm r4.xyz, r1
mul r1.xyz, v1.y, c12
mad r1.xyz, c11, v1.x, r1
mad r1.xyz, c13, v1.z, r1
nrm r5.xyz, r1
mul r1.xyz, r4.yzxw, r5.zxyw
mad r1.xyz, r5.yzxw, r4.zxyw, -r1
mov oT2.xyz, r4
mul oT3.xyz, r1, v4.w
dp4 r1.y, c5, v0
mul r4.x, r1.y, c15.x
mul r4.w, r4.x, c31.x
dp4 r1.x, c4, v0
dp4 r1.w, c7, v0
mul r4.xz, r1.xyww, c31.x
mad oT6.xy, r4.z, c16.zwzw, r4.xwzw
mul r4.x, r5.y, r5.y
mad r4.x, r5.x, r5.x, -r4.x
mul r6, r5.yzzx, r5.xyzz
dp4 r7.x, c24, r6
dp4 r7.y, c25, r6
dp4 r7.z, c26, r6
mad r4.xyz, c27, r4.x, r7
mov r5.w, c31.y
dp4 r6.x, c21, r5
dp4 r6.y, c22, r5
dp4 r6.z, c23, r5
add r4.xyz, r4, r6
mul r6, r3, r5.y
mul r3, r3, r3
mad r3, r2, r2, r3
mad r2, r2, r5.x, r6
mad r2, r0, r5.z, r2
mov oT4.xyz, r5
mad r0, r0, r0, r3
rsq r3.x, r0.x
rsq r3.y, r0.y
rsq r3.z, r0.z
rsq r3.w, r0.w
mov r5.y, c31.y
mad r0, r0, c20, r5.y
mul r2, r2, r3
max r2, r2, c31.z
rcp r3.x, r0.x
rcp r3.y, r0.y
rcp r3.z, r0.z
rcp r3.w, r0.w
mul r0, r2, r3
mul r2.xyz, r0.y, c1
mad r2.xyz, c0, r0.x, r2
mad r0.xyz, c2, r0.z, r2
mad r0.xyz, c3, r0.w, r0
add oT5.xyz, r0, r4
dp4 r1.z, c6, v0
mov oPos, r1
mov oT6.zw, r1
mov oT2.w, c31.z
mov oT3.w, c31.z
mov oT4.w, c31.z
mov oT5.w, c31.z

"
}
}
Program "fp" {
SubProgram "d3d9 " {
// Stats: 42 math, 4 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
Vector 4 [_Color]
Float 5 [_Glossiness]
Vector 2 [_LightColor0]
Vector 3 [_SpecColor]
Vector 0 [_WorldSpaceLightPos0]
Vector 1 [unity_SpecCube0_HDR]
SetTexture 0 [unity_SpecCube0] CUBE 0
SetTexture 1 [unity_NHxRoughness] 2D 1
SetTexture 2 [_MainTex] 2D 2
SetTexture 3 [_OcclusionMap] 2D 3
"ps_2_0
def c6, 1, -7, 7, 16
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t4.xyz
dcl_pp t5.xyz
dcl_cube s0
dcl_2d s1
dcl_2d s2
dcl_2d s3
nrm_pp r0.xyz, t4
dp3_pp r0.w, -t1, r0
add_pp r1.w, r0.w, r0.w
mov_sat_pp r0.w, r0.w
add_pp r1.y, -r0.w, c6.x
mad_pp r2.xyz, r0, -r1.w, -t1
dp3_pp r1.x, r2, c0
mul_pp r1.xy, r1, r1
mul_pp r1.xy, r1, r1
mov r2.xyz, c6
add_pp r1.z, r2.x, -c5.x
mov_pp r3.x, r1.x
mov_pp r3.y, r1.z
dp3 r0.w, t1, r0
add r0.w, r0.w, r0.w
mad_pp r4.xyz, r0, -r0.w, t1
mad_pp r4.w, c5.x, r2.y, r2.z
texld r3, r3, s1
texld r5, t0, s2
texld_pp r6, t0, s3
texldb_pp r4, r4, s0
mul_pp r0.w, r3.x, c6.w
mul_pp r2.yzw, r5.wzyx, c4.wzyx
add_pp r1.x, r2.x, -c3.x
mul_pp r2.xyz, r1.x, r2.wzyx
add_pp r2.w, -r1.x, c5.x
add_sat_pp r2.w, r2.w, c6.x
lrp_pp r3.xyz, r1.y, r2.w, c3
mad_pp r1.xyz, r0.w, c3, r2
mul_pp r1.xyz, r1, c2
mul_pp r5.xyz, r6.y, t5
mul_pp r2.xyz, r2, r5
dp3_sat_pp r1.w, r0, c0
mad_pp r0.xyz, r1, r1.w, r2
pow_pp r0.w, r4.w, c1.y
mul_pp r0.w, r0.w, c1.x
mul_pp r1.xyz, r4, r0.w
mul_pp r1.xyz, r6.y, r1
mad_pp r0.xyz, r1, r3, r0
mov_pp r0.w, c6.x
mov_pp oC0, r0

"
}
SubProgram "d3d9 " {
// Stats: 43 math, 5 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
Vector 4 [_Color]
Float 5 [_Glossiness]
Vector 2 [_LightColor0]
Vector 3 [_SpecColor]
Vector 0 [_WorldSpaceLightPos0]
Vector 1 [unity_SpecCube0_HDR]
SetTexture 0 [unity_SpecCube0] CUBE 0
SetTexture 1 [unity_NHxRoughness] 2D 1
SetTexture 2 [_MainTex] 2D 2
SetTexture 3 [_OcclusionMap] 2D 3
SetTexture 4 [_ShadowMapTexture] 2D 4
"ps_2_0
def c6, 1, -7, 7, 16
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t4.xyz
dcl_pp t5.xyz
dcl_pp t6
dcl_cube s0
dcl_2d s1
dcl_2d s2
dcl_2d s3
dcl_2d s4
nrm_pp r0.xyz, t4
dp3_pp r0.w, -t1, r0
add_pp r1.w, r0.w, r0.w
mov_sat_pp r0.w, r0.w
add_pp r1.y, -r0.w, c6.x
mad_pp r2.xyz, r0, -r1.w, -t1
dp3_pp r1.x, r2, c0
mul_pp r1.xy, r1, r1
mul_pp r1.xy, r1, r1
mov r2.xyz, c6
add_pp r1.z, r2.x, -c5.x
mov_pp r3.x, r1.x
mov_pp r3.y, r1.z
dp3 r0.w, t1, r0
add r0.w, r0.w, r0.w
mad_pp r4.xyz, r0, -r0.w, t1
mad_pp r4.w, c5.x, r2.y, r2.z
texldp_pp r5, t6, s4
texld r3, r3, s1
texld r6, t0, s2
texld_pp r7, t0, s3
texldb_pp r4, r4, s0
mul_pp r2.yzw, r5.x, c2.wzyx
mul_pp r0.w, r3.x, c6.w
mul_pp r3.xyz, r6, c4
add_pp r3.w, r2.x, -c3.x
mul_pp r3.xyz, r3.w, r3
add_pp r3.w, -r3.w, c5.x
add_sat_pp r3.w, r3.w, c6.x
lrp_pp r5.xyz, r1.y, r3.w, c3
mad_pp r1.xyz, r0.w, c3, r3
mul_pp r1.xyz, r2.wzyx, r1
mul_pp r2.xyz, r7.y, t5
mul_pp r2.xyz, r3, r2
dp3_sat_pp r1.w, r0, c0
mad_pp r0.xyz, r1, r1.w, r2
pow_pp r0.w, r4.w, c1.y
mul_pp r0.w, r0.w, c1.x
mul_pp r1.xyz, r4, r0.w
mul_pp r1.xyz, r7.y, r1
mad_pp r0.xyz, r1, r5, r0
mov_pp r0.w, c6.x
mov_pp oC0, r0

"
}
SubProgram "d3d9 " {
// Stats: 50 math, 5 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "_NORMALMAP" }
Vector 4 [_Color]
Float 5 [_Glossiness]
Vector 2 [_LightColor0]
Vector 3 [_SpecColor]
Vector 0 [_WorldSpaceLightPos0]
Vector 1 [unity_SpecCube0_HDR]
SetTexture 0 [unity_SpecCube0] CUBE 0
SetTexture 1 [unity_NHxRoughness] 2D 1
SetTexture 2 [_MainTex] 2D 2
SetTexture 3 [_BumpMap] 2D 3
SetTexture 4 [_OcclusionMap] 2D 4
"ps_2_0
def c6, 2, -1, 0, 1
def c7, -7, 7, 16, 0
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t2.xyz
dcl_pp t3.xyz
dcl_pp t4.xyz
dcl_pp t5.xyz
dcl_cube s0
dcl_2d s1
dcl_2d s2
dcl_2d s3
dcl_2d s4
texld_pp r0, t0, s3
mad_pp r1.x, r0.w, c6.x, c6.y
mad_pp r1.y, r0.y, c6.x, c6.y
mul_pp r0.xyz, r1.y, t3
mad_pp r0.xyz, r1.x, t2, r0
dp2add_sat_pp r0.w, r1, r1, c6.z
add_pp r0.w, -r0.w, c6.w
rsq_pp r0.w, r0.w
rcp_pp r0.w, r0.w
mad_pp r0.xyz, r0.w, t4, r0
dp3_pp r0.w, -t1, r0
add_pp r1.x, r0.w, r0.w
mov_sat_pp r0.w, r0.w
add_pp r2.y, -r0.w, c6.w
mad_pp r1.xyz, r0, -r1.x, -t1
dp3_pp r2.x, r1, c0
mul_pp r1.xy, r2, r2
mul_pp r1.xy, r1, r1
mov r0.w, c6.w
add_pp r1.z, r0.w, -c5.x
mov_pp r2.x, r1.x
mov_pp r2.y, r1.z
dp3 r1.x, t1, r0
add r1.x, r1.x, r1.x
mad_pp r3.xyz, r0, -r1.x, t1
mov r1.x, c5.x
mad_pp r3.w, r1.x, c7.x, c7.y
texld r2, r2, s1
texld r4, t0, s2
texld_pp r5, t0, s4
texldb_pp r3, r3, s0
mul_pp r4.w, r2.x, c7.z
mul_pp r2.xyz, r4, c4
add_pp r0.w, r0.w, -c3.x
mul_pp r2.xyz, r0.w, r2
add_pp r0.w, -r0.w, c5.x
add_sat_pp r0.w, r0.w, c6.w
lrp_pp r4.xyz, r1.y, r0.w, c3
mad_pp r1.xyz, r4.w, c3, r2
mul_pp r1.xyz, r1, c2
dp3_sat_pp r1.w, r0, c0
mul_pp r0.xyz, r5.y, t5
mul_pp r0.xyz, r2, r0
mad_pp r0.xyz, r1, r1.w, r0
pow_pp r0.w, r3.w, c1.y
mul_pp r0.w, r0.w, c1.x
mul_pp r1.xyz, r3, r0.w
mul_pp r1.xyz, r5.y, r1
mad_pp r0.xyz, r1, r4, r0
mov_pp r0.w, c6.w
mov_pp oC0, r0

"
}
SubProgram "d3d9 " {
// Stats: 51 math, 6 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "_NORMALMAP" }
Vector 4 [_Color]
Float 5 [_Glossiness]
Vector 2 [_LightColor0]
Vector 3 [_SpecColor]
Vector 0 [_WorldSpaceLightPos0]
Vector 1 [unity_SpecCube0_HDR]
SetTexture 0 [unity_SpecCube0] CUBE 0
SetTexture 1 [unity_NHxRoughness] 2D 1
SetTexture 2 [_MainTex] 2D 2
SetTexture 3 [_BumpMap] 2D 3
SetTexture 4 [_OcclusionMap] 2D 4
SetTexture 5 [_ShadowMapTexture] 2D 5
"ps_2_0
def c6, 2, -1, 0, 1
def c7, -7, 7, 16, 0
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t2.xyz
dcl_pp t3.xyz
dcl_pp t4.xyz
dcl_pp t5.xyz
dcl_pp t6
dcl_cube s0
dcl_2d s1
dcl_2d s2
dcl_2d s3
dcl_2d s4
dcl_2d s5
texld_pp r0, t0, s3
mad_pp r1.x, r0.w, c6.x, c6.y
mad_pp r1.y, r0.y, c6.x, c6.y
mul_pp r0.xyz, r1.y, t3
mad_pp r0.xyz, r1.x, t2, r0
dp2add_sat_pp r0.w, r1, r1, c6.z
add_pp r0.w, -r0.w, c6.w
rsq_pp r0.w, r0.w
rcp_pp r0.w, r0.w
mad_pp r0.xyz, r0.w, t4, r0
dp3_pp r0.w, -t1, r0
add_pp r1.x, r0.w, r0.w
mov_sat_pp r0.w, r0.w
add_pp r2.y, -r0.w, c6.w
mad_pp r1.xyz, r0, -r1.x, -t1
dp3_pp r2.x, r1, c0
mul_pp r1.xy, r2, r2
mul_pp r1.xy, r1, r1
mov r0.w, c6.w
add_pp r1.z, r0.w, -c5.x
mov_pp r2.x, r1.x
mov_pp r2.y, r1.z
dp3 r1.x, t1, r0
add r1.x, r1.x, r1.x
mad_pp r3.xyz, r0, -r1.x, t1
mov r1.x, c5.x
mad_pp r3.w, r1.x, c7.x, c7.y
texld r2, r2, s1
texld r4, t0, s2
texldp_pp r5, t6, s5
texld_pp r6, t0, s4
texldb_pp r3, r3, s0
mul_pp r4.w, r2.x, c7.z
mul_pp r2.xyz, r4, c4
add_pp r0.w, r0.w, -c3.x
mul_pp r2.xyz, r0.w, r2
add_pp r0.w, -r0.w, c5.x
add_sat_pp r0.w, r0.w, c6.w
lrp_pp r4.xyz, r1.y, r0.w, c3
mad_pp r1.xyz, r4.w, c3, r2
mul_pp r5.xyz, r5.x, c2
mul_pp r1.xyz, r1, r5
dp3_sat_pp r1.w, r0, c0
mul_pp r0.xyz, r6.y, t5
mul_pp r0.xyz, r2, r0
mad_pp r0.xyz, r1, r1.w, r0
pow_pp r0.w, r3.w, c1.y
mul_pp r0.w, r0.w, c1.x
mul_pp r1.xyz, r3, r0.w
mul_pp r1.xyz, r6.y, r1
mad_pp r0.xyz, r1, r4, r0
mov_pp r0.w, c6.w
mov_pp oC0, r0

"
}
}
 }


 // Stats for Vertex shader:
 //        d3d9 : 45 avg math (39..51)
 // Stats for Fragment shader:
 //        d3d9 : 32 avg math (24..41), 4 avg texture (2..6)
 Pass {
  Name "FORWARD_DELTA"
  Tags { "LIGHTMODE"="ForwardAdd" "SHADOWSUPPORT"="true" "RenderType"="Opaque" "PerformanceChecks"="False" }
  ZWrite Off
  Fog {
   Color (0,0,0,0)
  }
  Blend [_SrcBlend] One
  GpuProgramID 400806
Program "vp" {
SubProgram "d3d9 " {
// Stats: 46 math
Keywords { "POINT" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 3
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 17 [_DetailAlbedoMap_ST]
Vector 16 [_MainTex_ST]
Float 18 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 15 [_WorldSpaceLightPos0]
"vs_2_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.z, c2, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c16, c16.zwzw
mul r0.x, c18.x, c18.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c17.xyxy, c17
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add r1.xyz, r0, -c14
dp3 r1.w, r1, r1
rsq r1.w, r1.w
mul oT1.xyz, r1.w, r1
mul r1.xyz, v1.y, c9
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov oT4.xyz, r2
mov oT2.xyz, r3
mul oT3.xyz, r1, v4.w
dp4 r0.w, c7, v0
dp4 oT5.x, c11, r0
dp4 oT5.y, c12, r0
dp4 oT5.z, c13, r0
mad r0.xyz, r0, -c15.w, c15
nrm r1.xyz, r0
mov oT2.w, r1.x
mov oT3.w, r1.y
mov oT4.w, r1.z

"
}
SubProgram "d3d9 " {
// Stats: 39 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 13 [_DetailAlbedoMap_ST]
Vector 12 [_MainTex_ST]
Float 14 [_UVSec]
Vector 10 [_WorldSpaceCameraPos]
Vector 11 [_WorldSpaceLightPos0]
"vs_2_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.z, c2, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c12, c12.zwzw
mul r0.x, c14.x, c14.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c13.xyxy, c13
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add r1.xyz, r0, -c10
mad r0.xyz, r0, -c11.w, c11
dp3 r0.w, r1, r1
rsq r0.w, r0.w
mul oT1.xyz, r0.w, r1
mul r1.xyz, v1.y, c8
mad r1.xyz, c7, v1.x, r1
mad r1.xyz, c9, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov oT4.xyz, r2
mov oT2.xyz, r3
mul oT3.xyz, r1, v4.w
mov oT2.w, r0.x
mov oT3.w, r0.y
mov oT4.w, r0.z

"
}
SubProgram "d3d9 " {
// Stats: 47 math
Keywords { "SPOT" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 8 [_LightMatrix0]
Matrix 4 [_Object2World]
Matrix 12 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 18 [_DetailAlbedoMap_ST]
Vector 17 [_MainTex_ST]
Float 19 [_UVSec]
Vector 15 [_WorldSpaceCameraPos]
Vector 16 [_WorldSpaceLightPos0]
"vs_2_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.z, c2, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c17, c17.zwzw
mul r0.x, c19.x, c19.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c18.xyxy, c18
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add r1.xyz, r0, -c15
dp3 r1.w, r1, r1
rsq r1.w, r1.w
mul oT1.xyz, r1.w, r1
mul r1.xyz, v1.y, c13
mad r1.xyz, c12, v1.x, r1
mad r1.xyz, c14, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov oT4.xyz, r2
mov oT2.xyz, r3
mul oT3.xyz, r1, v4.w
dp4 r0.w, c7, v0
dp4 oT5.x, c8, r0
dp4 oT5.y, c9, r0
dp4 oT5.z, c10, r0
dp4 oT5.w, c11, r0
mad r0.xyz, r0, -c16.w, c16
nrm r1.xyz, r0
mov oT2.w, r1.x
mov oT3.w, r1.y
mov oT4.w, r1.z

"
}
SubProgram "d3d9 " {
// Stats: 46 math
Keywords { "POINT_COOKIE" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 3
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 17 [_DetailAlbedoMap_ST]
Vector 16 [_MainTex_ST]
Float 18 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 15 [_WorldSpaceLightPos0]
"vs_2_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.z, c2, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c16, c16.zwzw
mul r0.x, c18.x, c18.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c17.xyxy, c17
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add r1.xyz, r0, -c14
dp3 r1.w, r1, r1
rsq r1.w, r1.w
mul oT1.xyz, r1.w, r1
mul r1.xyz, v1.y, c9
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov oT4.xyz, r2
mov oT2.xyz, r3
mul oT3.xyz, r1, v4.w
dp4 r0.w, c7, v0
dp4 oT5.x, c11, r0
dp4 oT5.y, c12, r0
dp4 oT5.z, c13, r0
mad r0.xyz, r0, -c15.w, c15
nrm r1.xyz, r0
mov oT2.w, r1.x
mov oT3.w, r1.y
mov oT4.w, r1.z

"
}
SubProgram "d3d9 " {
// Stats: 42 math
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 2
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 16 [_DetailAlbedoMap_ST]
Vector 15 [_MainTex_ST]
Float 17 [_UVSec]
Vector 13 [_WorldSpaceCameraPos]
Vector 14 [_WorldSpaceLightPos0]
"vs_2_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.z, c2, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c15, c15.zwzw
mul r0.x, c17.x, c17.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c16.xyxy, c16
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add r1.xyz, r0, -c13
dp3 r1.w, r1, r1
rsq r1.w, r1.w
mul oT1.xyz, r1.w, r1
mul r1.xyz, v1.y, c9
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov oT4.xyz, r2
mov oT2.xyz, r3
mul oT3.xyz, r1, v4.w
dp4 r0.w, c7, v0
dp4 oT5.x, c11, r0
dp4 oT5.y, c12, r0
mad r0.xyz, r0, -c14.w, c14
mov oT2.w, r0.x
mov oT3.w, r0.y
mov oT4.w, r0.z

"
}
SubProgram "d3d9 " {
// Stats: 51 math
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_NATIVE" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 12 [_LightMatrix0]
Matrix 8 [_Object2World]
Matrix 16 [_World2Object] 3
Matrix 4 [glstate_matrix_mvp]
Matrix 0 [unity_World2Shadow0]
Vector 22 [_DetailAlbedoMap_ST]
Vector 21 [_MainTex_ST]
Float 23 [_UVSec]
Vector 19 [_WorldSpaceCameraPos]
Vector 20 [_WorldSpaceLightPos0]
"vs_2_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dp4 oPos.x, c4, v0
dp4 oPos.y, c5, v0
dp4 oPos.z, c6, v0
dp4 oPos.w, c7, v0
mad oT0.xy, v2, c21, c21.zwzw
mul r0.x, c23.x, c23.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c22.xyxy, c22
dp4 r0.x, c8, v0
dp4 r0.y, c9, v0
dp4 r0.z, c10, v0
add r1.xyz, r0, -c19
dp3 r1.w, r1, r1
rsq r1.w, r1.w
mul oT1.xyz, r1.w, r1
mul r1.xyz, v1.y, c17
mad r1.xyz, c16, v1.x, r1
mad r1.xyz, c18, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c8, v4
dp3 r1.y, c9, v4
dp3 r1.z, c10, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov oT4.xyz, r2
mov oT2.xyz, r3
mul oT3.xyz, r1, v4.w
dp4 r0.w, c11, v0
dp4 oT5.x, c12, r0
dp4 oT5.y, c13, r0
dp4 oT5.z, c14, r0
dp4 oT5.w, c15, r0
dp4 oT6.x, c0, r0
dp4 oT6.y, c1, r0
dp4 oT6.z, c2, r0
dp4 oT6.w, c3, r0
mad r0.xyz, r0, -c20.w, c20
nrm r1.xyz, r0
mov oT2.w, r1.x
mov oT3.w, r1.y
mov oT4.w, r1.z

"
}
SubProgram "d3d9 " {
// Stats: 45 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 15 [_DetailAlbedoMap_ST]
Vector 14 [_MainTex_ST]
Vector 11 [_ProjectionParams]
Vector 12 [_ScreenParams]
Float 16 [_UVSec]
Vector 10 [_WorldSpaceCameraPos]
Vector 13 [_WorldSpaceLightPos0]
"vs_2_0
def c17, 0.5, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
mad oT0.xy, v2, c14, c14.zwzw
mul r0.x, c16.x, c16.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c15.xyxy, c15
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add r1.xyz, r0, -c10
mad r0.xyz, r0, -c13.w, c13
dp3 r0.w, r1, r1
rsq r0.w, r0.w
mul oT1.xyz, r0.w, r1
mul r1.xyz, v1.y, c8
mad r1.xyz, c7, v1.x, r1
mad r1.xyz, c9, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov oT4.xyz, r2
mov oT2.xyz, r3
mul oT3.xyz, r1, v4.w
dp4 r1.y, c1, v0
mul r0.w, r1.y, c11.x
mul r2.w, r0.w, c17.x
dp4 r1.x, c0, v0
dp4 r1.w, c3, v0
mul r2.xz, r1.xyww, c17.x
mad oT5.xy, r2.z, c12.zwzw, r2.xwzw
dp4 r1.z, c2, v0
mov oPos, r1
mov oT5.zw, r1
mov oT2.w, r0.x
mov oT3.w, r0.y
mov oT4.w, r0.z

"
}
SubProgram "d3d9 " {
// Stats: 48 math
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 2
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 18 [_DetailAlbedoMap_ST]
Vector 17 [_MainTex_ST]
Vector 14 [_ProjectionParams]
Vector 15 [_ScreenParams]
Float 19 [_UVSec]
Vector 13 [_WorldSpaceCameraPos]
Vector 16 [_WorldSpaceLightPos0]
"vs_2_0
def c20, 0.5, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
mad oT0.xy, v2, c17, c17.zwzw
mul r0.x, c19.x, c19.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c18.xyxy, c18
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add r1.xyz, r0, -c13
dp3 r1.w, r1, r1
rsq r1.w, r1.w
mul oT1.xyz, r1.w, r1
mul r1.xyz, v1.y, c9
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov oT4.xyz, r2
mov oT2.xyz, r3
mul oT3.xyz, r1, v4.w
dp4 r0.w, c7, v0
dp4 oT5.x, c11, r0
dp4 oT5.y, c12, r0
mad r0.xyz, r0, -c16.w, c16
dp4 r1.y, c1, v0
mul r0.w, r1.y, c14.x
mul r2.w, r0.w, c20.x
dp4 r1.x, c0, v0
dp4 r1.w, c3, v0
mul r2.xz, r1.xyww, c20.x
mad oT6.xy, r2.z, c15.zwzw, r2.xwzw
dp4 r1.z, c2, v0
mov oPos, r1
mov oT6.zw, r1
mov oT2.w, r0.x
mov oT3.w, r0.y
mov oT4.w, r0.z

"
}
SubProgram "d3d9 " {
// Stats: 47 math
Keywords { "POINT" "SHADOWS_CUBE" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 3
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 18 [_DetailAlbedoMap_ST]
Vector 16 [_LightPositionRange]
Vector 17 [_MainTex_ST]
Float 19 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 15 [_WorldSpaceLightPos0]
"vs_2_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.z, c2, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c17, c17.zwzw
mul r0.x, c19.x, c19.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c18.xyxy, c18
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add r1.xyz, r0, -c14
dp3 r1.w, r1, r1
rsq r1.w, r1.w
mul oT1.xyz, r1.w, r1
mul r1.xyz, v1.y, c9
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov oT4.xyz, r2
mov oT2.xyz, r3
mul oT3.xyz, r1, v4.w
dp4 r0.w, c7, v0
dp4 oT5.x, c11, r0
dp4 oT5.y, c12, r0
dp4 oT5.z, c13, r0
add oT6.xyz, r0, -c16
mad r0.xyz, r0, -c15.w, c15
nrm r1.xyz, r0
mov oT2.w, r1.x
mov oT3.w, r1.y
mov oT4.w, r1.z

"
}
SubProgram "d3d9 " {
// Stats: 47 math
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 3
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 18 [_DetailAlbedoMap_ST]
Vector 16 [_LightPositionRange]
Vector 17 [_MainTex_ST]
Float 19 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 15 [_WorldSpaceLightPos0]
"vs_2_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.z, c2, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c17, c17.zwzw
mul r0.x, c19.x, c19.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c18.xyxy, c18
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add r1.xyz, r0, -c14
dp3 r1.w, r1, r1
rsq r1.w, r1.w
mul oT1.xyz, r1.w, r1
mul r1.xyz, v1.y, c9
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov oT4.xyz, r2
mov oT2.xyz, r3
mul oT3.xyz, r1, v4.w
dp4 r0.w, c7, v0
dp4 oT5.x, c11, r0
dp4 oT5.y, c12, r0
dp4 oT5.z, c13, r0
add oT6.xyz, r0, -c16
mad r0.xyz, r0, -c15.w, c15
nrm r1.xyz, r0
mov oT2.w, r1.x
mov oT3.w, r1.y
mov oT4.w, r1.z

"
}
SubProgram "d3d9 " {
// Stats: 46 math
Keywords { "POINT" "SHADOWS_OFF" "_NORMALMAP" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 3
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 17 [_DetailAlbedoMap_ST]
Vector 16 [_MainTex_ST]
Float 18 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 15 [_WorldSpaceLightPos0]
"vs_2_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.z, c2, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c16, c16.zwzw
mul r0.x, c18.x, c18.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c17.xyxy, c17
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add r1.xyz, r0, -c14
dp3 r1.w, r1, r1
rsq r1.w, r1.w
mul oT1.xyz, r1.w, r1
mul r1.xyz, v1.y, c9
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov oT4.xyz, r2
mov oT2.xyz, r3
mul oT3.xyz, r1, v4.w
dp4 r0.w, c7, v0
dp4 oT5.x, c11, r0
dp4 oT5.y, c12, r0
dp4 oT5.z, c13, r0
mad r0.xyz, r0, -c15.w, c15
nrm r1.xyz, r0
mov oT2.w, r1.x
mov oT3.w, r1.y
mov oT4.w, r1.z

"
}
SubProgram "d3d9 " {
// Stats: 39 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "_NORMALMAP" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 13 [_DetailAlbedoMap_ST]
Vector 12 [_MainTex_ST]
Float 14 [_UVSec]
Vector 10 [_WorldSpaceCameraPos]
Vector 11 [_WorldSpaceLightPos0]
"vs_2_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.z, c2, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c12, c12.zwzw
mul r0.x, c14.x, c14.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c13.xyxy, c13
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add r1.xyz, r0, -c10
mad r0.xyz, r0, -c11.w, c11
dp3 r0.w, r1, r1
rsq r0.w, r0.w
mul oT1.xyz, r0.w, r1
mul r1.xyz, v1.y, c8
mad r1.xyz, c7, v1.x, r1
mad r1.xyz, c9, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov oT4.xyz, r2
mov oT2.xyz, r3
mul oT3.xyz, r1, v4.w
mov oT2.w, r0.x
mov oT3.w, r0.y
mov oT4.w, r0.z

"
}
SubProgram "d3d9 " {
// Stats: 47 math
Keywords { "SPOT" "SHADOWS_OFF" "_NORMALMAP" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 8 [_LightMatrix0]
Matrix 4 [_Object2World]
Matrix 12 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 18 [_DetailAlbedoMap_ST]
Vector 17 [_MainTex_ST]
Float 19 [_UVSec]
Vector 15 [_WorldSpaceCameraPos]
Vector 16 [_WorldSpaceLightPos0]
"vs_2_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.z, c2, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c17, c17.zwzw
mul r0.x, c19.x, c19.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c18.xyxy, c18
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add r1.xyz, r0, -c15
dp3 r1.w, r1, r1
rsq r1.w, r1.w
mul oT1.xyz, r1.w, r1
mul r1.xyz, v1.y, c13
mad r1.xyz, c12, v1.x, r1
mad r1.xyz, c14, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov oT4.xyz, r2
mov oT2.xyz, r3
mul oT3.xyz, r1, v4.w
dp4 r0.w, c7, v0
dp4 oT5.x, c8, r0
dp4 oT5.y, c9, r0
dp4 oT5.z, c10, r0
dp4 oT5.w, c11, r0
mad r0.xyz, r0, -c16.w, c16
nrm r1.xyz, r0
mov oT2.w, r1.x
mov oT3.w, r1.y
mov oT4.w, r1.z

"
}
SubProgram "d3d9 " {
// Stats: 46 math
Keywords { "POINT_COOKIE" "SHADOWS_OFF" "_NORMALMAP" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 3
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 17 [_DetailAlbedoMap_ST]
Vector 16 [_MainTex_ST]
Float 18 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 15 [_WorldSpaceLightPos0]
"vs_2_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.z, c2, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c16, c16.zwzw
mul r0.x, c18.x, c18.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c17.xyxy, c17
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add r1.xyz, r0, -c14
dp3 r1.w, r1, r1
rsq r1.w, r1.w
mul oT1.xyz, r1.w, r1
mul r1.xyz, v1.y, c9
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov oT4.xyz, r2
mov oT2.xyz, r3
mul oT3.xyz, r1, v4.w
dp4 r0.w, c7, v0
dp4 oT5.x, c11, r0
dp4 oT5.y, c12, r0
dp4 oT5.z, c13, r0
mad r0.xyz, r0, -c15.w, c15
nrm r1.xyz, r0
mov oT2.w, r1.x
mov oT3.w, r1.y
mov oT4.w, r1.z

"
}
SubProgram "d3d9 " {
// Stats: 42 math
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_OFF" "_NORMALMAP" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 2
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 16 [_DetailAlbedoMap_ST]
Vector 15 [_MainTex_ST]
Float 17 [_UVSec]
Vector 13 [_WorldSpaceCameraPos]
Vector 14 [_WorldSpaceLightPos0]
"vs_2_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.z, c2, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c15, c15.zwzw
mul r0.x, c17.x, c17.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c16.xyxy, c16
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add r1.xyz, r0, -c13
dp3 r1.w, r1, r1
rsq r1.w, r1.w
mul oT1.xyz, r1.w, r1
mul r1.xyz, v1.y, c9
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov oT4.xyz, r2
mov oT2.xyz, r3
mul oT3.xyz, r1, v4.w
dp4 r0.w, c7, v0
dp4 oT5.x, c11, r0
dp4 oT5.y, c12, r0
mad r0.xyz, r0, -c14.w, c14
mov oT2.w, r0.x
mov oT3.w, r0.y
mov oT4.w, r0.z

"
}
SubProgram "d3d9 " {
// Stats: 51 math
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_NATIVE" "_NORMALMAP" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 12 [_LightMatrix0]
Matrix 8 [_Object2World]
Matrix 16 [_World2Object] 3
Matrix 4 [glstate_matrix_mvp]
Matrix 0 [unity_World2Shadow0]
Vector 22 [_DetailAlbedoMap_ST]
Vector 21 [_MainTex_ST]
Float 23 [_UVSec]
Vector 19 [_WorldSpaceCameraPos]
Vector 20 [_WorldSpaceLightPos0]
"vs_2_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dp4 oPos.x, c4, v0
dp4 oPos.y, c5, v0
dp4 oPos.z, c6, v0
dp4 oPos.w, c7, v0
mad oT0.xy, v2, c21, c21.zwzw
mul r0.x, c23.x, c23.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c22.xyxy, c22
dp4 r0.x, c8, v0
dp4 r0.y, c9, v0
dp4 r0.z, c10, v0
add r1.xyz, r0, -c19
dp3 r1.w, r1, r1
rsq r1.w, r1.w
mul oT1.xyz, r1.w, r1
mul r1.xyz, v1.y, c17
mad r1.xyz, c16, v1.x, r1
mad r1.xyz, c18, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c8, v4
dp3 r1.y, c9, v4
dp3 r1.z, c10, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov oT4.xyz, r2
mov oT2.xyz, r3
mul oT3.xyz, r1, v4.w
dp4 r0.w, c11, v0
dp4 oT5.x, c12, r0
dp4 oT5.y, c13, r0
dp4 oT5.z, c14, r0
dp4 oT5.w, c15, r0
dp4 oT6.x, c0, r0
dp4 oT6.y, c1, r0
dp4 oT6.z, c2, r0
dp4 oT6.w, c3, r0
mad r0.xyz, r0, -c20.w, c20
nrm r1.xyz, r0
mov oT2.w, r1.x
mov oT3.w, r1.y
mov oT4.w, r1.z

"
}
SubProgram "d3d9 " {
// Stats: 45 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 15 [_DetailAlbedoMap_ST]
Vector 14 [_MainTex_ST]
Vector 11 [_ProjectionParams]
Vector 12 [_ScreenParams]
Float 16 [_UVSec]
Vector 10 [_WorldSpaceCameraPos]
Vector 13 [_WorldSpaceLightPos0]
"vs_2_0
def c17, 0.5, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
mad oT0.xy, v2, c14, c14.zwzw
mul r0.x, c16.x, c16.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c15.xyxy, c15
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add r1.xyz, r0, -c10
mad r0.xyz, r0, -c13.w, c13
dp3 r0.w, r1, r1
rsq r0.w, r0.w
mul oT1.xyz, r0.w, r1
mul r1.xyz, v1.y, c8
mad r1.xyz, c7, v1.x, r1
mad r1.xyz, c9, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov oT4.xyz, r2
mov oT2.xyz, r3
mul oT3.xyz, r1, v4.w
dp4 r1.y, c1, v0
mul r0.w, r1.y, c11.x
mul r2.w, r0.w, c17.x
dp4 r1.x, c0, v0
dp4 r1.w, c3, v0
mul r2.xz, r1.xyww, c17.x
mad oT5.xy, r2.z, c12.zwzw, r2.xwzw
dp4 r1.z, c2, v0
mov oPos, r1
mov oT5.zw, r1
mov oT2.w, r0.x
mov oT3.w, r0.y
mov oT4.w, r0.z

"
}
SubProgram "d3d9 " {
// Stats: 48 math
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 2
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 18 [_DetailAlbedoMap_ST]
Vector 17 [_MainTex_ST]
Vector 14 [_ProjectionParams]
Vector 15 [_ScreenParams]
Float 19 [_UVSec]
Vector 13 [_WorldSpaceCameraPos]
Vector 16 [_WorldSpaceLightPos0]
"vs_2_0
def c20, 0.5, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
mad oT0.xy, v2, c17, c17.zwzw
mul r0.x, c19.x, c19.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c18.xyxy, c18
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add r1.xyz, r0, -c13
dp3 r1.w, r1, r1
rsq r1.w, r1.w
mul oT1.xyz, r1.w, r1
mul r1.xyz, v1.y, c9
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov oT4.xyz, r2
mov oT2.xyz, r3
mul oT3.xyz, r1, v4.w
dp4 r0.w, c7, v0
dp4 oT5.x, c11, r0
dp4 oT5.y, c12, r0
mad r0.xyz, r0, -c16.w, c16
dp4 r1.y, c1, v0
mul r0.w, r1.y, c14.x
mul r2.w, r0.w, c20.x
dp4 r1.x, c0, v0
dp4 r1.w, c3, v0
mul r2.xz, r1.xyww, c20.x
mad oT6.xy, r2.z, c15.zwzw, r2.xwzw
dp4 r1.z, c2, v0
mov oPos, r1
mov oT6.zw, r1
mov oT2.w, r0.x
mov oT3.w, r0.y
mov oT4.w, r0.z

"
}
SubProgram "d3d9 " {
// Stats: 47 math
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 3
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 18 [_DetailAlbedoMap_ST]
Vector 16 [_LightPositionRange]
Vector 17 [_MainTex_ST]
Float 19 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 15 [_WorldSpaceLightPos0]
"vs_2_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.z, c2, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c17, c17.zwzw
mul r0.x, c19.x, c19.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c18.xyxy, c18
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add r1.xyz, r0, -c14
dp3 r1.w, r1, r1
rsq r1.w, r1.w
mul oT1.xyz, r1.w, r1
mul r1.xyz, v1.y, c9
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov oT4.xyz, r2
mov oT2.xyz, r3
mul oT3.xyz, r1, v4.w
dp4 r0.w, c7, v0
dp4 oT5.x, c11, r0
dp4 oT5.y, c12, r0
dp4 oT5.z, c13, r0
add oT6.xyz, r0, -c16
mad r0.xyz, r0, -c15.w, c15
nrm r1.xyz, r0
mov oT2.w, r1.x
mov oT3.w, r1.y
mov oT4.w, r1.z

"
}
SubProgram "d3d9 " {
// Stats: 47 math
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 3
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 18 [_DetailAlbedoMap_ST]
Vector 16 [_LightPositionRange]
Vector 17 [_MainTex_ST]
Float 19 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 15 [_WorldSpaceLightPos0]
"vs_2_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.z, c2, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c17, c17.zwzw
mul r0.x, c19.x, c19.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c18.xyxy, c18
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add r1.xyz, r0, -c14
dp3 r1.w, r1, r1
rsq r1.w, r1.w
mul oT1.xyz, r1.w, r1
mul r1.xyz, v1.y, c9
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov oT4.xyz, r2
mov oT2.xyz, r3
mul oT3.xyz, r1, v4.w
dp4 r0.w, c7, v0
dp4 oT5.x, c11, r0
dp4 oT5.y, c12, r0
dp4 oT5.z, c13, r0
add oT6.xyz, r0, -c16
mad r0.xyz, r0, -c15.w, c15
nrm r1.xyz, r0
mov oT2.w, r1.x
mov oT3.w, r1.y
mov oT4.w, r1.z

"
}
}
Program "fp" {
SubProgram "d3d9 " {
// Stats: 27 math, 3 textures
Keywords { "POINT" "SHADOWS_OFF" }
Vector 2 [_Color]
Float 3 [_Glossiness]
Vector 0 [_LightColor0]
Vector 1 [_SpecColor]
SetTexture 0 [unity_NHxRoughness] 2D 0
SetTexture 1 [_MainTex] 2D 1
SetTexture 2 [_LightTexture0] 2D 2
"ps_2_0
def c4, 1, 16, 0, 0
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t2
dcl_pp t3
dcl_pp t4
dcl t5.xyz
dcl_2d s0
dcl_2d s1
dcl_2d s2
dp3 r0.w, t5, t5
mov r0.xy, r0.w
nrm_pp r1.xyz, t4
dp3_pp r1.w, -t1, r1
add_pp r1.w, r1.w, r1.w
mad_pp r2.xyz, r1, -r1.w, -t1
mov_pp r3.x, t2.w
mov_pp r3.y, t3.w
mov_pp r3.z, t4.w
dp3_pp r1.w, r2, r3
mul_pp r1.w, r1.w, r1.w
mul_pp r2.x, r1.w, r1.w
mov r1.w, c4.x
add_pp r2.y, r1.w, -c3.x
texld_pp r0, r0, s2
texld r4, t0, s1
texld r2, r2, s0
mul_pp r0.xyz, r0.x, c0
mul_pp r2.yzw, r4.wzyx, c2.wzyx
dp3_sat_pp r0.w, r1, r3
mul_pp r1.x, r2.x, c4.y
mul_pp r1.xyz, r1.x, c1
add_pp r1.w, r1.w, -c1.x
mad_pp r1.xyz, r2.wzyx, r1.w, r1
mul_pp r0.xyz, r0, r1
mul_pp r0.xyz, r0.w, r0
mov_pp r0.w, c4.x
mov_pp oC0, r0

"
}
SubProgram "d3d9 " {
// Stats: 24 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" }
Vector 2 [_Color]
Float 3 [_Glossiness]
Vector 0 [_LightColor0]
Vector 1 [_SpecColor]
SetTexture 0 [unity_NHxRoughness] 2D 0
SetTexture 1 [_MainTex] 2D 1
"ps_2_0
def c4, 1, 16, 0, 0
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t2
dcl_pp t3
dcl_pp t4
dcl_2d s0
dcl_2d s1
nrm_pp r0.xyz, t4
dp3_pp r0.w, -t1, r0
add_pp r0.w, r0.w, r0.w
mad_pp r1.xyz, r0, -r0.w, -t1
mov_pp r2.x, t2.w
mov_pp r2.y, t3.w
mov_pp r2.z, t4.w
dp3_pp r0.w, r1, r2
mul_pp r0.w, r0.w, r0.w
mul_pp r1.x, r0.w, r0.w
mov r0.w, c4.x
add_pp r1.y, r0.w, -c3.x
texld r3, t0, s1
texld r1, r1, s0
mul_pp r1.yzw, r3.wzyx, c2.wzyx
dp3_sat_pp r0.x, r0, r2
mul_pp r0.y, r1.x, c4.y
mul_pp r2.xyz, r0.y, c1
add_pp r2.w, r0.w, -c1.x
mad_pp r0.yzw, r1, r2.w, r2.wzyx
mul_pp r0.yzw, r0, c0.wzyx
mul_pp r0.xyz, r0.x, r0.wzyx
mov_pp r0.w, c4.x
mov_pp oC0, r0

"
}
SubProgram "d3d9 " {
// Stats: 31 math, 4 textures
Keywords { "SPOT" "SHADOWS_OFF" }
Vector 2 [_Color]
Float 3 [_Glossiness]
Vector 0 [_LightColor0]
Vector 1 [_SpecColor]
SetTexture 0 [unity_NHxRoughness] 2D 0
SetTexture 1 [_MainTex] 2D 1
SetTexture 2 [_LightTexture0] 2D 2
SetTexture 3 [_LightTextureB0] 2D 3
"ps_2_0
def c4, 1, 0.5, 0, 16
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t2
dcl_pp t3
dcl_pp t4
dcl_pp t5
dcl_2d s0
dcl_2d s1
dcl_2d s2
dcl_2d s3
rcp r0.w, t5.w
mad_pp r0.xy, t5, r0.w, c4.y
dp3 r1.w, t5, t5
mov r1.xy, r1.w
nrm_pp r2.xyz, t4
dp3_pp r2.w, -t1, r2
add_pp r2.w, r2.w, r2.w
mad_pp r3.xyz, r2, -r2.w, -t1
mov_pp r4.x, t2.w
mov_pp r4.y, t3.w
mov_pp r4.z, t4.w
dp3_pp r2.w, r3, r4
mul_pp r2.w, r2.w, r2.w
mul_pp r3.x, r2.w, r2.w
mov r2.w, c4.x
add_pp r3.y, r2.w, -c3.x
texld_pp r0, r0, s2
texld_pp r1, r1, s3
texld r5, t0, s1
texld r3, r3, s0
mul r4.w, r0.w, r1.x
mul_pp r0.xyz, r4.w, c0
cmp_pp r0.xyz, -t5.z, c4.z, r0
mul_pp r1.xyz, r5, c2
dp3_sat_pp r0.w, r2, r4
mul_pp r1.w, r3.x, c4.w
mul_pp r2.xyz, r1.w, c1
add_pp r1.w, r2.w, -c1.x
mad_pp r1.xyz, r1, r1.w, r2
mul_pp r0.xyz, r0, r1
mul_pp r0.xyz, r0.w, r0
mov r0.w, c4.x
mov_pp oC0, r0

"
}
SubProgram "d3d9 " {
// Stats: 28 math, 4 textures
Keywords { "POINT_COOKIE" "SHADOWS_OFF" }
Vector 2 [_Color]
Float 3 [_Glossiness]
Vector 0 [_LightColor0]
Vector 1 [_SpecColor]
SetTexture 0 [unity_NHxRoughness] 2D 0
SetTexture 1 [_MainTex] 2D 1
SetTexture 2 [_LightTexture0] CUBE 2
SetTexture 3 [_LightTextureB0] 2D 3
"ps_2_0
def c4, 1, 16, 0, 0
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t2
dcl_pp t3
dcl_pp t4
dcl t5.xyz
dcl_2d s0
dcl_2d s1
dcl_cube s2
dcl_2d s3
dp3 r0.w, t5, t5
mov r0.xy, r0.w
nrm_pp r1.xyz, t4
dp3_pp r1.w, -t1, r1
add_pp r1.w, r1.w, r1.w
mad_pp r2.xyz, r1, -r1.w, -t1
mov_pp r3.x, t2.w
mov_pp r3.y, t3.w
mov_pp r3.z, t4.w
dp3_pp r1.w, r2, r3
mul_pp r1.w, r1.w, r1.w
mul_pp r2.x, r1.w, r1.w
mov r1.w, c4.x
add_pp r2.y, r1.w, -c3.x
texld r0, r0, s3
texld r4, t5, s2
texld r5, t0, s1
texld r2, r2, s0
mul_pp r3.w, r0.x, r4.w
mul_pp r0.xyz, r3.w, c0
mul_pp r2.yzw, r5.wzyx, c2.wzyx
dp3_sat_pp r0.w, r1, r3
mul_pp r1.x, r2.x, c4.y
mul_pp r1.xyz, r1.x, c1
add_pp r1.w, r1.w, -c1.x
mad_pp r1.xyz, r2.wzyx, r1.w, r1
mul_pp r0.xyz, r0, r1
mul_pp r0.xyz, r0.w, r0
mov_pp r0.w, c4.x
mov_pp oC0, r0

"
}
SubProgram "d3d9 " {
// Stats: 25 math, 3 textures
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_OFF" }
Vector 2 [_Color]
Float 3 [_Glossiness]
Vector 0 [_LightColor0]
Vector 1 [_SpecColor]
SetTexture 0 [unity_NHxRoughness] 2D 0
SetTexture 1 [_MainTex] 2D 1
SetTexture 2 [_LightTexture0] 2D 2
"ps_2_0
def c4, 1, 16, 0, 0
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t2
dcl_pp t3
dcl_pp t4
dcl t5.xy
dcl_2d s0
dcl_2d s1
dcl_2d s2
nrm_pp r0.xyz, t4
dp3_pp r0.w, -t1, r0
add_pp r0.w, r0.w, r0.w
mad_pp r1.xyz, r0, -r0.w, -t1
mov_pp r2.x, t2.w
mov_pp r2.y, t3.w
mov_pp r2.z, t4.w
dp3_pp r0.w, r1, r2
mul_pp r0.w, r0.w, r0.w
mul_pp r1.x, r0.w, r0.w
mov r0.w, c4.x
add_pp r1.y, r0.w, -c3.x
texld r3, t0, s1
texld r1, r1, s0
texld_pp r4, t5, s2
mul_pp r1.yzw, r3.wzyx, c2.wzyx
dp3_sat_pp r0.x, r0, r2
mul_pp r0.y, r1.x, c4.y
mul_pp r2.xyz, r0.y, c1
add_pp r2.w, r0.w, -c1.x
mad_pp r0.yzw, r1, r2.w, r2.wzyx
mul_pp r1.xyz, r4.w, c0
mul_pp r0.yzw, r0, r1.wzyx
mul_pp r0.xyz, r0.x, r0.wzyx
mov_pp r0.w, c4.x
mov_pp oC0, r0

"
}
SubProgram "d3d9 " {
// Stats: 34 math, 5 textures
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_NATIVE" }
Vector 3 [_Color]
Float 4 [_Glossiness]
Vector 1 [_LightColor0]
Vector 0 [_LightShadowData]
Vector 2 [_SpecColor]
SetTexture 0 [unity_NHxRoughness] 2D 0
SetTexture 1 [_MainTex] 2D 1
SetTexture 2 [_ShadowMapTexture] 2D 2
SetTexture 3 [_LightTexture0] 2D 3
SetTexture 4 [_LightTextureB0] 2D 4
"ps_2_0
def c5, 1, 0.5, 0, 16
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t2
dcl_pp t3
dcl_pp t4
dcl_pp t5
dcl t6
dcl_2d s0
dcl_2d s1
dcl_2d s2
dcl_2d s3
dcl_2d s4
rcp r0.w, t5.w
mad_pp r0.xy, t5, r0.w, c5.y
dp3_pp r1.w, t5, t5
mov_pp r1.xy, r1.w
nrm_pp r2.xyz, t4
dp3_pp r2.w, -t1, r2
add_pp r2.w, r2.w, r2.w
mad_pp r3.xyz, r2, -r2.w, -t1
mov_pp r4.x, t2.w
mov_pp r4.y, t3.w
mov_pp r4.z, t4.w
dp3_pp r2.w, r3, r4
mul_pp r2.w, r2.w, r2.w
mul_pp r3.x, r2.w, r2.w
mov r2.w, c5.x
add_pp r3.y, r2.w, -c4.x
texld_pp r0, r0, s3
texld_pp r1, r1, s4
texldp_pp r5, t6, s2
texld r6, t0, s1
texld r3, r3, s0
mul r4.w, r0.w, r1.x
cmp r4.w, -t5.z, c5.z, r4.w
lrp_pp r6.w, r5.x, r2.w, c0.x
mul_pp r4.w, r4.w, r6.w
mul_pp r0.xyz, r4.w, c1
mul_pp r1.xyz, r6, c3
dp3_sat_pp r0.w, r2, r4
mul_pp r1.w, r3.x, c5.w
mul_pp r2.xyz, r1.w, c2
add_pp r1.w, r2.w, -c2.x
mad_pp r1.xyz, r1, r1.w, r2
mul_pp r0.xyz, r0, r1
mul_pp r0.xyz, r0.w, r0
mov r0.w, c5.x
mov_pp oC0, r0

"
}
SubProgram "d3d9 " {
// Stats: 25 math, 3 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Vector 2 [_Color]
Float 3 [_Glossiness]
Vector 0 [_LightColor0]
Vector 1 [_SpecColor]
SetTexture 0 [unity_NHxRoughness] 2D 0
SetTexture 1 [_MainTex] 2D 1
SetTexture 2 [_ShadowMapTexture] 2D 2
"ps_2_0
def c4, 1, 16, 0, 0
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t2
dcl_pp t3
dcl_pp t4
dcl_pp t5
dcl_2d s0
dcl_2d s1
dcl_2d s2
nrm_pp r0.xyz, t4
dp3_pp r0.w, -t1, r0
add_pp r0.w, r0.w, r0.w
mad_pp r1.xyz, r0, -r0.w, -t1
mov_pp r2.x, t2.w
mov_pp r2.y, t3.w
mov_pp r2.z, t4.w
dp3_pp r0.w, r1, r2
mul_pp r0.w, r0.w, r0.w
mul_pp r1.x, r0.w, r0.w
mov r0.w, c4.x
add_pp r1.y, r0.w, -c3.x
texld r3, t0, s1
texld r1, r1, s0
texldp_pp r4, t5, s2
mul_pp r1.yzw, r3.wzyx, c2.wzyx
dp3_sat_pp r0.x, r0, r2
mul_pp r0.y, r1.x, c4.y
mul_pp r2.xyz, r0.y, c1
add_pp r2.w, r0.w, -c1.x
mad_pp r0.yzw, r1, r2.w, r2.wzyx
mul_pp r1.xyz, r4.x, c0
mul_pp r0.yzw, r0, r1.wzyx
mul_pp r0.xyz, r0.x, r0.wzyx
mov_pp r0.w, c4.x
mov_pp oC0, r0

"
}
SubProgram "d3d9 " {
// Stats: 26 math, 4 textures
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
Vector 2 [_Color]
Float 3 [_Glossiness]
Vector 0 [_LightColor0]
Vector 1 [_SpecColor]
SetTexture 0 [unity_NHxRoughness] 2D 0
SetTexture 1 [_MainTex] 2D 1
SetTexture 2 [_ShadowMapTexture] 2D 2
SetTexture 3 [_LightTexture0] 2D 3
"ps_2_0
def c4, 1, 16, 0, 0
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t2
dcl_pp t3
dcl_pp t4
dcl t5.xy
dcl_pp t6
dcl_2d s0
dcl_2d s1
dcl_2d s2
dcl_2d s3
nrm_pp r0.xyz, t4
dp3_pp r0.w, -t1, r0
add_pp r0.w, r0.w, r0.w
mad_pp r1.xyz, r0, -r0.w, -t1
mov_pp r2.x, t2.w
mov_pp r2.y, t3.w
mov_pp r2.z, t4.w
dp3_pp r0.w, r1, r2
mul_pp r0.w, r0.w, r0.w
mul_pp r1.x, r0.w, r0.w
mov r0.w, c4.x
add_pp r1.y, r0.w, -c3.x
texld r3, t5, s3
texldp_pp r4, t6, s2
texld r5, t0, s1
texld r1, r1, s0
mul_pp r2.w, r3.w, r4.x
mul_pp r1.yzw, r2.w, c0.wzyx
mul_pp r3.xyz, r5, c2
dp3_sat_pp r3.w, r0, r2
mul_pp r0.x, r1.x, c4.y
mul_pp r0.xyz, r0.x, c1
add_pp r0.w, r0.w, -c1.x
mad_pp r0.xyz, r3, r0.w, r0
mul_pp r0.xyz, r1.wzyx, r0
mul_pp r0.xyz, r3.w, r0
mov_pp r0.w, c4.x
mov_pp oC0, r0

"
}
SubProgram "d3d9 " {
// Stats: 34 math, 4 textures
Keywords { "POINT" "SHADOWS_CUBE" }
Vector 4 [_Color]
Float 5 [_Glossiness]
Vector 2 [_LightColor0]
Vector 0 [_LightPositionRange]
Vector 1 [_LightShadowData]
Vector 3 [_SpecColor]
SetTexture 0 [unity_NHxRoughness] 2D 0
SetTexture 1 [_MainTex] 2D 1
SetTexture 2 [_ShadowMapTexture] CUBE 2
SetTexture 3 [_LightTexture0] 2D 3
"ps_2_0
def c6, 1, 0.970000029, 16, 0
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t2
dcl_pp t3
dcl_pp t4
dcl t5.xyz
dcl t6.xyz
dcl_2d s0
dcl_2d s1
dcl_cube s2
dcl_2d s3
dp3 r0.w, t5, t5
mov r0.xy, r0.w
nrm_pp r1.xyz, t4
dp3_pp r1.w, -t1, r1
add_pp r1.w, r1.w, r1.w
mad_pp r2.xyz, r1, -r1.w, -t1
mov_pp r3.x, t2.w
mov_pp r3.y, t3.w
mov_pp r3.z, t4.w
dp3_pp r1.w, r2, r3
mul_pp r1.w, r1.w, r1.w
mul_pp r2.x, r1.w, r1.w
mov r1.w, c6.x
add_pp r2.y, r1.w, -c5.x
texld r4, t6, s2
texld r0, r0, s3
texld r5, t0, s1
texld r2, r2, s0
dp3 r3.w, t6, t6
rsq r3.w, r3.w
rcp r3.w, r3.w
mul r3.w, r3.w, c0.w
mad r3.w, r3.w, -c6.y, r4.x
cmp_pp r3.w, r3.w, r1.w, c1.x
mul_pp r3.w, r0.x, r3.w
mul_pp r0.xyz, r3.w, c2
mul_pp r2.yzw, r5.wzyx, c4.wzyx
dp3_sat_pp r0.w, r1, r3
mul_pp r1.x, r2.x, c6.z
mul_pp r1.xyz, r1.x, c3
add_pp r1.w, r1.w, -c3.x
mad_pp r1.xyz, r2.wzyx, r1.w, r1
mul_pp r0.xyz, r0, r1
mul_pp r0.xyz, r0.w, r0
mov r0.w, c6.x
mov_pp oC0, r0

"
}
SubProgram "d3d9 " {
// Stats: 34 math, 5 textures
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
Vector 4 [_Color]
Float 5 [_Glossiness]
Vector 2 [_LightColor0]
Vector 0 [_LightPositionRange]
Vector 1 [_LightShadowData]
Vector 3 [_SpecColor]
SetTexture 0 [unity_NHxRoughness] 2D 0
SetTexture 1 [_MainTex] 2D 1
SetTexture 2 [_ShadowMapTexture] CUBE 2
SetTexture 3 [_LightTexture0] CUBE 3
SetTexture 4 [_LightTextureB0] 2D 4
"ps_2_0
def c6, 1, 0.970000029, 16, 0
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t2
dcl_pp t3
dcl_pp t4
dcl t5.xyz
dcl t6.xyz
dcl_2d s0
dcl_2d s1
dcl_cube s2
dcl_cube s3
dcl_2d s4
texld r0, t6, s2
texld r1, t5, s3
texld r2, t0, s1
dp3 r2.w, t6, t6
rsq r2.w, r2.w
rcp r2.w, r2.w
mul r2.w, r2.w, c0.w
mad r2.w, r2.w, -c6.y, r0.x
mov r0.x, c6.x
cmp_pp r2.w, r2.w, r0.x, c1.x
dp3 r1.xy, t5, t5
nrm_pp r3.xyz, t4
dp3_pp r3.w, -t1, r3
add_pp r3.w, r3.w, r3.w
mad_pp r4.xyz, r3, -r3.w, -t1
mov_pp r5.x, t2.w
mov_pp r5.y, t3.w
mov_pp r5.z, t4.w
dp3_pp r3.w, r4, r5
mul_pp r3.w, r3.w, r3.w
mul_pp r4.x, r3.w, r3.w
add_pp r4.y, r0.x, -c5.x
texld r6, r1, s4
texld r4, r4, s0
mul r3.w, r1.w, r6.x
mul_pp r2.w, r2.w, r3.w
mul_pp r0.yzw, r2.w, c2.wzyx
mul_pp r1.xyz, r2, c4
dp3_sat_pp r1.w, r3, r5
mul_pp r2.x, r4.x, c6.z
mul_pp r2.xyz, r2.x, c3
add_pp r2.w, r0.x, -c3.x
mad_pp r1.xyz, r1, r2.w, r2
mul_pp r0.xyz, r0.wzyx, r1
mul_pp r0.xyz, r1.w, r0
mov r0.w, c6.x
mov_pp oC0, r0

"
}
SubProgram "d3d9 " {
// Stats: 33 math, 4 textures
Keywords { "POINT" "SHADOWS_OFF" "_NORMALMAP" }
Vector 2 [_Color]
Float 3 [_Glossiness]
Vector 0 [_LightColor0]
Vector 1 [_SpecColor]
SetTexture 0 [unity_NHxRoughness] 2D 0
SetTexture 1 [_MainTex] 2D 1
SetTexture 2 [_BumpMap] 2D 2
SetTexture 3 [_LightTexture0] 2D 3
"ps_2_0
def c4, 2, -1, 0, 1
def c5, 16, 0, 0, 0
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t2
dcl_pp t3
dcl_pp t4
dcl t5.xyz
dcl_2d s0
dcl_2d s1
dcl_2d s2
dcl_2d s3
texld_pp r0, t0, s2
mad_pp r1.x, r0.w, c4.x, c4.y
mad_pp r1.y, r0.y, c4.x, c4.y
mul_pp r0.xyz, r1.y, t3
mad_pp r0.xyz, r1.x, t2, r0
dp2add_sat_pp r0.w, r1, r1, c4.z
add_pp r0.w, -r0.w, c4.w
rsq_pp r0.w, r0.w
rcp_pp r0.w, r0.w
mad_pp r0.xyz, r0.w, t4, r0
dp3_pp r0.w, -t1, r0
add_pp r0.w, r0.w, r0.w
mad_pp r1.xyz, r0, -r0.w, -t1
mov_pp r2.x, t2.w
mov_pp r2.y, t3.w
mov_pp r2.z, t4.w
dp3_pp r0.w, r1, r2
dp3_sat_pp r0.x, r0, r2
mul_pp r0.y, r0.w, r0.w
mul_pp r1.x, r0.y, r0.y
mov r0.w, c4.w
add_pp r1.y, r0.w, -c3.x
dp3 r2.xy, t5, t5
texld r1, r1, s0
texld r3, t0, s1
texld_pp r2, r2, s3
mul_pp r3.w, r1.x, c5.x
mul_pp r1.xyz, r3.w, c1
mul_pp r2.yzw, r3.wzyx, c2.wzyx
add_pp r1.w, r0.w, -c1.x
mad_pp r0.yzw, r2, r1.w, r1.wzyx
mul_pp r1.xyz, r2.x, c0
mul_pp r0.yzw, r0, r1.wzyx
mul_pp r0.xyz, r0.x, r0.wzyx
mov_pp r0.w, c4.w
mov_pp oC0, r0

"
}
SubProgram "d3d9 " {
// Stats: 31 math, 3 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "_NORMALMAP" }
Vector 2 [_Color]
Float 3 [_Glossiness]
Vector 0 [_LightColor0]
Vector 1 [_SpecColor]
SetTexture 0 [unity_NHxRoughness] 2D 0
SetTexture 1 [_MainTex] 2D 1
SetTexture 2 [_BumpMap] 2D 2
"ps_2_0
def c4, 2, -1, 0, 1
def c5, 16, 0, 0, 0
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t2
dcl_pp t3
dcl_pp t4
dcl_2d s0
dcl_2d s1
dcl_2d s2
texld_pp r0, t0, s2
mad_pp r1.x, r0.w, c4.x, c4.y
mad_pp r1.y, r0.y, c4.x, c4.y
mul_pp r0.xyz, r1.y, t3
mad_pp r0.xyz, r1.x, t2, r0
dp2add_sat_pp r0.w, r1, r1, c4.z
add_pp r0.w, -r0.w, c4.w
rsq_pp r0.w, r0.w
rcp_pp r0.w, r0.w
mad_pp r0.xyz, r0.w, t4, r0
dp3_pp r0.w, -t1, r0
add_pp r0.w, r0.w, r0.w
mad_pp r1.xyz, r0, -r0.w, -t1
mov_pp r2.x, t2.w
mov_pp r2.y, t3.w
mov_pp r2.z, t4.w
dp3_pp r0.w, r1, r2
dp3_sat_pp r0.x, r0, r2
mul_pp r0.y, r0.w, r0.w
mul_pp r1.x, r0.y, r0.y
mov r0.w, c4.w
add_pp r1.y, r0.w, -c3.x
texld r1, r1, s0
texld r2, t0, s1
mul_pp r2.w, r1.x, c5.x
mul_pp r1.xyz, r2.w, c1
mul_pp r2.xyz, r2, c2
add_pp r1.w, r0.w, -c1.x
mad_pp r0.yzw, r2.wzyx, r1.w, r1.wzyx
mul_pp r0.yzw, r0, c0.wzyx
mul_pp r0.xyz, r0.x, r0.wzyx
mov_pp r0.w, c4.w
mov_pp oC0, r0

"
}
SubProgram "d3d9 " {
// Stats: 38 math, 5 textures
Keywords { "SPOT" "SHADOWS_OFF" "_NORMALMAP" }
Vector 2 [_Color]
Float 3 [_Glossiness]
Vector 0 [_LightColor0]
Vector 1 [_SpecColor]
SetTexture 0 [unity_NHxRoughness] 2D 0
SetTexture 1 [_MainTex] 2D 1
SetTexture 2 [_BumpMap] 2D 2
SetTexture 3 [_LightTexture0] 2D 3
SetTexture 4 [_LightTextureB0] 2D 4
"ps_2_0
def c4, 2, -1, 0, 1
def c5, 0.5, 16, 0, 0
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t2
dcl_pp t3
dcl_pp t4
dcl_pp t5
dcl_2d s0
dcl_2d s1
dcl_2d s2
dcl_2d s3
dcl_2d s4
texld_pp r0, t0, s2
rcp r0.x, t5.w
mad_pp r1.xy, t5, r0.x, c5.x
dp3 r0.x, t5, t5
mov r2.xy, r0.x
mad_pp r3.x, r0.w, c4.x, c4.y
mad_pp r3.y, r0.y, c4.x, c4.y
mul_pp r0.xyz, r3.y, t3
mad_pp r0.xyz, r3.x, t2, r0
dp2add_sat_pp r0.w, r3, r3, c4.z
add_pp r0.w, -r0.w, c4.w
rsq_pp r0.w, r0.w
rcp_pp r0.w, r0.w
mad_pp r0.xyz, r0.w, t4, r0
dp3_pp r0.w, -t1, r0
add_pp r0.w, r0.w, r0.w
mad_pp r3.xyz, r0, -r0.w, -t1
mov_pp r4.x, t2.w
mov_pp r4.y, t3.w
mov_pp r4.z, t4.w
dp3_pp r0.w, r3, r4
mul_pp r0.w, r0.w, r0.w
mul_pp r3.x, r0.w, r0.w
mov r0.w, c4.w
add_pp r3.y, r0.w, -c3.x
texld_pp r1, r1, s3
texld_pp r2, r2, s4
texld r3, r3, s0
texld r5, t0, s1
mul r4.w, r1.w, r2.x
mul_pp r1.xyz, r4.w, c0
cmp_pp r1.xyz, -t5.z, c4.z, r1
dp3_sat_pp r1.w, r0, r4
mul_pp r5.w, r3.x, c5.y
mul_pp r0.xyz, r5.w, c1
mul_pp r2.xyz, r5, c2
add_pp r0.w, r0.w, -c1.x
mad_pp r0.xyz, r2, r0.w, r0
mul_pp r0.xyz, r1, r0
mul_pp r0.xyz, r1.w, r0
mov_pp r0.w, c4.w
mov_pp oC0, r0

"
}
SubProgram "d3d9 " {
// Stats: 35 math, 5 textures
Keywords { "POINT_COOKIE" "SHADOWS_OFF" "_NORMALMAP" }
Vector 2 [_Color]
Float 3 [_Glossiness]
Vector 0 [_LightColor0]
Vector 1 [_SpecColor]
SetTexture 0 [unity_NHxRoughness] 2D 0
SetTexture 1 [_MainTex] 2D 1
SetTexture 2 [_BumpMap] 2D 2
SetTexture 3 [_LightTexture0] CUBE 3
SetTexture 4 [_LightTextureB0] 2D 4
"ps_2_0
def c4, 2, -1, 0, 1
def c5, 16, 0, 0, 0
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t2
dcl_pp t3
dcl_pp t4
dcl t5.xyz
dcl_2d s0
dcl_2d s1
dcl_2d s2
dcl_cube s3
dcl_2d s4
texld_pp r0, t0, s2
dp3 r0.x, t5, t5
mov r1.xy, r0.x
mad_pp r2.x, r0.w, c4.x, c4.y
mad_pp r2.y, r0.y, c4.x, c4.y
mul_pp r0.xyz, r2.y, t3
mad_pp r0.xyz, r2.x, t2, r0
dp2add_sat_pp r0.w, r2, r2, c4.z
add_pp r0.w, -r0.w, c4.w
rsq_pp r0.w, r0.w
rcp_pp r0.w, r0.w
mad_pp r0.xyz, r0.w, t4, r0
dp3_pp r0.w, -t1, r0
add_pp r0.w, r0.w, r0.w
mad_pp r2.xyz, r0, -r0.w, -t1
mov_pp r3.x, t2.w
mov_pp r3.y, t3.w
mov_pp r3.z, t4.w
dp3_pp r0.w, r2, r3
mul_pp r0.w, r0.w, r0.w
mul_pp r2.x, r0.w, r0.w
mov r0.w, c4.w
add_pp r2.y, r0.w, -c3.x
texld r1, r1, s4
texld r4, t5, s3
texld r2, r2, s0
texld r5, t0, s1
mul_pp r3.w, r1.x, r4.w
mul_pp r1.xyz, r3.w, c0
dp3_sat_pp r1.w, r0, r3
mul_pp r5.w, r2.x, c5.x
mul_pp r0.xyz, r5.w, c1
mul_pp r2.xyz, r5, c2
add_pp r0.w, r0.w, -c1.x
mad_pp r0.xyz, r2, r0.w, r0
mul_pp r0.xyz, r1, r0
mul_pp r0.xyz, r1.w, r0
mov_pp r0.w, c4.w
mov_pp oC0, r0

"
}
SubProgram "d3d9 " {
// Stats: 32 math, 4 textures
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_OFF" "_NORMALMAP" }
Vector 2 [_Color]
Float 3 [_Glossiness]
Vector 0 [_LightColor0]
Vector 1 [_SpecColor]
SetTexture 0 [unity_NHxRoughness] 2D 0
SetTexture 1 [_MainTex] 2D 1
SetTexture 2 [_BumpMap] 2D 2
SetTexture 3 [_LightTexture0] 2D 3
"ps_2_0
def c4, 2, -1, 0, 1
def c5, 16, 0, 0, 0
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t2
dcl_pp t3
dcl_pp t4
dcl t5.xy
dcl_2d s0
dcl_2d s1
dcl_2d s2
dcl_2d s3
texld_pp r0, t0, s2
mad_pp r1.x, r0.w, c4.x, c4.y
mad_pp r1.y, r0.y, c4.x, c4.y
mul_pp r0.xyz, r1.y, t3
mad_pp r0.xyz, r1.x, t2, r0
dp2add_sat_pp r0.w, r1, r1, c4.z
add_pp r0.w, -r0.w, c4.w
rsq_pp r0.w, r0.w
rcp_pp r0.w, r0.w
mad_pp r0.xyz, r0.w, t4, r0
dp3_pp r0.w, -t1, r0
add_pp r0.w, r0.w, r0.w
mad_pp r1.xyz, r0, -r0.w, -t1
mov_pp r2.x, t2.w
mov_pp r2.y, t3.w
mov_pp r2.z, t4.w
dp3_pp r0.w, r1, r2
dp3_sat_pp r0.x, r0, r2
mul_pp r0.y, r0.w, r0.w
mul_pp r1.x, r0.y, r0.y
mov r0.w, c4.w
add_pp r1.y, r0.w, -c3.x
texld r1, r1, s0
texld r2, t0, s1
texld_pp r3, t5, s3
mul_pp r2.w, r1.x, c5.x
mul_pp r1.xyz, r2.w, c1
mul_pp r2.xyz, r2, c2
add_pp r1.w, r0.w, -c1.x
mad_pp r0.yzw, r2.wzyx, r1.w, r1.wzyx
mul_pp r1.xyz, r3.w, c0
mul_pp r0.yzw, r0, r1.wzyx
mul_pp r0.xyz, r0.x, r0.wzyx
mov_pp r0.w, c4.w
mov_pp oC0, r0

"
}
SubProgram "d3d9 " {
// Stats: 41 math, 6 textures
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_NATIVE" "_NORMALMAP" }
Vector 3 [_Color]
Float 4 [_Glossiness]
Vector 1 [_LightColor0]
Vector 0 [_LightShadowData]
Vector 2 [_SpecColor]
SetTexture 0 [unity_NHxRoughness] 2D 0
SetTexture 1 [_MainTex] 2D 1
SetTexture 2 [_BumpMap] 2D 2
SetTexture 3 [_ShadowMapTexture] 2D 3
SetTexture 4 [_LightTexture0] 2D 4
SetTexture 5 [_LightTextureB0] 2D 5
"ps_2_0
def c5, 2, -1, 0, 1
def c6, 0.5, 16, 0, 0
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t2
dcl_pp t3
dcl_pp t4
dcl_pp t5
dcl t6
dcl_2d s0
dcl_2d s1
dcl_2d s2
dcl_2d s3
dcl_2d s4
dcl_2d s5
texld_pp r0, t0, s2
rcp r0.x, t5.w
mad_pp r1.xy, t5, r0.x, c6.x
dp3_pp r0.x, t5, t5
mov_pp r2.xy, r0.x
mad_pp r3.x, r0.w, c5.x, c5.y
mad_pp r3.y, r0.y, c5.x, c5.y
mul_pp r0.xyz, r3.y, t3
mad_pp r0.xyz, r3.x, t2, r0
dp2add_sat_pp r0.w, r3, r3, c5.z
add_pp r0.w, -r0.w, c5.w
rsq_pp r0.w, r0.w
rcp_pp r0.w, r0.w
mad_pp r0.xyz, r0.w, t4, r0
dp3_pp r0.w, -t1, r0
add_pp r0.w, r0.w, r0.w
mad_pp r3.xyz, r0, -r0.w, -t1
mov_pp r4.x, t2.w
mov_pp r4.y, t3.w
mov_pp r4.z, t4.w
dp3_pp r0.w, r3, r4
mul_pp r0.w, r0.w, r0.w
mul_pp r3.x, r0.w, r0.w
mov r0.w, c5.w
add_pp r3.y, r0.w, -c4.x
texld_pp r1, r1, s4
texld_pp r2, r2, s5
texldp_pp r5, t6, s3
texld r3, r3, s0
texld r6, t0, s1
mul r4.w, r1.w, r2.x
cmp r4.w, -t5.z, c5.z, r4.w
lrp_pp r6.w, r5.x, r0.w, c0.x
mul_pp r4.w, r4.w, r6.w
mul_pp r1.xyz, r4.w, c1
dp3_sat_pp r1.w, r0, r4
mul_pp r6.w, r3.x, c6.y
mul_pp r0.xyz, r6.w, c2
mul_pp r2.xyz, r6, c3
add_pp r0.w, r0.w, -c2.x
mad_pp r0.xyz, r2, r0.w, r0
mul_pp r0.xyz, r1, r0
mul_pp r0.xyz, r1.w, r0
mov_pp r0.w, c5.w
mov_pp oC0, r0

"
}
SubProgram "d3d9 " {
// Stats: 32 math, 4 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_NORMALMAP" }
Vector 2 [_Color]
Float 3 [_Glossiness]
Vector 0 [_LightColor0]
Vector 1 [_SpecColor]
SetTexture 0 [unity_NHxRoughness] 2D 0
SetTexture 1 [_MainTex] 2D 1
SetTexture 2 [_BumpMap] 2D 2
SetTexture 3 [_ShadowMapTexture] 2D 3
"ps_2_0
def c4, 2, -1, 0, 1
def c5, 16, 0, 0, 0
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t2
dcl_pp t3
dcl_pp t4
dcl_pp t5
dcl_2d s0
dcl_2d s1
dcl_2d s2
dcl_2d s3
texld_pp r0, t0, s2
mad_pp r1.x, r0.w, c4.x, c4.y
mad_pp r1.y, r0.y, c4.x, c4.y
mul_pp r0.xyz, r1.y, t3
mad_pp r0.xyz, r1.x, t2, r0
dp2add_sat_pp r0.w, r1, r1, c4.z
add_pp r0.w, -r0.w, c4.w
rsq_pp r0.w, r0.w
rcp_pp r0.w, r0.w
mad_pp r0.xyz, r0.w, t4, r0
dp3_pp r0.w, -t1, r0
add_pp r0.w, r0.w, r0.w
mad_pp r1.xyz, r0, -r0.w, -t1
mov_pp r2.x, t2.w
mov_pp r2.y, t3.w
mov_pp r2.z, t4.w
dp3_pp r0.w, r1, r2
dp3_sat_pp r0.x, r0, r2
mul_pp r0.y, r0.w, r0.w
mul_pp r1.x, r0.y, r0.y
mov r0.w, c4.w
add_pp r1.y, r0.w, -c3.x
texld r1, r1, s0
texld r2, t0, s1
texldp_pp r3, t5, s3
mul_pp r2.w, r1.x, c5.x
mul_pp r1.xyz, r2.w, c1
mul_pp r2.xyz, r2, c2
add_pp r1.w, r0.w, -c1.x
mad_pp r0.yzw, r2.wzyx, r1.w, r1.wzyx
mul_pp r1.xyz, r3.x, c0
mul_pp r0.yzw, r0, r1.wzyx
mul_pp r0.xyz, r0.x, r0.wzyx
mov_pp r0.w, c4.w
mov_pp oC0, r0

"
}
SubProgram "d3d9 " {
// Stats: 33 math, 5 textures
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_NORMALMAP" }
Vector 2 [_Color]
Float 3 [_Glossiness]
Vector 0 [_LightColor0]
Vector 1 [_SpecColor]
SetTexture 0 [unity_NHxRoughness] 2D 0
SetTexture 1 [_MainTex] 2D 1
SetTexture 2 [_BumpMap] 2D 2
SetTexture 3 [_ShadowMapTexture] 2D 3
SetTexture 4 [_LightTexture0] 2D 4
"ps_2_0
def c4, 2, -1, 0, 1
def c5, 16, 0, 0, 0
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t2
dcl_pp t3
dcl_pp t4
dcl t5.xy
dcl_pp t6
dcl_2d s0
dcl_2d s1
dcl_2d s2
dcl_2d s3
dcl_2d s4
texld_pp r0, t0, s2
mad_pp r1.x, r0.w, c4.x, c4.y
mad_pp r1.y, r0.y, c4.x, c4.y
mul_pp r0.xyz, r1.y, t3
mad_pp r0.xyz, r1.x, t2, r0
dp2add_sat_pp r0.w, r1, r1, c4.z
add_pp r0.w, -r0.w, c4.w
rsq_pp r0.w, r0.w
rcp_pp r0.w, r0.w
mad_pp r0.xyz, r0.w, t4, r0
dp3_pp r0.w, -t1, r0
add_pp r0.w, r0.w, r0.w
mad_pp r1.xyz, r0, -r0.w, -t1
mov_pp r2.x, t2.w
mov_pp r2.y, t3.w
mov_pp r2.z, t4.w
dp3_pp r0.w, r1, r2
dp3_sat_pp r0.x, r0, r2
mul_pp r0.y, r0.w, r0.w
mul_pp r1.x, r0.y, r0.y
mov r0.w, c4.w
add_pp r1.y, r0.w, -c3.x
texld r1, r1, s0
texld r2, t0, s1
texld r3, t5, s4
texldp_pp r4, t6, s3
mul_pp r2.w, r1.x, c5.x
mul_pp r1.xyz, r2.w, c1
mul_pp r2.xyz, r2, c2
add_pp r1.w, r0.w, -c1.x
mad_pp r0.yzw, r2.wzyx, r1.w, r1.wzyx
mul_pp r1.x, r3.w, r4.x
mul_pp r1.xyz, r1.x, c0
mul_pp r0.yzw, r0, r1.wzyx
mul_pp r0.xyz, r0.x, r0.wzyx
mov_pp r0.w, c4.w
mov_pp oC0, r0

"
}
SubProgram "d3d9 " {
// Stats: 41 math, 5 textures
Keywords { "POINT" "SHADOWS_CUBE" "_NORMALMAP" }
Vector 4 [_Color]
Float 5 [_Glossiness]
Vector 2 [_LightColor0]
Vector 0 [_LightPositionRange]
Vector 1 [_LightShadowData]
Vector 3 [_SpecColor]
SetTexture 0 [unity_NHxRoughness] 2D 0
SetTexture 1 [_MainTex] 2D 1
SetTexture 2 [_BumpMap] 2D 2
SetTexture 3 [_ShadowMapTexture] CUBE 3
SetTexture 4 [_LightTexture0] 2D 4
"ps_2_0
def c6, 2, -1, 0, 1
def c7, 0.970000029, 16, 0, 0
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t2
dcl_pp t3
dcl_pp t4
dcl t5.xyz
dcl t6.xyz
dcl_2d s0
dcl_2d s1
dcl_2d s2
dcl_cube s3
dcl_2d s4
texld_pp r0, t0, s2
dp3 r0.x, t5, t5
mov r1.xy, r0.x
mad_pp r2.x, r0.w, c6.x, c6.y
mad_pp r2.y, r0.y, c6.x, c6.y
mul_pp r0.xyz, r2.y, t3
mad_pp r0.xyz, r2.x, t2, r0
dp2add_sat_pp r0.w, r2, r2, c6.z
add_pp r0.w, -r0.w, c6.w
rsq_pp r0.w, r0.w
rcp_pp r0.w, r0.w
mad_pp r0.xyz, r0.w, t4, r0
dp3_pp r0.w, -t1, r0
add_pp r0.w, r0.w, r0.w
mad_pp r2.xyz, r0, -r0.w, -t1
mov_pp r3.x, t2.w
mov_pp r3.y, t3.w
mov_pp r3.z, t4.w
dp3_pp r0.w, r2, r3
mul_pp r0.w, r0.w, r0.w
mul_pp r2.x, r0.w, r0.w
mov r0.w, c6.w
add_pp r2.y, r0.w, -c5.x
texld r4, t6, s3
texld r1, r1, s4
texld r2, r2, s0
texld r5, t0, s1
dp3 r3.w, t6, t6
rsq r3.w, r3.w
rcp r3.w, r3.w
mul r3.w, r3.w, c0.w
mad r3.w, r3.w, -c7.x, r4.x
cmp_pp r3.w, r3.w, r0.w, c1.x
mul_pp r3.w, r1.x, r3.w
mul_pp r1.xyz, r3.w, c2
dp3_sat_pp r1.w, r0, r3
mul_pp r5.w, r2.x, c7.y
mul_pp r0.xyz, r5.w, c3
mul_pp r2.xyz, r5, c4
add_pp r0.w, r0.w, -c3.x
mad_pp r0.xyz, r2, r0.w, r0
mul_pp r0.xyz, r1, r0
mul_pp r0.xyz, r1.w, r0
mov_pp r0.w, c6.w
mov_pp oC0, r0

"
}
SubProgram "d3d9 " {
// Stats: 41 math, 6 textures
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_NORMALMAP" }
Vector 4 [_Color]
Float 5 [_Glossiness]
Vector 2 [_LightColor0]
Vector 0 [_LightPositionRange]
Vector 1 [_LightShadowData]
Vector 3 [_SpecColor]
SetTexture 0 [unity_NHxRoughness] 2D 0
SetTexture 1 [_MainTex] 2D 1
SetTexture 2 [_BumpMap] 2D 2
SetTexture 3 [_ShadowMapTexture] CUBE 3
SetTexture 4 [_LightTexture0] CUBE 4
SetTexture 5 [_LightTextureB0] 2D 5
"ps_2_0
def c6, 2, -1, 0, 1
def c7, 0.970000029, 16, 0, 0
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t2
dcl_pp t3
dcl_pp t4
dcl t5.xyz
dcl t6.xyz
dcl_2d s0
dcl_2d s1
dcl_2d s2
dcl_cube s3
dcl_cube s4
dcl_2d s5
texld r0, t6, s3
texld r1, t5, s4
texld r2, t0, s1
dp3 r2.w, t6, t6
rsq r2.w, r2.w
rcp r2.w, r2.w
mul r2.w, r2.w, c0.w
mad r2.w, r2.w, -c7.x, r0.x
mov r0.w, c6.w
cmp_pp r2.w, r2.w, r0.w, c1.x
dp3 r0.xy, t5, t5
texld_pp r3, t0, s2
mad_pp r1.x, r3.w, c6.x, c6.y
mad_pp r1.y, r3.y, c6.x, c6.y
mul_pp r3.xyz, r1.y, t3
mad_pp r3.xyz, r1.x, t2, r3
dp2add_sat_pp r3.w, r1, r1, c6.z
add_pp r3.w, -r3.w, c6.w
rsq_pp r3.w, r3.w
rcp_pp r3.w, r3.w
mad_pp r1.xyz, r3.w, t4, r3
dp3_pp r0.z, -t1, r1
add_pp r0.z, r0.z, r0.z
mad_pp r3.xyz, r1, -r0.z, -t1
mov_pp r4.x, t2.w
mov_pp r4.y, t3.w
mov_pp r4.z, t4.w
dp3_pp r4.w, r3, r4
mul_pp r4.w, r4.w, r4.w
mul_pp r3.x, r4.w, r4.w
add_pp r3.y, r0.w, -c5.x
texld r5, r0, s5
texld r3, r3, s0
mul r1.w, r1.w, r5.x
mul_pp r1.w, r2.w, r1.w
mul_pp r0.xyz, r1.w, c2
dp3_sat_pp r2.w, r1, r4
mul_pp r1.x, r3.x, c7.y
mul_pp r1.xyz, r1.x, c3
mul_pp r2.xyz, r2, c4
add_pp r0.w, r0.w, -c3.x
mad_pp r1.xyz, r2, r0.w, r1
mul_pp r0.xyz, r0, r1
mul_pp r0.xyz, r2.w, r0
mov_pp r0.w, c6.w
mov_pp oC0, r0

"
}
}
 }


 // Stats for Vertex shader:
 //        d3d9 : 25 avg math (8..43)
 // Stats for Fragment shader:
 //        d3d9 : 4 avg math (3..5)
 Pass {
  Name "SHADOWCASTER"
  Tags { "LIGHTMODE"="SHADOWCASTER" "SHADOWSUPPORT"="true" "RenderType"="Opaque" "PerformanceChecks"="False" }
  GpuProgramID 473441
Program "vp" {
SubProgram "d3d9 " {
// Stats: 43 math
Keywords { "SHADOWS_DEPTH" }
Bind "vertex" Vertex
Bind "normal" Normal
Matrix 8 [_Object2World] 3
Matrix 11 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [unity_MatrixVP]
Vector 14 [_WorldSpaceLightPos0]
Vector 15 [unity_LightShadowBias]
"vs_2_0
def c16, 1, 0, 0, 0
dcl_position v0
dcl_normal v1
mul r0.x, c15.z, c15.z
slt r0.x, -r0.x, r0.x
mul r0.yzw, v1.y, c12.xxyz
mad r0.yzw, c11.xxyz, v1.x, r0
mad r0.yzw, c13.xxyz, v1.z, r0
nrm r1.xyz, r0.yzww
mad r2, v0.xyzx, c16.xxxy, c16.yyyx
dp4 r3.x, c8, r2
dp4 r3.y, c9, r2
dp4 r3.z, c10, r2
mad r0.yzw, r3.xxyz, -c14.w, c14.xxyz
nrm r4.xyz, r0.yzww
dp3 r0.y, r1, r4
mad r0.y, r0.y, -r0.y, c16.x
rsq r0.y, r0.y
rcp r0.y, r0.y
mul r0.y, r0.y, c15.z
mad r1.xyz, r1, -r0.y, r3
mov r1.w, c16.x
dp4 r3.x, c4, r1
dp4 r3.y, c5, r1
dp4 r3.z, c6, r1
dp4 r3.w, c7, r1
dp4 r1.x, c0, r2
dp4 r1.y, c1, r2
dp4 r1.z, c2, r2
dp4 r1.w, c3, r2
lrp r2, r0.x, r3, r1
rcp r0.x, r2.w
mul r0.x, r0.x, c15.x
max r0.x, r0.x, c16.y
min r0.x, r0.x, c16.x
add r0.x, r0.x, r2.z
max r0.y, r0.x, c16.y
lrp r2.z, c15.y, r0.y, r0.x
mov oT0, r2
mov oPos, r2

"
}
SubProgram "d3d9 " {
// Stats: 8 math
Keywords { "SHADOWS_CUBE" }
Bind "vertex" Vertex
Matrix 4 [_Object2World] 3
Matrix 0 [glstate_matrix_mvp]
Vector 7 [_LightPositionRange]
"vs_2_0
dcl_position v0
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add oT0.xyz, r0, -c7
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.z, c2, v0
dp4 oPos.w, c3, v0

"
}
}
Program "fp" {
SubProgram "d3d9 " {
// Stats: 3 math
Keywords { "SHADOWS_DEPTH" }
"ps_2_0
dcl t0
rcp r0.w, t0.w
mul_pp r0, r0.w, t0.z
mov_pp oC0, r0

"
}
SubProgram "d3d9 " {
// Stats: 5 math
Keywords { "SHADOWS_CUBE" }
Vector 0 [_LightPositionRange]
"ps_2_0
dcl t0.xyz
dp3 r0.w, t0, t0
rsq r0.x, r0.w
rcp r0.x, r0.x
mul_pp r0, r0.x, c0.w
mov_pp oC0, r0

"
}
}
 }
}
Fallback "VertexLit"
}