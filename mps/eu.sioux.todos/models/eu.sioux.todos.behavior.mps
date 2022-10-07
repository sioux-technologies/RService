<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2093d48d-49d8-4488-aa70-b6e0d19be51c(eu.sioux.todos.behavior)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="5tb1" ref="r:8f01b14c-8e22-49bf-9fe7-81422279fa2c(eu.sioux.todos.structure)" implicit="true" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
    </language>
  </registry>
  <node concept="13h7C7" id="4j20RvkqDLV">
    <ref role="13h7C2" to="5tb1:6ZbxOp2_Aqd" resolve="Todo" />
    <node concept="13hLZK" id="4j20RvkqDLW" role="13h7CW">
      <node concept="3clFbS" id="4j20RvkqDLX" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="59c_d_usyeq">
    <ref role="13h7C2" to="5tb1:6ZbxOp2_Aqc" resolve="TodoList" />
    <node concept="13hLZK" id="59c_d_usyer" role="13h7CW">
      <node concept="3clFbS" id="59c_d_usyes" role="2VODD2">
        <node concept="3clFbF" id="59c_d_usyeA" role="3cqZAp">
          <node concept="2OqwBi" id="59c_d_usyn6" role="3clFbG">
            <node concept="liA8E" id="59c_d_usyui" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getRoleInParent()" resolve="getRoleInParent" />
            </node>
            <node concept="2JrnkZ" id="59c_d_usynb" role="2Oq$k0">
              <node concept="13iPFW" id="59c_d_usye_" role="2JrQYb" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

