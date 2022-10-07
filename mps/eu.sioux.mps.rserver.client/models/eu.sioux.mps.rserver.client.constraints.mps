<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2e1e7a5c-dc2d-42dc-ac0e-6ac65536a143(eu.sioux.mps.rserver.client.constraints)">
  <persistence version="9" />
  <languages>
    <use id="5dae8159-ab99-46bb-a40d-0cee30ee7018" name="jetbrains.mps.lang.constraints.rules.kinds" version="0" />
    <use id="ea3159bf-f48e-4720-bde2-86dba75f0d34" name="jetbrains.mps.lang.context.defs" version="0" />
    <use id="e51810c5-7308-4642-bcb6-469e61b5dd18" name="jetbrains.mps.lang.constraints.msg.specification" version="0" />
    <use id="134c38d4-e3af-4d9e-b069-1c7df0a4005d" name="jetbrains.mps.lang.constraints.rules.skeleton" version="0" />
    <use id="b3551702-269c-4f05-ba61-58060cef4292" name="jetbrains.mps.lang.rulesAndMessages" version="0" />
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="6" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <use id="3ad5badc-1d9c-461c-b7b1-fa2fcd0a0ae7" name="jetbrains.mps.lang.context" version="0" />
    <use id="ad93155d-79b2-4759-b10c-55123e763903" name="jetbrains.mps.lang.messages" version="0" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="74bf" ref="r:fbbd8fd4-3d94-4974-8b29-623f74c85604(eu.sioux.mps.rserver.client.structure)" implicit="true" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" implicit="true" />
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="8966504967485224688" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_contextNode" flags="nn" index="2rP1CM" />
      <concept id="1147467115080" name="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" flags="ng" index="EnEH3">
        <reference id="1147467295099" name="applicableProperty" index="EomxK" />
        <child id="1147468630220" name="propertyGetter" index="EtsB7" />
      </concept>
      <concept id="1147467790433" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyGetter" flags="in" index="Eqf_E" />
      <concept id="1147468365020" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_node" flags="nn" index="EsrRn" />
      <concept id="5564765827938091039" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_Scope" flags="ig" index="3dgokm" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="1213098023997" name="property" index="1MhHOB" />
        <child id="1213100494875" name="referent" index="1Mr941" />
      </concept>
      <concept id="1148687176410" name="jetbrains.mps.lang.constraints.structure.NodeReferentConstraint" flags="ng" index="1N5Pfh">
        <reference id="1148687202698" name="applicableLink" index="1N5Vy1" />
        <child id="1148687345559" name="searchScopeFactory" index="1N6uqs" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1176923520476" name="jetbrains.mps.baseLanguage.collections.structure.ExcludeOperation" flags="nn" index="66VNe" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
    </language>
  </registry>
  <node concept="1M2fIO" id="6_xZaXNvZnb">
    <property role="3GE5qa" value="Addition" />
    <ref role="1M2myG" to="74bf:6_xZaXNwdfE" resolve="NamedStructureClientAdditions" />
    <node concept="1N5Pfh" id="6_xZaXNvZnc" role="1Mr941">
      <ref role="1N5Vy1" to="74bf:6_xZaXNv8$Y" resolve="target" />
      <node concept="3dgokm" id="6_xZaXNvZo$" role="1N6uqs">
        <node concept="3clFbS" id="6_xZaXNvZoA" role="2VODD2">
          <node concept="3cpWs8" id="D9aCJ8KMqp" role="3cqZAp">
            <node concept="3cpWsn" id="D9aCJ8KMqs" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <node concept="2I9FWS" id="D9aCJ8KMqn" role="1tU5fm">
                <ref role="2I9WkF" to="tpce:1ob16QT2yIl" resolve="INamedStructureElement" />
              </node>
              <node concept="2ShNRf" id="D9aCJ8KMHi" role="33vP2m">
                <node concept="2T8Vx0" id="D9aCJ8KOit" role="2ShVmc">
                  <node concept="2I9FWS" id="D9aCJ8KOiv" role="2T96Bj">
                    <ref role="2I9WkF" to="tpce:1ob16QT2yIl" resolve="INamedStructureElement" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="D9aCJ8Lj2A" role="3cqZAp">
            <node concept="3cpWsn" id="D9aCJ8Lj2D" role="3cpWs9">
              <property role="TrG5h" value="concept" />
              <node concept="3Tqbb2" id="D9aCJ8Lj2$" role="1tU5fm">
                <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
              </node>
              <node concept="2OqwBi" id="D9aCJ8LqdT" role="33vP2m">
                <node concept="2OqwBi" id="D9aCJ8LqdU" role="2Oq$k0">
                  <node concept="2rP1CM" id="D9aCJ8LqdV" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="D9aCJ8LqdW" role="2OqNvi">
                    <node concept="1xMEDy" id="D9aCJ8LqdX" role="1xVPHs">
                      <node concept="chp4Y" id="D9aCJ8LqdY" role="ri$Ld">
                        <ref role="cht4Q" to="74bf:PKiUC77gMs" resolve="ConceptClient" />
                      </node>
                    </node>
                    <node concept="1xIGOp" id="D9aCJ8LqdZ" role="1xVPHs" />
                  </node>
                </node>
                <node concept="3TrEf2" id="D9aCJ8Lqe0" role="2OqNvi">
                  <ref role="3Tt5mk" to="74bf:PKiUC77gMt" resolve="concept" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="D9aCJ8KP4w" role="3cqZAp">
            <node concept="2OqwBi" id="D9aCJ8KQI9" role="3clFbG">
              <node concept="37vLTw" id="D9aCJ8KP4u" role="2Oq$k0">
                <ref role="3cqZAo" node="D9aCJ8KMqs" resolve="result" />
              </node>
              <node concept="TSZUe" id="D9aCJ8KTJc" role="2OqNvi">
                <node concept="37vLTw" id="D9aCJ8LBeI" role="25WWJ7">
                  <ref role="3cqZAo" node="D9aCJ8Lj2D" resolve="concept" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="D9aCJ8KUAz" role="3cqZAp">
            <node concept="2OqwBi" id="D9aCJ8KWgz" role="3clFbG">
              <node concept="37vLTw" id="D9aCJ8KUAx" role="2Oq$k0">
                <ref role="3cqZAo" node="D9aCJ8KMqs" resolve="result" />
              </node>
              <node concept="X8dFx" id="D9aCJ8KWYB" role="2OqNvi">
                <node concept="2OqwBi" id="D9aCJ8L2xC" role="25WWJ7">
                  <node concept="66VNe" id="D9aCJ8La3z" role="2OqNvi">
                    <node concept="2OqwBi" id="D9aCJ8LIHa" role="576Qk">
                      <node concept="2OqwBi" id="D9aCJ8LF$O" role="2Oq$k0">
                        <node concept="37vLTw" id="D9aCJ8LDON" role="2Oq$k0">
                          <ref role="3cqZAo" node="D9aCJ8Lj2D" resolve="concept" />
                        </node>
                        <node concept="3TrEf2" id="D9aCJ8LGsm" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpce:f_TJDff" resolve="extends" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="D9aCJ8LLEX" role="2OqNvi">
                        <ref role="37wK5l" to="tpcn:hEwILLM" resolve="getPropertyDeclarations" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="D9aCJ8LvgD" role="2Oq$k0">
                    <node concept="37vLTw" id="D9aCJ8LsRn" role="2Oq$k0">
                      <ref role="3cqZAo" node="D9aCJ8Lj2D" resolve="concept" />
                    </node>
                    <node concept="2qgKlT" id="D9aCJ8LyDR" role="2OqNvi">
                      <ref role="37wK5l" to="tpcn:hEwILLM" resolve="getPropertyDeclarations" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="D9aCJ8LN$9" role="3cqZAp">
            <node concept="2OqwBi" id="D9aCJ8LN$a" role="3clFbG">
              <node concept="37vLTw" id="D9aCJ8LN$b" role="2Oq$k0">
                <ref role="3cqZAo" node="D9aCJ8KMqs" resolve="result" />
              </node>
              <node concept="X8dFx" id="D9aCJ8LN$c" role="2OqNvi">
                <node concept="2OqwBi" id="D9aCJ8LN$d" role="25WWJ7">
                  <node concept="66VNe" id="D9aCJ8LN$e" role="2OqNvi">
                    <node concept="2OqwBi" id="D9aCJ8LN$f" role="576Qk">
                      <node concept="2OqwBi" id="D9aCJ8LN$g" role="2Oq$k0">
                        <node concept="37vLTw" id="D9aCJ8LN$h" role="2Oq$k0">
                          <ref role="3cqZAo" node="D9aCJ8Lj2D" resolve="concept" />
                        </node>
                        <node concept="3TrEf2" id="D9aCJ8LN$i" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpce:f_TJDff" resolve="extends" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="D9aCJ8LN$j" role="2OqNvi">
                        <ref role="37wK5l" to="tpcn:hEwILKK" resolve="getLinkDeclarations" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="D9aCJ8LTd1" role="2Oq$k0">
                    <node concept="37vLTw" id="D9aCJ8LN$l" role="2Oq$k0">
                      <ref role="3cqZAo" node="D9aCJ8Lj2D" resolve="concept" />
                    </node>
                    <node concept="2qgKlT" id="D9aCJ8LWBZ" role="2OqNvi">
                      <ref role="37wK5l" to="tpcn:hEwILKK" resolve="getLinkDeclarations" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="D9aCJ8KOCb" role="3cqZAp">
            <node concept="2YIFZM" id="D9aCJ8KOJU" role="3cqZAk">
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <node concept="37vLTw" id="D9aCJ8KOSF" role="37wK5m">
                <ref role="3cqZAo" node="D9aCJ8KMqs" resolve="result" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="67VaKSInKPA">
    <property role="3GE5qa" value="Addition" />
    <ref role="1M2myG" to="74bf:67VaKSImrr3" resolve="Project" />
    <node concept="EnEH3" id="67VaKSInKPB" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="Eqf_E" id="67VaKSInKQn" role="EtsB7">
        <node concept="3clFbS" id="67VaKSInKQo" role="2VODD2">
          <node concept="3clFbF" id="67VaKSInL0b" role="3cqZAp">
            <node concept="2OqwBi" id="67VaKSInLex" role="3clFbG">
              <node concept="EsrRn" id="67VaKSInL0E" role="2Oq$k0" />
              <node concept="3TrcHB" id="67VaKSInLrn" role="2OqNvi">
                <ref role="3TsBF5" to="74bf:67VaKSImrr6" resolve="relativePath" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

