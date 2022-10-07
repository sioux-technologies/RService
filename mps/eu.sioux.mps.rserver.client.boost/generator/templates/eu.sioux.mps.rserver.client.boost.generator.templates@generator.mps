<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d65b06cd-83bb-4750-83be-29a66f0d301c(eu.sioux.mps.rserver.client.boost.generator.templates@generator)">
  <persistence version="9" />
  <languages>
    <use id="8e62c50a-2264-437c-b726-52c736f68585" name="eu.sioux.mps.rserver.client" version="0" />
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="4" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="behy" ref="r:42c22ad4-093c-47e7-99ea-15e9505e4efc(eu.sioux.mps.rserver.client.boost.structure)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1202776937179" name="jetbrains.mps.lang.generator.structure.AbandonInput_RuleConsequence" flags="lg" index="b5Tf3" />
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
      </concept>
      <concept id="1177093525992" name="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence" flags="lg" index="gft3U">
        <child id="1177093586806" name="templateNode" index="gfFT$" />
      </concept>
      <concept id="1112730859144" name="jetbrains.mps.lang.generator.structure.TemplateSwitch" flags="ig" index="jVnub">
        <child id="1168558750579" name="defaultConsequence" index="jxRDz" />
        <child id="1167340453568" name="reductionMappingRule" index="3aUrZf" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj" />
      <concept id="1722980698497626400" name="jetbrains.mps.lang.generator.structure.ITemplateCall" flags="ng" index="v9R3L">
        <reference id="1722980698497626483" name="template" index="v9R2y" />
      </concept>
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <property id="1167272244852" name="applyToConceptInheritors" index="36QftV" />
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="982871510068000147" name="jetbrains.mps.lang.generator.structure.TemplateSwitchMacro" flags="lg" index="1sPUBX" />
      <concept id="1167770111131" name="jetbrains.mps.lang.generator.structure.ReferenceMacro_GetReferent" flags="in" index="3$xsQk" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
      <concept id="8900764248744213868" name="jetbrains.mps.lang.generator.structure.InlineTemplateWithContext_RuleConsequence" flags="lg" index="1Koe21">
        <child id="8900764248744213871" name="contentNode" index="1Koe22" />
      </concept>
      <concept id="1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" flags="ln" index="1WS0z7">
        <child id="1167952069335" name="sourceNodesQuery" index="3Jn$fo" />
      </concept>
      <concept id="1088761943574" name="jetbrains.mps.lang.generator.structure.ReferenceMacro" flags="ln" index="1ZhdrF">
        <child id="1167770376702" name="referentFunction" index="3$ytzL" />
      </concept>
    </language>
    <language id="8e62c50a-2264-437c-b726-52c736f68585" name="eu.sioux.mps.rserver.client">
      <concept id="968357113523731900" name="eu.sioux.mps.rserver.client.structure.InterfaceClient" flags="ng" index="afrom">
        <reference id="968357113523731914" name="interface" index="afrpw" />
      </concept>
      <concept id="968357113520524946" name="eu.sioux.mps.rserver.client.structure.ClientGenerator" flags="ng" index="arkkS">
        <property id="968357113520654206" name="baseTargetNameSpace" index="arONk" />
        <child id="968357113520524947" name="content" index="arkkT" />
      </concept>
      <concept id="968357113520524444" name="eu.sioux.mps.rserver.client.structure.ConceptClient" flags="ng" index="arksQ">
        <reference id="968357113520524445" name="concept" index="arksR" />
      </concept>
      <concept id="968357113520635944" name="eu.sioux.mps.rserver.client.structure.EnumClient" flags="ng" index="arCI2">
        <reference id="968357113520635947" name="target" index="arCI1" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1171323947159" name="jetbrains.mps.lang.smodel.structure.Model_NodesOperation" flags="nn" index="2SmgA7">
        <child id="1758937410080001570" name="conceptArgument" index="1dBWTz" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049745" name="jetbrains.mps.lang.core.structure.LinkAttribute" flags="ng" index="A9Btn">
        <property id="1757699476691236116" name="role_DebugInfo" index="2qtEX8" />
        <property id="1341860900488019036" name="linkId" index="P3scX" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="bUwia" id="5w895fhuxbF">
    <property role="TrG5h" value="main" />
    <node concept="3aamgX" id="5w895fhuxcy" role="3acgRq">
      <ref role="30HIoZ" to="behy:5w895fhuxbG" resolve="AllFromModel" />
      <node concept="1Koe21" id="5w895fhuxcA" role="1lVwrX">
        <node concept="arkkS" id="5w895fhuxcG" role="1Koe22">
          <property role="TrG5h" value="a" />
          <property role="arONk" value="a" />
          <node concept="arksQ" id="5w895fhuxdu" role="arkkT">
            <ref role="arksR" to="behy:5w895fhuxbG" resolve="AllFromModel" />
            <node concept="raruj" id="5w895fhuxdx" role="lGtFl" />
            <node concept="1WS0z7" id="5w895fhuxd_" role="lGtFl">
              <node concept="3JmXsc" id="5w895fhuxdA" role="3Jn$fo">
                <node concept="3clFbS" id="5w895fhuxdB" role="2VODD2">
                  <node concept="3clFbF" id="5w895fhuxgk" role="3cqZAp">
                    <node concept="2OqwBi" id="5w895fhuy7i" role="3clFbG">
                      <node concept="2OqwBi" id="5w895fhuxI_" role="2Oq$k0">
                        <node concept="2OqwBi" id="5w895fhuxrL" role="2Oq$k0">
                          <node concept="30H73N" id="5w895fhuxgj" role="2Oq$k0" />
                          <node concept="3TrEf2" id="5w895fhuxzg" role="2OqNvi">
                            <ref role="3Tt5mk" to="behy:PKiUC7lbTY" resolve="structureElement" />
                          </node>
                        </node>
                        <node concept="I4A8Y" id="5w895fhuxWb" role="2OqNvi" />
                      </node>
                      <node concept="2SmgA7" id="5w895fhuyd9" role="2OqNvi">
                        <node concept="chp4Y" id="5w895fhuzs9" role="1dBWTz">
                          <ref role="cht4Q" to="tpce:1ob16QT2yIl" resolve="INamedStructureElement" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1sPUBX" id="5w895fhu$5H" role="lGtFl">
              <ref role="v9R2y" node="5w895fhuzLL" resolve="clientImplementation" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="jVnub" id="5w895fhuzLL">
    <property role="TrG5h" value="clientImplementation" />
    <node concept="3aamgX" id="5w895fhuzLM" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
      <node concept="gft3U" id="5w895fhuzM4" role="1lVwrX">
        <node concept="arksQ" id="5w895fhuzMa" role="gfFT$">
          <ref role="arksR" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
          <node concept="1ZhdrF" id="5w895fhuzMc" role="lGtFl">
            <property role="2qtEX8" value="concept" />
            <property role="P3scX" value="8e62c50a-2264-437c-b726-52c736f68585/968357113520524444/968357113520524445" />
            <node concept="3$xsQk" id="5w895fhuzMd" role="3$ytzL">
              <node concept="3clFbS" id="5w895fhuzMe" role="2VODD2">
                <node concept="3clFbF" id="5w895fhuzMM" role="3cqZAp">
                  <node concept="30H73N" id="5w895fhuzML" role="3clFbG" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="5w895fhuzLQ" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
      <node concept="gft3U" id="5w895fhuzQO" role="1lVwrX">
        <node concept="afrom" id="5w895fhuzQU" role="gfFT$">
          <ref role="afrpw" to="tpce:4Xny4S7K8CL" resolve="AggregationLinkDeclarationScopeKind" />
          <node concept="1ZhdrF" id="5w895fhuzQW" role="lGtFl">
            <property role="2qtEX8" value="interface" />
            <property role="P3scX" value="8e62c50a-2264-437c-b726-52c736f68585/968357113523731900/968357113523731914" />
            <node concept="3$xsQk" id="5w895fhuzQX" role="3$ytzL">
              <node concept="3clFbS" id="5w895fhuzQY" role="2VODD2">
                <node concept="3clFbF" id="5w895fhuzRy" role="3cqZAp">
                  <node concept="30H73N" id="5w895fhuzRx" role="3clFbG" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="5w895fhuzLW" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tpce:2TR3acGo7Lv" resolve="EnumerationDeclaration" />
      <node concept="gft3U" id="5w895fhuzVs" role="1lVwrX">
        <node concept="arCI2" id="5w895fhuzVy" role="gfFT$">
          <ref role="arCI1" to="tpce:3Ftr4R6BFyf" resolve="Cardinality" />
          <node concept="1ZhdrF" id="5w895fhuzV$" role="lGtFl">
            <property role="2qtEX8" value="target" />
            <property role="P3scX" value="8e62c50a-2264-437c-b726-52c736f68585/968357113520635944/968357113520635947" />
            <node concept="3$xsQk" id="5w895fhuzV_" role="3$ytzL">
              <node concept="3clFbS" id="5w895fhuzVA" role="2VODD2">
                <node concept="3clFbF" id="5w895fhuzWa" role="3cqZAp">
                  <node concept="30H73N" id="5w895fhuzW9" role="3clFbG" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="b5Tf3" id="5w895fhwWT$" role="jxRDz" />
  </node>
</model>

