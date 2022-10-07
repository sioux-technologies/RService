<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d86cd410-b868-4825-b735-d7f65bfc695d(eu.sioux.mps.rserver.client.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="8e62c50a-2264-437c-b726-52c736f68585" name="eu.sioux.mps.rserver.client" version="0" />
    <use id="b57a402f-593b-4960-8bc7-7633964482f0" name="eu.sioux.mps.rserver.client.boost" version="0" />
  </languages>
  <imports>
    <import index="5tb1" ref="r:8f01b14c-8e22-49bf-9fe7-81422279fa2c(eu.sioux.todos.structure)" />
    <import index="b3yo" ref="r:63427483-aaff-4a15-9acf-4bb50ea444f3(eu.sioux.mps.rserver.client.runtime)" />
  </imports>
  <registry>
    <language id="8e62c50a-2264-437c-b726-52c736f68585" name="eu.sioux.mps.rserver.client">
      <concept id="968357113523481584" name="eu.sioux.mps.rserver.client.structure.ClientGeneratorReference" flags="ng" index="aeA1q">
        <reference id="968357113523481585" name="clientGenerator" index="aeA1r" />
      </concept>
      <concept id="968357113523731900" name="eu.sioux.mps.rserver.client.structure.InterfaceClient" flags="ng" index="afrom">
        <reference id="968357113523731914" name="interface" index="afrpw" />
      </concept>
      <concept id="968357113520524946" name="eu.sioux.mps.rserver.client.structure.ClientGenerator" flags="ng" index="arkkS">
        <property id="6343360017567790338" name="version" index="29wL5h" />
        <property id="6343360017568009514" name="nugetPackage" index="29xE_T" />
        <property id="968357113520654206" name="baseTargetNameSpace" index="arONk" />
        <property id="7060284180741471011" name="targetFramework" index="1fB90H" />
        <property id="649918541558560989" name="createProjectFile" index="1jzk6_" />
        <child id="968357113523481590" name="using" index="aeA1s" />
        <child id="968357113520524947" name="content" index="arkkT" />
      </concept>
      <concept id="968357113520524444" name="eu.sioux.mps.rserver.client.structure.ConceptClient" flags="ng" index="arksQ">
        <reference id="968357113520524445" name="concept" index="arksR" />
      </concept>
      <concept id="968357113520635944" name="eu.sioux.mps.rserver.client.structure.EnumClient" flags="ng" index="arCI2">
        <reference id="968357113520635947" name="target" index="arCI1" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="arkkS" id="PKiUC77G0u">
    <property role="TrG5h" value="Todos" />
    <property role="arONk" value="Sioux.Todos" />
    <property role="29xE_T" value="Sioux.Todos" />
    <property role="29wL5h" value="0.1.0-alpha" />
    <property role="1jzk6_" value="true" />
    <property role="1fB90H" value="netstandard2.0" />
    <node concept="arCI2" id="PKiUC77JlU" role="arkkT">
      <ref role="arCI1" to="5tb1:6ZbxOp2_ArB" resolve="Priority" />
    </node>
    <node concept="arksQ" id="PKiUC77G0v" role="arkkT">
      <ref role="arksR" to="5tb1:6ZbxOp2_Aqd" resolve="Todo" />
    </node>
    <node concept="arksQ" id="PKiUC77G0$" role="arkkT">
      <ref role="arksR" to="5tb1:6ZbxOp2_Aqc" resolve="TodoList" />
    </node>
    <node concept="arksQ" id="5w895fhtelu" role="arkkT">
      <ref role="arksR" to="5tb1:5w895fhtekx" resolve="TodoReference" />
    </node>
    <node concept="arksQ" id="PKiUC7noum" role="arkkT">
      <ref role="arksR" to="5tb1:PKiUC7nnUF" resolve="SpecializedTodo" />
    </node>
    <node concept="arksQ" id="PKiUC79IUF" role="arkkT">
      <ref role="arksR" to="5tb1:PKiUC79Byt" resolve="test" />
    </node>
    <node concept="afrom" id="PKiUC7lYGZ" role="arkkT">
      <ref role="afrpw" to="5tb1:PKiUC7lYGO" resolve="IBlub" />
    </node>
    <node concept="aeA1q" id="PKiUC7jkOc" role="aeA1s">
      <ref role="aeA1r" to="b3yo:PKiUC7j9Vd" resolve="runtime" />
    </node>
  </node>
</model>

