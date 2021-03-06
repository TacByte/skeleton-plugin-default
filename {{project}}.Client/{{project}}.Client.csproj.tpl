﻿<?xml version="1.0" encoding="utf-8"?>
<Project ToolsVersion="15.0" xmlns="http://schemas.microsoft.com/developer/msbuild/2003">
  <Import Project="$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.props" Condition="Exists('$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.props')" />
  <PropertyGroup>
    <Configuration Condition=" '$(Configuration)' == '' ">Debug</Configuration>
    <Platform Condition=" '$(Platform)' == '' ">AnyCPU</Platform>
    <ProjectGuid>{{clientprojectguid}}</ProjectGuid>
    <OutputType>Library</OutputType>
    <AppDesignerFolder>Properties</AppDesignerFolder>
    <RootNamespace>{{org}}.{{project}}.Client</RootNamespace>
    <AssemblyName>{{org}}.{{project}}.Client.net</AssemblyName>
    <TargetFrameworkVersion>v4.5.2</TargetFrameworkVersion>
    <FileAlignment>512</FileAlignment>
  </PropertyGroup>
  <PropertyGroup Condition=" '$(Configuration)|$(Platform)' == 'Debug|AnyCPU' ">
    <DebugSymbols>false</DebugSymbols>
    <DebugType>none</DebugType>
    <Optimize>false</Optimize>
    <OutputPath>..\</OutputPath>
    <DefineConstants>DEBUG;TRACE</DefineConstants>
    <ErrorReport>prompt</ErrorReport>
    <WarningLevel>4</WarningLevel>
    <AllowedReferenceRelatedFileExtensions>
      .allowedextension
    </AllowedReferenceRelatedFileExtensions>
  </PropertyGroup>
  <PropertyGroup Condition=" '$(Configuration)|$(Platform)' == 'Release|AnyCPU' ">
    <DebugSymbols>false</DebugSymbols>
    <DebugType>none</DebugType>
    <Optimize>true</Optimize>
    <OutputPath>..\</OutputPath>
    <DefineConstants>TRACE</DefineConstants>
    <ErrorReport>prompt</ErrorReport>
    <WarningLevel>4</WarningLevel>
    <AllowedReferenceRelatedFileExtensions>
      .allowedextension
    </AllowedReferenceRelatedFileExtensions>
  </PropertyGroup>
  <ItemGroup>
    <Reference Include="CitizenFX.Core, Version=0.0.0.0, Culture=neutral, processorArchitecture=MSIL">
      <HintPath>..\packages\CitizenFX.Client.1.3.0.1127610\lib\net452\CitizenFX.Core.dll</HintPath>
      <Private>False</Private>
    </Reference>
    <Reference Include="JetBrains.Annotations, Version=2018.2.1.0, Culture=neutral, PublicKeyToken=1010a0d8d6380325, processorArchitecture=MSIL">
      <HintPath>..\packages\JetBrains.Annotations.2018.2.1\lib\net20\JetBrains.Annotations.dll</HintPath>
      <Private>False</Private>
    </Reference>
    <Reference Include="Microsoft.CSharp" />
    <Reference Include="Newtonsoft.Json, Version=12.0.0.0, Culture=neutral, PublicKeyToken=30ad4fe6b2a6aeed, processorArchitecture=MSIL">
      <HintPath>..\packages\Newtonsoft.Json.12.0.1\lib\net45\Newtonsoft.Json.dll</HintPath>
      <Private>False</Private>
    </Reference>
    <Reference Include="NFive.SDK.Client.net, Version=0.1.0.24, Culture=neutral, processorArchitecture=MSIL">
      <HintPath>..\packages\NFive.SDK.Client.0.1.0.24\lib\net452\NFive.SDK.Client.net.dll</HintPath>
      <Private>False</Private>
    </Reference>
    <Reference Include="NFive.SDK.Core.net, Version=0.1.0.30, Culture=neutral, processorArchitecture=MSIL">
      <HintPath>..\packages\NFive.SDK.Core.0.1.0.30\lib\net452\NFive.SDK.Core.net.dll</HintPath>
      <Private>False</Private>
    </Reference>
    <Reference Include="System" />
  </ItemGroup>
  <ItemGroup>
    <Compile Include="Overlays\{{project}}Overlay.cs" />
    <Compile Include="Properties\AssemblyInfo.cs" />
    <Compile Include="{{project}}Service.cs" />
  </ItemGroup>
  <ItemGroup>
    <None Include="packages.config" />
  </ItemGroup>{{ if shared }}
  <ItemGroup>
    <ProjectReference Include="..\{{project}}.Shared\{{project}}.Shared.csproj">
      <Project>{{sharedprojectguid}}</Project>
      <Name>{{project}}.Shared</Name>
      <Private>False</Private>
    </ProjectReference>
  </ItemGroup>{{ end }}
  <ItemGroup>
    <Content Include="Overlays\{{project}}Overlay.html">
      <CopyToOutputDirectory>PreserveNewest</CopyToOutputDirectory>
    </Content>
  </ItemGroup>
  <Import Project="$(MSBuildToolsPath)\Microsoft.CSharp.targets" />
</Project>