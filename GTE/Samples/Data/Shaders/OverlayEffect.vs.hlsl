// David Eberly, Geometric Tools, Redmond WA 98052
// Copyright (c) 1998-2022
// Distributed under the Boost Software License, Version 1.0.
// https://www.boost.org/LICENSE_1_0.txt
// https://www.geometrictools.com/License/Boost/LICENSE_1_0.txt
// Version: 6.0.2022.01.03

struct VS_INPUT
{
    float2 modelPosition : POSITION;
    float2 modelTCoord : TEXCOORD0;
};

struct VS_OUTPUT
{
    float2 vertexTCoord : TEXCOORD0;
    float4 clipPosition : SV_POSITION;
};

VS_OUTPUT VSMain (VS_INPUT input)
{
    VS_OUTPUT output;
    output.clipPosition.x = 2.0f * input.modelPosition.x - 1.0f;
    output.clipPosition.y = -2.0f * input.modelPosition.y + 1.0f;
    output.clipPosition.z = 0.0f;
    output.clipPosition.w = 1.0f;
    output.vertexTCoord = input.modelTCoord;
    return output;
}
