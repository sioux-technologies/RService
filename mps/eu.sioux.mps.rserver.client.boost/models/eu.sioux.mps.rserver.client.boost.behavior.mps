<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:bfa0a90b-d7a8-4507-bf46-72990029419d(eu.sioux.mps.rserver.client.boost.behavior)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="deao" ref="r:cd77da81-ae35-41e9-b4b1-1400d056dac8(eu.sioux.mps.rserver.client.behavior)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="behy" ref="r:42c22ad4-093c-47e7-99ea-15e9505e4efc(eu.sioux.mps.rserver.client.boost.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1171323947159" name="jetbrains.mps.lang.smodel.structure.Model_NodesOperation" flags="nn" index="2SmgA7">
        <child id="1758937410080001570" name="conceptArgument" index="1dBWTz" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
    </language>
  </registry>
  <node concept="13h7C7" id="5w895fhuAED">
    <ref role="13h7C2" to="behy:5w895fhuxbG" resolve="AllFromModel" />
    <node concept="13i0hz" id="5w895fhuFLM" role="13h7CS">
      <property role="TrG5h" value="Targets" />
      <ref role="13i0hy" to="deao:5w895fhuANt" resolve="Targets" />
      <node concept="3clFbS" id="5w895fhuFLP" role="3clF47">
        <node concept="3clFbF" id="5w895fhuGy6" role="3cqZAp">
          <node concept="2OqwBi" id="5w895fhuHkj" role="3clFbG">
            <node concept="2OqwBi" id="5w895fhuGZ2" role="2Oq$k0">
              <node concept="2OqwBi" id="5w895fhuGFj" role="2Oq$k0">
                <node concept="13iPFW" id="5w895fhuGy4" role="2Oq$k0" />
                <node concept="3TrEf2" id="5w895fhuGPA" role="2OqNvi">
                  <ref role="3Tt5mk" to="behy:PKiUC7lbTY" resolve="structureElement" />
                </node>
              </node>
              <node concept="I4A8Y" id="5w895fhuHcS" role="2OqNvi" />
            </node>
            <node concept="2SmgA7" id="5w895fhuHsg" role="2OqNvi">
              <node concept="chp4Y" id="5w895fhuHz6" role="1dBWTz">
                <ref role="cht4Q" to="tpce:1ob16QT2yIl" resolve="INamedStructureElement" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="5w895fhuFM2" role="3clF45">
        <node concept="3Tqbb2" id="5w895fhuFM3" role="A3Ik2">
          <ref role="ehGHo" to="tpce:1ob16QT2yIl" resolve="INamedStructureElement" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5w895fhuFM4" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="5w895fhuAEE" role="13h7CW">
      <node concept="3clFbS" id="5w895fhuAEF" role="2VODD2" />
    </node>
  </node>
</model>

