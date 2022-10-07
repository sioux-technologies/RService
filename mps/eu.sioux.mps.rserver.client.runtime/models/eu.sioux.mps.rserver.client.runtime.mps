<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:63427483-aaff-4a15-9acf-4bb50ea444f3(eu.sioux.mps.rserver.client.runtime)">
  <persistence version="9" />
  <languages>
    <use id="8e62c50a-2264-437c-b726-52c736f68585" name="eu.sioux.mps.rserver.client" version="0" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="doga" ref="r:bc7d1ec8-51ca-4c5e-b4fb-599d01ef5901(eu.sioux.mps.rserver.basetypes.structure)" />
  </imports>
  <registry>
    <language id="8e62c50a-2264-437c-b726-52c736f68585" name="eu.sioux.mps.rserver.client">
      <concept id="968357113524174460" name="eu.sioux.mps.rserver.client.structure.CustomImplementation" flags="ng" index="a9fnm">
        <property id="968357113524175987" name="TargetImplementationName" index="a98Zp" />
        <property id="968357113524175985" name="TargetImplementationNamespace" index="a98Zr" />
        <reference id="968357113524174462" name="structureElement" index="a9fnk" />
      </concept>
      <concept id="968357113520524946" name="eu.sioux.mps.rserver.client.structure.ClientGenerator" flags="ng" index="arkkS">
        <property id="6343360017567790338" name="version" index="29wL5h" />
        <property id="6343360017568009514" name="nugetPackage" index="29xE_T" />
        <property id="968357113520654206" name="baseTargetNameSpace" index="arONk" />
        <child id="968357113520524947" name="content" index="arkkT" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="arkkS" id="PKiUC7j9Vd">
    <property role="TrG5h" value="runtime" />
    <property role="arONk" value="Sioux.RClient.Runtime" />
    <property role="29wL5h" value="0.7.0-extensibleClientGenerator.1" />
    <property role="29xE_T" value="Sioux.RClient" />
    <node concept="a9fnm" id="PKiUC7lQ4G" role="arkkT">
      <property role="a98Zr" value="Sioux.RClient.Runtime" />
      <property role="a98Zp" value="BaseConcept" />
      <ref role="a9fnk" to="tpck:gw2VY9q" resolve="BaseConcept" />
    </node>
    <node concept="a9fnm" id="PKiUC7lYqI" role="arkkT">
      <property role="a98Zr" value="Sioux.RClient.Runtime" />
      <property role="a98Zp" value="INamedConcept" />
      <ref role="a9fnk" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="a9fnm" id="PKiUC7lYsA" role="arkkT">
      <property role="a98Zr" value="System" />
      <property role="a98Zp" value="Int32" />
      <ref role="a9fnk" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="a9fnm" id="PKiUC7lYsJ" role="arkkT">
      <property role="a98Zr" value="System" />
      <property role="a98Zp" value="Boolean" />
      <ref role="a9fnk" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="a9fnm" id="PKiUC7lYsV" role="arkkT">
      <property role="a98Zr" value="System" />
      <property role="a98Zp" value="String" />
      <ref role="a9fnk" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="a9fnm" id="$4Ynxq$9px" role="arkkT">
      <property role="a98Zr" value="System" />
      <property role="a98Zp" value="Double" />
      <ref role="a9fnk" to="doga:$4Ynxq$1aY" resolve="real" />
    </node>
  </node>
</model>

