<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:58ad2862-69e8-4ad6-947b-993c591a4cf4(eu.sioux.mps.rserver.client.generator.templates@generator)">
  <persistence version="9" />
  <languages>
    <use id="990507d3-3527-4c54-bfe9-0ca3c9c6247a" name="com.dslfoundry.plaintextgen" version="0" />
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="4" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="2" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="74bf" ref="r:fbbd8fd4-3d94-4974-8b29-623f74c85604(eu.sioux.mps.rserver.client.structure)" />
    <import index="9q87" ref="r:29ba4b61-940f-4673-bbee-df3c9d0bed29(eu.sioux.mps.rserver.client.generator.utility)" />
    <import index="deao" ref="r:cd77da81-ae35-41e9-b4b1-1400d056dac8(eu.sioux.mps.rserver.client.behavior)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" implicit="true" />
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114706874351" name="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro" flags="ln" index="29HgVG">
        <child id="1168024447342" name="sourceNodeQuery" index="3NFExx" />
      </concept>
      <concept id="1114729360583" name="jetbrains.mps.lang.generator.structure.CopySrcListMacro" flags="ln" index="2b32R4">
        <child id="1168278589236" name="sourceNodesQuery" index="2P8S$" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1177093525992" name="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence" flags="lg" index="gft3U">
        <child id="1177093586806" name="templateNode" index="gfFT$" />
      </concept>
      <concept id="5015072279636592410" name="jetbrains.mps.lang.generator.structure.VarMacro_ValueQuery" flags="in" index="2jfdEK" />
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1167168920554" name="jetbrains.mps.lang.generator.structure.BaseMappingRule_Condition" flags="in" index="30G5F_" />
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
        <child id="1167169362365" name="conditionFunction" index="30HLyM" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1048903277984099206" name="jetbrains.mps.lang.generator.structure.VarDeclaration" flags="ng" index="1ps_xZ">
        <child id="1048903277984099210" name="value" index="1ps_xN" />
      </concept>
      <concept id="1048903277984099198" name="jetbrains.mps.lang.generator.structure.VarMacro2" flags="lg" index="1ps_y7">
        <child id="1048903277984099213" name="variables" index="1ps_xO" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167945743726" name="jetbrains.mps.lang.generator.structure.IfMacro_Condition" flags="in" index="3IZrLx" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="in" index="3NFfHV" />
      <concept id="1118773211870" name="jetbrains.mps.lang.generator.structure.IfMacro" flags="ln" index="1W57fq">
        <child id="1167945861827" name="conditionFunction" index="3IZSJc" />
      </concept>
      <concept id="1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" flags="ln" index="1WS0z7">
        <child id="1167952069335" name="sourceNodesQuery" index="3Jn$fo" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext">
      <concept id="1216860049635" name="jetbrains.mps.lang.generator.generationContext.structure.TemplateFunctionParameter_generationContext" flags="nn" index="1iwH7S" />
      <concept id="1048903277984174662" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_VarRef2" flags="nn" index="1psM6Z">
        <reference id="1048903277984174663" name="vardecl" index="1psM6Y" />
      </concept>
    </language>
    <language id="990507d3-3527-4c54-bfe9-0ca3c9c6247a" name="com.dslfoundry.plaintextgen">
      <concept id="5082088080656902716" name="com.dslfoundry.plaintextgen.structure.NewlineMarker" flags="ng" index="2EixSi" />
      <concept id="1145195647825954804" name="com.dslfoundry.plaintextgen.structure.word" flags="ng" index="356sEF" />
      <concept id="1145195647825954799" name="com.dslfoundry.plaintextgen.structure.Line" flags="ng" index="356sEK">
        <child id="5082088080656976323" name="newlineMarker" index="2EinRH" />
        <child id="1145195647825954802" name="words" index="356sEH" />
      </concept>
      <concept id="1145195647825954793" name="com.dslfoundry.plaintextgen.structure.SpaceIndentedText" flags="ng" index="356sEQ">
        <property id="5198309202558919052" name="indent" index="333NGx" />
      </concept>
      <concept id="1145195647825954788" name="com.dslfoundry.plaintextgen.structure.TextgenText" flags="ng" index="356sEV">
        <property id="5407518469085446424" name="ext" index="3Le9LX" />
        <child id="1145195647826100986" name="content" index="356KY_" />
      </concept>
      <concept id="1145195647826084325" name="com.dslfoundry.plaintextgen.structure.VerticalLines" flags="ng" index="356WMU" />
      <concept id="7214912913997260680" name="com.dslfoundry.plaintextgen.structure.IVerticalGroup" flags="ng" index="383Yap">
        <child id="7214912913997260696" name="lines" index="383Ya9" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="4705942098322609812" name="jetbrains.mps.lang.smodel.structure.EnumMember_IsOperation" flags="ng" index="21noJN">
        <child id="4705942098322609813" name="member" index="21noJM" />
      </concept>
      <concept id="4705942098322467729" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="ng" index="21nZrQ">
        <reference id="4705942098322467736" name="decl" index="21nZrZ" />
      </concept>
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="3562215692195599741" name="jetbrains.mps.lang.smodel.structure.SLinkImplicitSelect" flags="nn" index="13MTOL">
        <reference id="3562215692195600259" name="link" index="13MTZf" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="name_DebugInfo" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="1176923520476" name="jetbrains.mps.baseLanguage.collections.structure.ExcludeOperation" flags="nn" index="66VNe" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1180964022718" name="jetbrains.mps.baseLanguage.collections.structure.ConcatOperation" flags="nn" index="3QWeyG" />
      <concept id="1178894719932" name="jetbrains.mps.baseLanguage.collections.structure.DistinctOperation" flags="nn" index="1VAtEI" />
    </language>
  </registry>
  <node concept="bUwia" id="PKiUC77gMr">
    <property role="TrG5h" value="main" />
    <node concept="3aamgX" id="6_xZaXN$w5O" role="3acgRq">
      <ref role="30HIoZ" to="74bf:6_xZaXN$w5c" resolve="TextGenAddition" />
      <node concept="gft3U" id="6_xZaXN$w5U" role="1lVwrX">
        <node concept="356WMU" id="6_xZaXN$w62" role="gfFT$">
          <node concept="29HgVG" id="6_xZaXN$w66" role="lGtFl">
            <node concept="3NFfHV" id="6_xZaXN$w67" role="3NFExx">
              <node concept="3clFbS" id="6_xZaXN$w68" role="2VODD2">
                <node concept="3clFbF" id="6_xZaXN$w6e" role="3cqZAp">
                  <node concept="2OqwBi" id="6_xZaXN$w69" role="3clFbG">
                    <node concept="3TrEf2" id="6_xZaXN$w6c" role="2OqNvi">
                      <ref role="3Tt5mk" to="74bf:6_xZaXN$w5d" resolve="text" />
                    </node>
                    <node concept="30H73N" id="6_xZaXN$w6d" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3lhOvk" id="PKiUC77JlZ" role="3lj3bC">
      <ref role="30HIoZ" to="74bf:PKiUC77G0C" resolve="EnumClient" />
      <ref role="3lhOvi" node="PKiUC77Jm1" resolve="EnumClient" />
    </node>
    <node concept="3lhOvk" id="PKiUC78gGo" role="3lj3bC">
      <ref role="30HIoZ" to="74bf:PKiUC77gMs" resolve="ConceptClient" />
      <ref role="3lhOvi" node="PKiUC78gGr" resolve="ConceptClient" />
    </node>
    <node concept="3lhOvk" id="PKiUC7jwg7" role="3lj3bC">
      <ref role="30HIoZ" to="74bf:PKiUC7jvQW" resolve="InterfaceClient" />
      <ref role="3lhOvi" node="PKiUC7jwgd" resolve="interfaceClient" />
    </node>
    <node concept="3lhOvk" id="PKiUC78PO$" role="3lj3bC">
      <ref role="30HIoZ" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
      <ref role="3lhOvi" node="PKiUC78POC" resolve="Initialize" />
    </node>
    <node concept="3lhOvk" id="PKiUC78YY$" role="3lj3bC">
      <ref role="30HIoZ" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
      <ref role="3lhOvi" node="PKiUC78YYH" resolve="project" />
      <node concept="30G5F_" id="$4Ynxqy$fP" role="30HLyM">
        <node concept="3clFbS" id="$4Ynxqy$fQ" role="2VODD2">
          <node concept="3clFbF" id="$4Ynxqy$jK" role="3cqZAp">
            <node concept="2OqwBi" id="$4Ynxqy$y2" role="3clFbG">
              <node concept="30H73N" id="$4Ynxqy$jJ" role="2Oq$k0" />
              <node concept="3TrcHB" id="$4Ynxqy$Kv" role="2OqNvi">
                <ref role="3TsBF5" to="74bf:$4Ynxqyrzt" resolve="createProjectFile" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="356sEV" id="PKiUC77Jm1">
    <property role="TrG5h" value="EnumClient" />
    <property role="3Le9LX" value=".cs" />
    <node concept="356WMU" id="PKiUC77LLs" role="356KY_">
      <node concept="356sEK" id="PKiUC77LLt" role="383Ya9">
        <node concept="356sEF" id="PKiUC77LLu" role="356sEH">
          <property role="TrG5h" value="namespace " />
        </node>
        <node concept="356sEF" id="PKiUC7aG1a" role="356sEH">
          <property role="TrG5h" value="Sioux.RClient.Example.Todos" />
          <node concept="17Uvod" id="PKiUC7aG1d" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="PKiUC7aG1e" role="3zH0cK">
              <node concept="3clFbS" id="PKiUC7aG1f" role="2VODD2">
                <node concept="3clFbF" id="PKiUC7aG5O" role="3cqZAp">
                  <node concept="2OqwBi" id="PKiUC7aGi6" role="3clFbG">
                    <node concept="30H73N" id="PKiUC7aG5N" role="2Oq$k0" />
                    <node concept="2qgKlT" id="PKiUC7aGqS" role="2OqNvi">
                      <ref role="37wK5l" to="deao:PKiUC7a_Nb" resolve="GetTargetCodeNamespace" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2EixSi" id="PKiUC77LLw" role="2EinRH" />
      </node>
      <node concept="356sEK" id="PKiUC77LLx" role="383Ya9">
        <node concept="356sEF" id="PKiUC77LLy" role="356sEH">
          <property role="TrG5h" value="{" />
        </node>
        <node concept="2EixSi" id="PKiUC77LL$" role="2EinRH" />
      </node>
      <node concept="356sEQ" id="PKiUC77LLD" role="383Ya9">
        <property role="333NGx" value="    " />
        <node concept="356sEK" id="PKiUC77LL_" role="383Ya9">
          <node concept="356sEF" id="PKiUC77LLA" role="356sEH">
            <property role="TrG5h" value="public enum " />
          </node>
          <node concept="356sEF" id="PKiUC77LVX" role="356sEH">
            <property role="TrG5h" value="Priority" />
            <node concept="17Uvod" id="PKiUC77LW0" role="lGtFl">
              <property role="2qtEX9" value="name" />
              <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
              <node concept="3zFVjK" id="PKiUC77LW1" role="3zH0cK">
                <node concept="3clFbS" id="PKiUC77LW2" role="2VODD2">
                  <node concept="3clFbF" id="PKiUC77LWq" role="3cqZAp">
                    <node concept="2OqwBi" id="PKiUC77Mue" role="3clFbG">
                      <node concept="2OqwBi" id="PKiUC77M8G" role="2Oq$k0">
                        <node concept="30H73N" id="PKiUC77LWp" role="2Oq$k0" />
                        <node concept="3TrEf2" id="PKiUC77Mhu" role="2OqNvi">
                          <ref role="3Tt5mk" to="74bf:PKiUC77G0F" resolve="target" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="PKiUC77MLP" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2EixSi" id="PKiUC77LLC" role="2EinRH" />
        </node>
        <node concept="356sEK" id="PKiUC77LLE" role="383Ya9">
          <node concept="356sEF" id="PKiUC77LLF" role="356sEH">
            <property role="TrG5h" value="{" />
          </node>
          <node concept="2EixSi" id="PKiUC77LLH" role="2EinRH" />
        </node>
        <node concept="356sEQ" id="PKiUC77LLM" role="383Ya9">
          <property role="333NGx" value="    " />
          <node concept="356sEK" id="PKiUC77LLI" role="383Ya9">
            <node concept="356sEF" id="PKiUC77MR0" role="356sEH">
              <property role="TrG5h" value="NORMAL" />
              <node concept="17Uvod" id="PKiUC77ORt" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="PKiUC77ORu" role="3zH0cK">
                  <node concept="3clFbS" id="PKiUC77ORv" role="2VODD2">
                    <node concept="3clFbF" id="PKiUC77ORR" role="3cqZAp">
                      <node concept="2OqwBi" id="PKiUC77P62" role="3clFbG">
                        <node concept="30H73N" id="PKiUC77ORQ" role="2Oq$k0" />
                        <node concept="3TrcHB" id="PKiUC77Pn_" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEF" id="PKiUC77MR1" role="356sEH">
              <property role="TrG5h" value="," />
            </node>
            <node concept="2EixSi" id="PKiUC77LLL" role="2EinRH" />
            <node concept="1WS0z7" id="PKiUC77MR6" role="lGtFl">
              <node concept="3JmXsc" id="PKiUC77MR7" role="3Jn$fo">
                <node concept="3clFbS" id="PKiUC77MR8" role="2VODD2">
                  <node concept="3SKdUt" id="PKiUC785Qd" role="3cqZAp">
                    <node concept="1PaTwC" id="PKiUC785Qe" role="1aUNEU">
                      <node concept="3oM_SD" id="PKiUC785QY" role="1PaTwD">
                        <property role="3oM_SC" value="make" />
                      </node>
                      <node concept="3oM_SD" id="PKiUC785Zs" role="1PaTwD">
                        <property role="3oM_SC" value="sure" />
                      </node>
                      <node concept="3oM_SD" id="PKiUC785ZD" role="1PaTwD">
                        <property role="3oM_SC" value="that" />
                      </node>
                      <node concept="3oM_SD" id="PKiUC785ZR" role="1PaTwD">
                        <property role="3oM_SC" value="the" />
                      </node>
                      <node concept="3oM_SD" id="PKiUC7863Q" role="1PaTwD">
                        <property role="3oM_SC" value="default" />
                      </node>
                      <node concept="3oM_SD" id="PKiUC7864m" role="1PaTwD">
                        <property role="3oM_SC" value="member" />
                      </node>
                      <node concept="3oM_SD" id="PKiUC7864V" role="1PaTwD">
                        <property role="3oM_SC" value="is" />
                      </node>
                      <node concept="3oM_SD" id="PKiUC78659" role="1PaTwD">
                        <property role="3oM_SC" value="the" />
                      </node>
                      <node concept="3oM_SD" id="PKiUC7865E" role="1PaTwD">
                        <property role="3oM_SC" value="first" />
                      </node>
                      <node concept="3oM_SD" id="PKiUC78660" role="1PaTwD">
                        <property role="3oM_SC" value="member," />
                      </node>
                      <node concept="3oM_SD" id="PKiUC7866V" role="1PaTwD">
                        <property role="3oM_SC" value="this" />
                      </node>
                      <node concept="3oM_SD" id="PKiUC7867h" role="1PaTwD">
                        <property role="3oM_SC" value="is" />
                      </node>
                      <node concept="3oM_SD" id="PKiUC7867O" role="1PaTwD">
                        <property role="3oM_SC" value="necessary" />
                      </node>
                      <node concept="3oM_SD" id="PKiUC7868m" role="1PaTwD">
                        <property role="3oM_SC" value="from" />
                      </node>
                      <node concept="3oM_SD" id="PKiUC7868J" role="1PaTwD">
                        <property role="3oM_SC" value="C#" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="PKiUC77PMA" role="3cqZAp">
                    <node concept="2OqwBi" id="PKiUC77SOV" role="3clFbG">
                      <node concept="2OqwBi" id="PKiUC77UNF" role="2Oq$k0">
                        <node concept="2OqwBi" id="PKiUC77Qs4" role="2Oq$k0">
                          <node concept="2OqwBi" id="PKiUC77Q3l" role="2Oq$k0">
                            <node concept="30H73N" id="PKiUC77PM_" role="2Oq$k0" />
                            <node concept="3TrEf2" id="PKiUC77Qe0" role="2OqNvi">
                              <ref role="3Tt5mk" to="74bf:PKiUC77G0F" resolve="target" />
                            </node>
                          </node>
                          <node concept="3Tsc0h" id="PKiUC77QLu" role="2OqNvi">
                            <ref role="3TtcxE" to="tpce:2TR3acGo7N1" resolve="members" />
                          </node>
                        </node>
                        <node concept="3zZkjj" id="PKiUC77X56" role="2OqNvi">
                          <node concept="1bVj0M" id="PKiUC77X58" role="23t8la">
                            <node concept="3clFbS" id="PKiUC77X59" role="1bW5cS">
                              <node concept="3clFbF" id="PKiUC77XhN" role="3cqZAp">
                                <node concept="3clFbC" id="PKiUC77XzE" role="3clFbG">
                                  <node concept="2OqwBi" id="PKiUC77YAv" role="3uHU7w">
                                    <node concept="2OqwBi" id="PKiUC77Y4W" role="2Oq$k0">
                                      <node concept="30H73N" id="PKiUC77XJk" role="2Oq$k0" />
                                      <node concept="3TrEf2" id="PKiUC77YiK" role="2OqNvi">
                                        <ref role="3Tt5mk" to="74bf:PKiUC77G0F" resolve="target" />
                                      </node>
                                    </node>
                                    <node concept="3TrEf2" id="PKiUC77YZc" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpce:VFd4XzZw5G" resolve="defaultMember" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="PKiUC77XhM" role="3uHU7B">
                                    <ref role="3cqZAo" node="PKiUC77X5a" resolve="it" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="PKiUC77X5a" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="PKiUC77X5b" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3QWeyG" id="PKiUC77UI$" role="2OqNvi">
                        <node concept="2OqwBi" id="PKiUC7820L" role="576Qk">
                          <node concept="2OqwBi" id="PKiUC77Z4U" role="2Oq$k0">
                            <node concept="2OqwBi" id="PKiUC77Z4V" role="2Oq$k0">
                              <node concept="30H73N" id="PKiUC77Z4W" role="2Oq$k0" />
                              <node concept="3TrEf2" id="PKiUC77Z4X" role="2OqNvi">
                                <ref role="3Tt5mk" to="74bf:PKiUC77G0F" resolve="target" />
                              </node>
                            </node>
                            <node concept="3Tsc0h" id="PKiUC77Z4Y" role="2OqNvi">
                              <ref role="3TtcxE" to="tpce:2TR3acGo7N1" resolve="members" />
                            </node>
                          </node>
                          <node concept="3zZkjj" id="PKiUC784qi" role="2OqNvi">
                            <node concept="1bVj0M" id="PKiUC784qk" role="23t8la">
                              <node concept="3clFbS" id="PKiUC784ql" role="1bW5cS">
                                <node concept="3clFbF" id="PKiUC784zN" role="3cqZAp">
                                  <node concept="3y3z36" id="PKiUC784T8" role="3clFbG">
                                    <node concept="37vLTw" id="PKiUC784zM" role="3uHU7B">
                                      <ref role="3cqZAo" node="PKiUC784qm" resolve="it" />
                                    </node>
                                    <node concept="2OqwBi" id="PKiUC7851t" role="3uHU7w">
                                      <node concept="2OqwBi" id="PKiUC7851u" role="2Oq$k0">
                                        <node concept="30H73N" id="PKiUC7851v" role="2Oq$k0" />
                                        <node concept="3TrEf2" id="PKiUC7851w" role="2OqNvi">
                                          <ref role="3Tt5mk" to="74bf:PKiUC77G0F" resolve="target" />
                                        </node>
                                      </node>
                                      <node concept="3TrEf2" id="PKiUC7851x" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tpce:VFd4XzZw5G" resolve="defaultMember" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="PKiUC784qm" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="PKiUC784qn" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="356sEK" id="PKiUC77LLV" role="383Ya9">
          <node concept="356sEF" id="PKiUC77LLW" role="356sEH">
            <property role="TrG5h" value="}" />
          </node>
          <node concept="2EixSi" id="PKiUC77LLY" role="2EinRH" />
        </node>
      </node>
      <node concept="356sEK" id="PKiUC77LLZ" role="383Ya9">
        <node concept="356sEF" id="PKiUC77LM0" role="356sEH">
          <property role="TrG5h" value="}" />
        </node>
        <node concept="2EixSi" id="PKiUC77LM2" role="2EinRH" />
      </node>
    </node>
    <node concept="n94m4" id="PKiUC77Jm3" role="lGtFl">
      <ref role="n9lRv" to="74bf:PKiUC77G0C" resolve="EnumClient" />
    </node>
    <node concept="17Uvod" id="PKiUC77Jm5" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="PKiUC77Jm6" role="3zH0cK">
        <node concept="3clFbS" id="PKiUC77Jm7" role="2VODD2">
          <node concept="3clFbF" id="PKiUC77JqH" role="3cqZAp">
            <node concept="2OqwBi" id="5w895fhxg84" role="3clFbG">
              <node concept="30H73N" id="5w895fhxfVN" role="2Oq$k0" />
              <node concept="2qgKlT" id="5w895fhxghx" role="2OqNvi">
                <ref role="37wK5l" to="deao:5w895fhxaq_" resolve="GenerateFilename" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="356sEV" id="PKiUC78gGr">
    <property role="TrG5h" value="ConceptClient" />
    <property role="3Le9LX" value=".cs" />
    <node concept="356WMU" id="PKiUC78hS4" role="356KY_">
      <node concept="356sEK" id="PKiUC78hS5" role="383Ya9">
        <node concept="356sEF" id="PKiUC78hS6" role="356sEH">
          <property role="TrG5h" value="using JetBrains.Collections.Viewable;" />
        </node>
        <node concept="2EixSi" id="PKiUC78hS8" role="2EinRH" />
      </node>
      <node concept="356sEK" id="PKiUC78hS9" role="383Ya9">
        <node concept="356sEF" id="PKiUC78hSa" role="356sEH">
          <property role="TrG5h" value="using JetBrains.Lifetimes;" />
        </node>
        <node concept="2EixSi" id="PKiUC78hSc" role="2EinRH" />
      </node>
      <node concept="356sEK" id="PKiUC78hSd" role="383Ya9">
        <node concept="356sEF" id="PKiUC78hSe" role="356sEH">
          <property role="TrG5h" value="using Sioux.RClient.Generated.Client;" />
        </node>
        <node concept="2EixSi" id="PKiUC78hSg" role="2EinRH" />
      </node>
      <node concept="356sEK" id="PKiUC78hSh" role="383Ya9">
        <node concept="356sEF" id="PKiUC78hSi" role="356sEH">
          <property role="TrG5h" value="using Sioux.RClient.Runtime;" />
        </node>
        <node concept="2EixSi" id="PKiUC78hSk" role="2EinRH" />
      </node>
      <node concept="356sEK" id="67VaKSImFk$" role="383Ya9">
        <node concept="356sEF" id="67VaKSImFk_" role="356sEH">
          <property role="TrG5h" value="using " />
        </node>
        <node concept="356sEF" id="67VaKSIohOc" role="356sEH">
          <property role="TrG5h" value="namespace" />
          <node concept="17Uvod" id="67VaKSIok2k" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="67VaKSIok2n" role="3zH0cK">
              <node concept="3clFbS" id="67VaKSIok2o" role="2VODD2">
                <node concept="3clFbF" id="67VaKSIok2u" role="3cqZAp">
                  <node concept="2OqwBi" id="67VaKSIok2p" role="3clFbG">
                    <node concept="3TrcHB" id="67VaKSIok2s" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                    <node concept="30H73N" id="67VaKSIok2t" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="356sEF" id="67VaKSIohOd" role="356sEH">
          <property role="TrG5h" value=";" />
        </node>
        <node concept="2EixSi" id="67VaKSImFkA" role="2EinRH" />
        <node concept="1WS0z7" id="67VaKSImGB9" role="lGtFl">
          <node concept="3JmXsc" id="67VaKSImGBa" role="3Jn$fo">
            <node concept="3clFbS" id="67VaKSImGBb" role="2VODD2">
              <node concept="3clFbF" id="67VaKSImGDR" role="3cqZAp">
                <node concept="2OqwBi" id="67VaKSImNLR" role="3clFbG">
                  <node concept="2OqwBi" id="67VaKSIojJy" role="2Oq$k0">
                    <node concept="2OqwBi" id="67VaKSImIiz" role="2Oq$k0">
                      <node concept="2OqwBi" id="67VaKSImGQY" role="2Oq$k0">
                        <node concept="30H73N" id="67VaKSImGDQ" role="2Oq$k0" />
                        <node concept="2Rf3mk" id="67VaKSImH20" role="2OqNvi">
                          <node concept="1xMEDy" id="67VaKSImH22" role="1xVPHs">
                            <node concept="chp4Y" id="67VaKSImHaI" role="ri$Ld">
                              <ref role="cht4Q" to="74bf:6_xZaXN$w5c" resolve="TextGenAddition" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="13MTOL" id="67VaKSImJtE" role="2OqNvi">
                        <ref role="13MTZf" to="74bf:67VaKSImrro" resolve="using" />
                      </node>
                    </node>
                    <node concept="13MTOL" id="67VaKSIojX4" role="2OqNvi">
                      <ref role="13MTZf" to="74bf:67VaKSImrrj" resolve="namespace" />
                    </node>
                  </node>
                  <node concept="1VAtEI" id="67VaKSImO4i" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="356sEK" id="PKiUC78hSl" role="383Ya9">
        <node concept="2EixSi" id="PKiUC78hSo" role="2EinRH" />
      </node>
      <node concept="356sEK" id="PKiUC78hSp" role="383Ya9">
        <node concept="356sEF" id="PKiUC78hSq" role="356sEH">
          <property role="TrG5h" value="namespace " />
        </node>
        <node concept="356sEF" id="PKiUC7aHlC" role="356sEH">
          <property role="TrG5h" value="namespace" />
          <node concept="17Uvod" id="PKiUC7aHlF" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="PKiUC7aHlG" role="3zH0cK">
              <node concept="3clFbS" id="PKiUC7aHlH" role="2VODD2">
                <node concept="3clFbF" id="PKiUC7aHqi" role="3cqZAp">
                  <node concept="2OqwBi" id="PKiUC7aHA$" role="3clFbG">
                    <node concept="30H73N" id="PKiUC7aHqh" role="2Oq$k0" />
                    <node concept="2qgKlT" id="PKiUC7aHJm" role="2OqNvi">
                      <ref role="37wK5l" to="deao:PKiUC7a_Nb" resolve="GetTargetCodeNamespace" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2EixSi" id="PKiUC78hSs" role="2EinRH" />
      </node>
      <node concept="356sEK" id="PKiUC78hSt" role="383Ya9">
        <node concept="356sEF" id="PKiUC78hSu" role="356sEH">
          <property role="TrG5h" value="{" />
        </node>
        <node concept="2EixSi" id="PKiUC78hSw" role="2EinRH" />
      </node>
      <node concept="356sEQ" id="PKiUC78hS_" role="383Ya9">
        <property role="333NGx" value="    " />
        <node concept="356sEK" id="6_xZaXNzr2H" role="383Ya9">
          <node concept="2EixSi" id="6_xZaXNzr2J" role="2EinRH" />
          <node concept="2b32R4" id="6_xZaXNztde" role="lGtFl">
            <node concept="3JmXsc" id="6_xZaXNztdf" role="2P8S$">
              <node concept="3clFbS" id="6_xZaXNztdg" role="2VODD2">
                <node concept="3clFbF" id="6_xZaXNztdI" role="3cqZAp">
                  <node concept="2OqwBi" id="6_xZaXNzz4w" role="3clFbG">
                    <node concept="2OqwBi" id="6_xZaXNzv3Z" role="2Oq$k0">
                      <node concept="2OqwBi" id="6_xZaXNztsJ" role="2Oq$k0">
                        <node concept="30H73N" id="6_xZaXNztdH" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="6_xZaXNztDZ" role="2OqNvi">
                          <ref role="3TtcxE" to="74bf:6_xZaXNvZn6" resolve="additions" />
                        </node>
                      </node>
                      <node concept="1z4cxt" id="6_xZaXNzws3" role="2OqNvi">
                        <node concept="1bVj0M" id="6_xZaXNzws5" role="23t8la">
                          <node concept="3clFbS" id="6_xZaXNzws6" role="1bW5cS">
                            <node concept="3clFbF" id="6_xZaXNzwzS" role="3cqZAp">
                              <node concept="3clFbC" id="6_xZaXNzy2r" role="3clFbG">
                                <node concept="2OqwBi" id="6_xZaXNzyqv" role="3uHU7w">
                                  <node concept="30H73N" id="6_xZaXNzybS" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="6_xZaXNzyC4" role="2OqNvi">
                                    <ref role="3Tt5mk" to="74bf:PKiUC77gMt" resolve="concept" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="6_xZaXNzwMo" role="3uHU7B">
                                  <node concept="37vLTw" id="6_xZaXNzwzR" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6_xZaXNzws7" resolve="it" />
                                  </node>
                                  <node concept="3TrEf2" id="6_xZaXNzwYk" role="2OqNvi">
                                    <ref role="3Tt5mk" to="74bf:6_xZaXNv8$Y" resolve="target" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="6_xZaXNzws7" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="6_xZaXNzws8" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="6_xZaXNzzDc" role="2OqNvi">
                      <ref role="3TtcxE" to="74bf:6_xZaXNwdfJ" resolve="additions" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="356sEK" id="PKiUC78hSx" role="383Ya9">
          <node concept="356sEF" id="PKiUC78hSy" role="356sEH">
            <property role="TrG5h" value="public partial class " />
          </node>
          <node concept="356sEF" id="PKiUC78hWB" role="356sEH">
            <property role="TrG5h" value="name" />
            <node concept="17Uvod" id="PKiUC78hWG" role="lGtFl">
              <property role="2qtEX9" value="name" />
              <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
              <node concept="3zFVjK" id="PKiUC78hWH" role="3zH0cK">
                <node concept="3clFbS" id="PKiUC78hWI" role="2VODD2">
                  <node concept="3clFbF" id="PKiUC78i1j" role="3cqZAp">
                    <node concept="2OqwBi" id="PKiUC78i$D" role="3clFbG">
                      <node concept="2OqwBi" id="PKiUC78id_" role="2Oq$k0">
                        <node concept="30H73N" id="PKiUC78i1i" role="2Oq$k0" />
                        <node concept="3TrEf2" id="PKiUC78imn" role="2OqNvi">
                          <ref role="3Tt5mk" to="74bf:PKiUC77gMt" resolve="concept" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="PKiUC78iWw" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="PKiUC78hWC" role="356sEH">
            <property role="TrG5h" value=": " />
          </node>
          <node concept="356sEF" id="PKiUC7hjcw" role="356sEH">
            <property role="TrG5h" value="BaseConcept" />
            <node concept="17Uvod" id="PKiUC7hjdl" role="lGtFl">
              <property role="2qtEX9" value="name" />
              <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
              <node concept="3zFVjK" id="PKiUC7hjdm" role="3zH0cK">
                <node concept="3clFbS" id="PKiUC7hjdn" role="2VODD2">
                  <node concept="3clFbJ" id="PKiUC7hlCM" role="3cqZAp">
                    <node concept="3clFbS" id="PKiUC7hlCO" role="3clFbx">
                      <node concept="3cpWs6" id="PKiUC7hmc8" role="3cqZAp">
                        <node concept="Xl_RD" id="PKiUC7hmo5" role="3cqZAk">
                          <property role="Xl_RC" value="Sioux.RClient.Runtime.BaseConcept" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="PKiUC7hlqa" role="3clFbw">
                      <node concept="2OqwBi" id="PKiUC7hjL5" role="2Oq$k0">
                        <node concept="2OqwBi" id="PKiUC7hjq1" role="2Oq$k0">
                          <node concept="30H73N" id="PKiUC7hjdI" role="2Oq$k0" />
                          <node concept="3TrEf2" id="PKiUC7hjyN" role="2OqNvi">
                            <ref role="3Tt5mk" to="74bf:PKiUC77gMt" resolve="concept" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="PKiUC7hkNs" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpce:f_TJDff" resolve="extends" />
                        </node>
                      </node>
                      <node concept="3w_OXm" id="PKiUC7hlxq" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="PKiUC7hoJQ" role="3cqZAp">
                    <node concept="2OqwBi" id="PKiUC7hpRz" role="3clFbG">
                      <node concept="2OqwBi" id="PKiUC7hp2h" role="2Oq$k0">
                        <node concept="30H73N" id="PKiUC7hoJP" role="2Oq$k0" />
                        <node concept="2Xjw5R" id="PKiUC7hpbM" role="2OqNvi">
                          <node concept="1xMEDy" id="PKiUC7hpbO" role="1xVPHs">
                            <node concept="chp4Y" id="PKiUC7hphf" role="ri$Ld">
                              <ref role="cht4Q" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2qgKlT" id="PKiUC7hs9v" role="2OqNvi">
                        <ref role="37wK5l" to="deao:PKiUC7b6Ck" resolve="GetTargetCodeFqName" />
                        <node concept="2OqwBi" id="PKiUC7hsfl" role="37wK5m">
                          <node concept="2OqwBi" id="PKiUC7hsfm" role="2Oq$k0">
                            <node concept="30H73N" id="PKiUC7hsfn" role="2Oq$k0" />
                            <node concept="3TrEf2" id="PKiUC7hsfo" role="2OqNvi">
                              <ref role="3Tt5mk" to="74bf:PKiUC77gMt" resolve="concept" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="PKiUC7hsfp" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpce:f_TJDff" resolve="extends" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEK" id="PKiUC7hMmR" role="356sEH">
            <node concept="2EixSi" id="PKiUC7hMmT" role="2EinRH" />
            <node concept="356sEF" id="PKiUC7hj3n" role="356sEH">
              <property role="TrG5h" value=", " />
            </node>
            <node concept="356sEF" id="PKiUC7hMC$" role="356sEH">
              <property role="TrG5h" value="INamedConcept" />
              <node concept="17Uvod" id="PKiUC7hNZY" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="PKiUC7hNZZ" role="3zH0cK">
                  <node concept="3clFbS" id="PKiUC7hO00" role="2VODD2">
                    <node concept="3clFbF" id="PKiUC7hOzJ" role="3cqZAp">
                      <node concept="2OqwBi" id="PKiUC7hPZS" role="3clFbG">
                        <node concept="2OqwBi" id="PKiUC7hPfP" role="2Oq$k0">
                          <node concept="2OqwBi" id="PKiUC7hOXL" role="2Oq$k0">
                            <node concept="1iwH7S" id="PKiUC7hOKO" role="2Oq$k0" />
                            <node concept="1psM6Z" id="PKiUC7hP2V" role="2OqNvi">
                              <ref role="1psM6Y" node="PKiUC7aIQo" resolve="concept" />
                            </node>
                          </node>
                          <node concept="2Xjw5R" id="PKiUC7hPGC" role="2OqNvi">
                            <node concept="1xMEDy" id="PKiUC7hPGE" role="1xVPHs">
                              <node concept="chp4Y" id="PKiUC7hPOL" role="ri$Ld">
                                <ref role="cht4Q" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2qgKlT" id="PKiUC7hQkZ" role="2OqNvi">
                          <ref role="37wK5l" to="deao:PKiUC7b6Ck" resolve="GetTargetCodeFqName" />
                          <node concept="2OqwBi" id="PKiUC7hRnT" role="37wK5m">
                            <node concept="30H73N" id="PKiUC7hQn1" role="2Oq$k0" />
                            <node concept="3TrEf2" id="PKiUC7hRJ0" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpce:h0PrY0D" resolve="intfc" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1WS0z7" id="PKiUC7hMCD" role="lGtFl">
              <node concept="3JmXsc" id="PKiUC7hMCE" role="3Jn$fo">
                <node concept="3clFbS" id="PKiUC7hMCF" role="2VODD2">
                  <node concept="3clFbF" id="PKiUC7hMD9" role="3cqZAp">
                    <node concept="2OqwBi" id="PKiUC7hNf_" role="3clFbG">
                      <node concept="2OqwBi" id="PKiUC7hMPo" role="2Oq$k0">
                        <node concept="30H73N" id="PKiUC7hMD8" role="2Oq$k0" />
                        <node concept="3TrEf2" id="PKiUC7hMYi" role="2OqNvi">
                          <ref role="3Tt5mk" to="74bf:PKiUC77gMt" resolve="concept" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="PKiUC7hNB_" role="2OqNvi">
                        <ref role="3TtcxE" to="tpce:h0Pzm$Y" resolve="implements" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2EixSi" id="PKiUC78hS$" role="2EinRH" />
        </node>
        <node concept="356sEK" id="PKiUC78hSA" role="383Ya9">
          <node concept="356sEF" id="PKiUC78hSB" role="356sEH">
            <property role="TrG5h" value="{" />
          </node>
          <node concept="2EixSi" id="PKiUC78hSD" role="2EinRH" />
        </node>
        <node concept="356sEQ" id="PKiUC78hSI" role="383Ya9">
          <property role="333NGx" value="    " />
          <node concept="356sEK" id="PKiUC78hSE" role="383Ya9">
            <node concept="356sEF" id="PKiUC78hSF" role="356sEH">
              <property role="TrG5h" value="public " />
            </node>
            <node concept="356sEF" id="PKiUC78j3R" role="356sEH">
              <property role="TrG5h" value="Todo" />
              <node concept="17Uvod" id="PKiUC78j3Y" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="PKiUC78j3Z" role="3zH0cK">
                  <node concept="3clFbS" id="PKiUC78j40" role="2VODD2">
                    <node concept="3clFbF" id="PKiUC78j8_" role="3cqZAp">
                      <node concept="2OqwBi" id="PKiUC78jGu" role="3clFbG">
                        <node concept="2OqwBi" id="PKiUC78jkR" role="2Oq$k0">
                          <node concept="30H73N" id="PKiUC78j8$" role="2Oq$k0" />
                          <node concept="3TrEf2" id="PKiUC78juc" role="2OqNvi">
                            <ref role="3Tt5mk" to="74bf:PKiUC77gMt" resolve="concept" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="PKiUC78k4l" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEF" id="PKiUC78j3S" role="356sEH">
              <property role="TrG5h" value="(RNode backEnd, IScheduler scheduler, Lifetime lifetime, IRClientRegistry registry) : base(backEnd, scheduler, lifetime, registry)" />
            </node>
            <node concept="2EixSi" id="PKiUC78hSH" role="2EinRH" />
          </node>
          <node concept="356sEK" id="PKiUC78hSJ" role="383Ya9">
            <node concept="356sEF" id="PKiUC78hSK" role="356sEH">
              <property role="TrG5h" value="{" />
            </node>
            <node concept="2EixSi" id="PKiUC78hSM" role="2EinRH" />
          </node>
          <node concept="356sEQ" id="PKiUC78hSR" role="383Ya9">
            <property role="333NGx" value="    " />
            <node concept="356WMU" id="PKiUC78MMN" role="383Ya9">
              <node concept="356sEK" id="PKiUC78hSN" role="383Ya9">
                <node concept="356sEF" id="PKiUC78hSO" role="356sEH">
                  <property role="TrG5h" value="_" />
                </node>
                <node concept="356sEF" id="PKiUC78Ntu" role="356sEH">
                  <property role="TrG5h" value="name" />
                  <node concept="17Uvod" id="PKiUC78NAH" role="lGtFl">
                    <property role="2qtEX9" value="name" />
                    <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                    <node concept="3zFVjK" id="PKiUC78NAK" role="3zH0cK">
                      <node concept="3clFbS" id="PKiUC78NAL" role="2VODD2">
                        <node concept="3clFbF" id="PKiUC78NAR" role="3cqZAp">
                          <node concept="2OqwBi" id="PKiUC78NAM" role="3clFbG">
                            <node concept="3TrcHB" id="PKiUC78NAP" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                            <node concept="30H73N" id="PKiUC78NAQ" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="356sEF" id="PKiUC78Ntv" role="356sEH">
                  <property role="TrG5h" value="Helper = new RPropertyHelper&lt;" />
                </node>
                <node concept="356sEF" id="PKiUC78PgQ" role="356sEH">
                  <property role="TrG5h" value="Priority" />
                  <node concept="17Uvod" id="PKiUC78PtP" role="lGtFl">
                    <property role="2qtEX9" value="name" />
                    <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                    <node concept="3zFVjK" id="PKiUC78PtS" role="3zH0cK">
                      <node concept="3clFbS" id="PKiUC78PtT" role="2VODD2">
                        <node concept="3clFbF" id="PKiUC78PtZ" role="3cqZAp">
                          <node concept="2OqwBi" id="PKiUC7bg0R" role="3clFbG">
                            <node concept="2OqwBi" id="PKiUC7bg0S" role="2Oq$k0">
                              <node concept="2OqwBi" id="PKiUC7bg0T" role="2Oq$k0">
                                <node concept="1iwH7S" id="PKiUC7bg0U" role="2Oq$k0" />
                                <node concept="1psM6Z" id="PKiUC7bg0V" role="2OqNvi">
                                  <ref role="1psM6Y" node="PKiUC7aIQo" resolve="concept" />
                                </node>
                              </node>
                              <node concept="2Xjw5R" id="PKiUC7bg0W" role="2OqNvi">
                                <node concept="1xMEDy" id="PKiUC7bg0X" role="1xVPHs">
                                  <node concept="chp4Y" id="PKiUC7bg0Y" role="ri$Ld">
                                    <ref role="cht4Q" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2qgKlT" id="PKiUC7bg0Z" role="2OqNvi">
                              <ref role="37wK5l" to="deao:PKiUC7b6Ck" resolve="GetTargetCodeFqName" />
                              <node concept="2OqwBi" id="PKiUC7bhAz" role="37wK5m">
                                <node concept="30H73N" id="PKiUC7bg11" role="2Oq$k0" />
                                <node concept="3TrEf2" id="PKiUC7bhFG" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tpce:fKAX2Z_" resolve="dataType" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="356sEF" id="PKiUC78PgR" role="356sEH">
                  <property role="TrG5h" value="&gt;(lifetime, backEnd.Properties, OnPropertyChanged, &quot;" />
                </node>
                <node concept="356sEF" id="PKiUC78NVq" role="356sEH">
                  <property role="TrG5h" value="name" />
                  <node concept="17Uvod" id="PKiUC78O5S" role="lGtFl">
                    <property role="2qtEX9" value="name" />
                    <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                    <node concept="3zFVjK" id="PKiUC78O5V" role="3zH0cK">
                      <node concept="3clFbS" id="PKiUC78O5W" role="2VODD2">
                        <node concept="3clFbF" id="PKiUC78O62" role="3cqZAp">
                          <node concept="2OqwBi" id="PKiUC78O5X" role="3clFbG">
                            <node concept="3TrcHB" id="PKiUC78O60" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                            <node concept="30H73N" id="PKiUC78O61" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="356sEF" id="PKiUC78NVr" role="356sEH">
                  <property role="TrG5h" value="&quot;, nameof(" />
                </node>
                <node concept="356sEF" id="PKiUC78OjR" role="356sEH">
                  <property role="TrG5h" value="name" />
                  <node concept="17Uvod" id="PKiUC78Ov_" role="lGtFl">
                    <property role="2qtEX9" value="name" />
                    <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                    <node concept="3zFVjK" id="PKiUC78OvC" role="3zH0cK">
                      <node concept="3clFbS" id="PKiUC78OvD" role="2VODD2">
                        <node concept="3clFbF" id="PKiUC7gu3n" role="3cqZAp">
                          <node concept="2YIFZM" id="PKiUC7gu4e" role="3clFbG">
                            <ref role="37wK5l" to="9q87:PKiUC7gbqw" resolve="GetPropertyName" />
                            <ref role="1Pybhc" to="9q87:PKiUC7gbpn" resolve="NameChanges" />
                            <node concept="2OqwBi" id="PKiUC7gum2" role="37wK5m">
                              <node concept="30H73N" id="PKiUC7gu56" role="2Oq$k0" />
                              <node concept="3TrcHB" id="PKiUC7guHZ" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="356sEF" id="PKiUC78OjS" role="356sEH">
                  <property role="TrG5h" value="));" />
                </node>
                <node concept="2EixSi" id="PKiUC78hSQ" role="2EinRH" />
              </node>
              <node concept="356sEK" id="PKiUC78hSS" role="383Ya9">
                <node concept="356sEF" id="PKiUC78hST" role="356sEH">
                  <property role="TrG5h" value="OnDispose(_" />
                </node>
                <node concept="356sEF" id="PKiUC78OS6" role="356sEH">
                  <property role="TrG5h" value="name" />
                  <node concept="17Uvod" id="PKiUC78P1k" role="lGtFl">
                    <property role="2qtEX9" value="name" />
                    <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                    <node concept="3zFVjK" id="PKiUC78P1n" role="3zH0cK">
                      <node concept="3clFbS" id="PKiUC78P1o" role="2VODD2">
                        <node concept="3clFbF" id="PKiUC78P1u" role="3cqZAp">
                          <node concept="2OqwBi" id="PKiUC78P1p" role="3clFbG">
                            <node concept="3TrcHB" id="PKiUC78P1s" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                            <node concept="30H73N" id="PKiUC78P1t" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="356sEF" id="PKiUC78OS7" role="356sEH">
                  <property role="TrG5h" value="Helper);" />
                </node>
                <node concept="2EixSi" id="PKiUC78hSV" role="2EinRH" />
              </node>
              <node concept="1WS0z7" id="PKiUC78N7g" role="lGtFl">
                <node concept="3JmXsc" id="PKiUC78N7h" role="3Jn$fo">
                  <node concept="3clFbS" id="PKiUC78N7i" role="2VODD2">
                    <node concept="3clFbF" id="PKiUC7nKe1" role="3cqZAp">
                      <node concept="2OqwBi" id="PKiUC7nKe2" role="3clFbG">
                        <node concept="2OqwBi" id="PKiUC7nKe3" role="2Oq$k0">
                          <node concept="2OqwBi" id="PKiUC7nKe4" role="2Oq$k0">
                            <node concept="30H73N" id="PKiUC7nKe5" role="2Oq$k0" />
                            <node concept="3TrEf2" id="PKiUC7nKe6" role="2OqNvi">
                              <ref role="3Tt5mk" to="74bf:PKiUC77gMt" resolve="concept" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="PKiUC7nKe7" role="2OqNvi">
                            <ref role="37wK5l" to="tpcn:hEwILLM" resolve="getPropertyDeclarations" />
                          </node>
                        </node>
                        <node concept="66VNe" id="PKiUC7nKe8" role="2OqNvi">
                          <node concept="2OqwBi" id="PKiUC7nKe9" role="576Qk">
                            <node concept="2OqwBi" id="PKiUC7nKea" role="2Oq$k0">
                              <node concept="2OqwBi" id="PKiUC7nKeb" role="2Oq$k0">
                                <node concept="30H73N" id="PKiUC7nKec" role="2Oq$k0" />
                                <node concept="3TrEf2" id="PKiUC7nKed" role="2OqNvi">
                                  <ref role="3Tt5mk" to="74bf:PKiUC77gMt" resolve="concept" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="PKiUC7nKee" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpce:f_TJDff" resolve="extends" />
                              </node>
                            </node>
                            <node concept="2qgKlT" id="PKiUC7nKef" role="2OqNvi">
                              <ref role="37wK5l" to="tpcn:hEwILLM" resolve="getPropertyDeclarations" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356WMU" id="5w895fhszCW" role="383Ya9">
              <node concept="356sEK" id="5w895fhszCX" role="383Ya9">
                <node concept="356sEF" id="5w895fhszCY" role="356sEH">
                  <property role="TrG5h" value="_" />
                </node>
                <node concept="356sEF" id="5w895fhszCZ" role="356sEH">
                  <property role="TrG5h" value="name" />
                  <node concept="17Uvod" id="5w895fhszD0" role="lGtFl">
                    <property role="2qtEX9" value="name" />
                    <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                    <node concept="3zFVjK" id="5w895fhszD1" role="3zH0cK">
                      <node concept="3clFbS" id="5w895fhszD2" role="2VODD2">
                        <node concept="3clFbF" id="5w895fhszD3" role="3cqZAp">
                          <node concept="2OqwBi" id="5w895fhszD4" role="3clFbG">
                            <node concept="3TrcHB" id="5w895fhszD5" role="2OqNvi">
                              <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                            </node>
                            <node concept="30H73N" id="5w895fhszD6" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="356sEF" id="5w895fhszD7" role="356sEH">
                  <property role="TrG5h" value="Helper = new RReferenceHelper&lt;" />
                </node>
                <node concept="356sEF" id="5w895fhszD8" role="356sEH">
                  <property role="TrG5h" value="type" />
                  <node concept="17Uvod" id="5w895fhszD9" role="lGtFl">
                    <property role="2qtEX9" value="name" />
                    <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                    <node concept="3zFVjK" id="5w895fhszDa" role="3zH0cK">
                      <node concept="3clFbS" id="5w895fhszDb" role="2VODD2">
                        <node concept="3clFbF" id="5w895fhszDc" role="3cqZAp">
                          <node concept="2OqwBi" id="5w895fhszDd" role="3clFbG">
                            <node concept="2OqwBi" id="5w895fhszDe" role="2Oq$k0">
                              <node concept="2OqwBi" id="5w895fhszDf" role="2Oq$k0">
                                <node concept="1iwH7S" id="5w895fhszDg" role="2Oq$k0" />
                                <node concept="1psM6Z" id="5w895fhszDh" role="2OqNvi">
                                  <ref role="1psM6Y" node="PKiUC7aIQo" resolve="concept" />
                                </node>
                              </node>
                              <node concept="2Xjw5R" id="5w895fhszDi" role="2OqNvi">
                                <node concept="1xMEDy" id="5w895fhszDj" role="1xVPHs">
                                  <node concept="chp4Y" id="5w895fhszDk" role="ri$Ld">
                                    <ref role="cht4Q" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2qgKlT" id="5w895fhszDl" role="2OqNvi">
                              <ref role="37wK5l" to="deao:PKiUC7b6Ck" resolve="GetTargetCodeFqName" />
                              <node concept="2OqwBi" id="5w895fhs_ZN" role="37wK5m">
                                <node concept="30H73N" id="5w895fhszDn" role="2Oq$k0" />
                                <node concept="3TrEf2" id="5w895fhsA82" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="356sEF" id="5w895fhszDp" role="356sEH">
                  <property role="TrG5h" value="&gt;(lifetime, backEnd.References, registry, OnPropertyChanged, &quot;" />
                </node>
                <node concept="356sEF" id="5w895fhszDq" role="356sEH">
                  <property role="TrG5h" value="name" />
                  <node concept="17Uvod" id="5w895fhszDr" role="lGtFl">
                    <property role="2qtEX9" value="name" />
                    <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                    <node concept="3zFVjK" id="5w895fhszDs" role="3zH0cK">
                      <node concept="3clFbS" id="5w895fhszDt" role="2VODD2">
                        <node concept="3clFbF" id="5w895fhszDu" role="3cqZAp">
                          <node concept="2OqwBi" id="5w895fhszDv" role="3clFbG">
                            <node concept="3TrcHB" id="5w895fhszDw" role="2OqNvi">
                              <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                            </node>
                            <node concept="30H73N" id="5w895fhszDx" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="356sEF" id="5w895fhszDy" role="356sEH">
                  <property role="TrG5h" value="&quot;, nameof(" />
                </node>
                <node concept="356sEF" id="5w895fhszDz" role="356sEH">
                  <property role="TrG5h" value="name" />
                  <node concept="17Uvod" id="5w895fhszD$" role="lGtFl">
                    <property role="2qtEX9" value="name" />
                    <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                    <node concept="3zFVjK" id="5w895fhszD_" role="3zH0cK">
                      <node concept="3clFbS" id="5w895fhszDA" role="2VODD2">
                        <node concept="3clFbF" id="5w895fhszDB" role="3cqZAp">
                          <node concept="2YIFZM" id="5w895fhszDC" role="3clFbG">
                            <ref role="37wK5l" to="9q87:PKiUC7gbqw" resolve="GetPropertyName" />
                            <ref role="1Pybhc" to="9q87:PKiUC7gbpn" resolve="NameChanges" />
                            <node concept="2OqwBi" id="5w895fhszDD" role="37wK5m">
                              <node concept="30H73N" id="5w895fhszDE" role="2Oq$k0" />
                              <node concept="3TrcHB" id="5w895fhszDF" role="2OqNvi">
                                <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="356sEF" id="5w895fhszDG" role="356sEH">
                  <property role="TrG5h" value="));" />
                </node>
                <node concept="2EixSi" id="5w895fhszDH" role="2EinRH" />
              </node>
              <node concept="356sEK" id="5w895fhszDI" role="383Ya9">
                <node concept="356sEF" id="5w895fhszDJ" role="356sEH">
                  <property role="TrG5h" value="OnDispose(_" />
                </node>
                <node concept="356sEF" id="5w895fhszDK" role="356sEH">
                  <property role="TrG5h" value="name" />
                  <node concept="17Uvod" id="5w895fhszDL" role="lGtFl">
                    <property role="2qtEX9" value="name" />
                    <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                    <node concept="3zFVjK" id="5w895fhszDM" role="3zH0cK">
                      <node concept="3clFbS" id="5w895fhszDN" role="2VODD2">
                        <node concept="3clFbF" id="5w895fhszDO" role="3cqZAp">
                          <node concept="2OqwBi" id="5w895fhszDP" role="3clFbG">
                            <node concept="3TrcHB" id="5w895fhszDQ" role="2OqNvi">
                              <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                            </node>
                            <node concept="30H73N" id="5w895fhszDR" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="356sEF" id="5w895fhszDS" role="356sEH">
                  <property role="TrG5h" value="Helper);" />
                </node>
                <node concept="2EixSi" id="5w895fhszDT" role="2EinRH" />
              </node>
              <node concept="1WS0z7" id="5w895fhszDU" role="lGtFl">
                <node concept="3JmXsc" id="5w895fhszDV" role="3Jn$fo">
                  <node concept="3clFbS" id="5w895fhszDW" role="2VODD2">
                    <node concept="3clFbF" id="5w895fhs$gE" role="3cqZAp">
                      <node concept="2OqwBi" id="5w895fhs$gF" role="3clFbG">
                        <node concept="2OqwBi" id="5w895fhs$gG" role="2Oq$k0">
                          <node concept="2OqwBi" id="5w895fhs$gH" role="2Oq$k0">
                            <node concept="30H73N" id="5w895fhs$gI" role="2Oq$k0" />
                            <node concept="3TrEf2" id="5w895fhs$gJ" role="2OqNvi">
                              <ref role="3Tt5mk" to="74bf:PKiUC77gMt" resolve="concept" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="5w895fhs$gK" role="2OqNvi">
                            <ref role="37wK5l" to="tpcn:hEwILL0" resolve="getReferenceLinkDeclarations" />
                          </node>
                        </node>
                        <node concept="66VNe" id="5w895fhs$gL" role="2OqNvi">
                          <node concept="2OqwBi" id="5w895fhs$gM" role="576Qk">
                            <node concept="2OqwBi" id="5w895fhs$gN" role="2Oq$k0">
                              <node concept="2OqwBi" id="5w895fhs$gO" role="2Oq$k0">
                                <node concept="30H73N" id="5w895fhs$gP" role="2Oq$k0" />
                                <node concept="3TrEf2" id="5w895fhs$gQ" role="2OqNvi">
                                  <ref role="3Tt5mk" to="74bf:PKiUC77gMt" resolve="concept" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="5w895fhs$gR" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpce:f_TJDff" resolve="extends" />
                              </node>
                            </node>
                            <node concept="2qgKlT" id="5w895fhs$gS" role="2OqNvi">
                              <ref role="37wK5l" to="tpcn:hEwILL0" resolve="getReferenceLinkDeclarations" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEK" id="PKiUC78hT4" role="383Ya9">
              <node concept="356sEF" id="PKiUC78KOY" role="356sEH">
                <property role="TrG5h" value="name" />
                <node concept="17Uvod" id="PKiUC78KT5" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="PKiUC78KT6" role="3zH0cK">
                    <node concept="3clFbS" id="PKiUC78KT7" role="2VODD2">
                      <node concept="3clFbF" id="PKiUC7ol0l" role="3cqZAp">
                        <node concept="2YIFZM" id="PKiUC7ol0m" role="3clFbG">
                          <ref role="37wK5l" to="9q87:PKiUC7gbqw" resolve="GetPropertyName" />
                          <ref role="1Pybhc" to="9q87:PKiUC7gbpn" resolve="NameChanges" />
                          <node concept="2OqwBi" id="PKiUC7ol0n" role="37wK5m">
                            <node concept="3TrcHB" id="PKiUC7ol0o" role="2OqNvi">
                              <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                            </node>
                            <node concept="30H73N" id="PKiUC7ol0p" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="PKiUC78KOZ" role="356sEH">
                <property role="TrG5h" value=" = new RCollection&lt;" />
              </node>
              <node concept="356sEF" id="PKiUC78L8j" role="356sEH">
                <property role="TrG5h" value="Todo" />
                <node concept="17Uvod" id="PKiUC78Lks" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="PKiUC78Lkt" role="3zH0cK">
                    <node concept="3clFbS" id="PKiUC78Lku" role="2VODD2">
                      <node concept="3clFbF" id="PKiUC7bb3z" role="3cqZAp">
                        <node concept="2OqwBi" id="PKiUC7bcCO" role="3clFbG">
                          <node concept="2OqwBi" id="PKiUC7bc4l" role="2Oq$k0">
                            <node concept="2OqwBi" id="PKiUC7bbeQ" role="2Oq$k0">
                              <node concept="1iwH7S" id="PKiUC7bb3y" role="2Oq$k0" />
                              <node concept="1psM6Z" id="PKiUC7bbk0" role="2OqNvi">
                                <ref role="1psM6Y" node="PKiUC7aIQo" resolve="concept" />
                              </node>
                            </node>
                            <node concept="2Xjw5R" id="PKiUC7bclq" role="2OqNvi">
                              <node concept="1xMEDy" id="PKiUC7bcls" role="1xVPHs">
                                <node concept="chp4Y" id="PKiUC7bctH" role="ri$Ld">
                                  <ref role="cht4Q" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2qgKlT" id="PKiUC7bcNA" role="2OqNvi">
                            <ref role="37wK5l" to="deao:PKiUC7b6Ck" resolve="GetTargetCodeFqName" />
                            <node concept="2OqwBi" id="PKiUC7bd5p" role="37wK5m">
                              <node concept="30H73N" id="PKiUC7bcSS" role="2Oq$k0" />
                              <node concept="3TrEf2" id="PKiUC7bdOm" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="PKiUC78L8k" role="356sEH">
                <property role="TrG5h" value="&gt;(&quot;" />
              </node>
              <node concept="356sEF" id="PKiUC78Ldy" role="356sEH">
                <property role="TrG5h" value="role" />
                <node concept="17Uvod" id="PKiUC78LiN" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="PKiUC78LiQ" role="3zH0cK">
                    <node concept="3clFbS" id="PKiUC78LiR" role="2VODD2">
                      <node concept="3clFbF" id="PKiUC78LiX" role="3cqZAp">
                        <node concept="2OqwBi" id="PKiUC78LiS" role="3clFbG">
                          <node concept="3TrcHB" id="PKiUC78LiV" role="2OqNvi">
                            <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                          </node>
                          <node concept="30H73N" id="PKiUC78LiW" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="PKiUC78Ldz" role="356sEH">
                <property role="TrG5h" value="&quot;, this);" />
              </node>
              <node concept="2EixSi" id="PKiUC78hT7" role="2EinRH" />
              <node concept="1WS0z7" id="PKiUC78Kko" role="lGtFl">
                <node concept="3JmXsc" id="PKiUC78Kkp" role="3Jn$fo">
                  <node concept="3clFbS" id="PKiUC78Kkq" role="2VODD2">
                    <node concept="3clFbF" id="PKiUC7d2Eh" role="3cqZAp">
                      <node concept="2OqwBi" id="72kd6xmLwuL" role="3clFbG">
                        <node concept="2OqwBi" id="PKiUC7o8xQ" role="2Oq$k0">
                          <node concept="2OqwBi" id="PKiUC7o8xR" role="2Oq$k0">
                            <node concept="2OqwBi" id="PKiUC7o8xS" role="2Oq$k0">
                              <node concept="30H73N" id="PKiUC7o8xT" role="2Oq$k0" />
                              <node concept="3TrEf2" id="PKiUC7o8xU" role="2OqNvi">
                                <ref role="3Tt5mk" to="74bf:PKiUC77gMt" resolve="concept" />
                              </node>
                            </node>
                            <node concept="2qgKlT" id="PKiUC7o8xV" role="2OqNvi">
                              <ref role="37wK5l" to="tpcn:hEwILLp" resolve="getAggregationLinkDeclarations" />
                            </node>
                          </node>
                          <node concept="66VNe" id="PKiUC7o8xW" role="2OqNvi">
                            <node concept="2OqwBi" id="PKiUC7o8xX" role="576Qk">
                              <node concept="2OqwBi" id="PKiUC7o8xY" role="2Oq$k0">
                                <node concept="2OqwBi" id="PKiUC7o8xZ" role="2Oq$k0">
                                  <node concept="30H73N" id="PKiUC7o8y0" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="PKiUC7o8y1" role="2OqNvi">
                                    <ref role="3Tt5mk" to="74bf:PKiUC77gMt" resolve="concept" />
                                  </node>
                                </node>
                                <node concept="3TrEf2" id="PKiUC7o8y2" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tpce:f_TJDff" resolve="extends" />
                                </node>
                              </node>
                              <node concept="2qgKlT" id="PKiUC7o8y3" role="2OqNvi">
                                <ref role="37wK5l" to="tpcn:hEwILLp" resolve="getAggregationLinkDeclarations" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3zZkjj" id="72kd6xmLxmg" role="2OqNvi">
                          <node concept="1bVj0M" id="72kd6xmLxmi" role="23t8la">
                            <node concept="3clFbS" id="72kd6xmLxmj" role="1bW5cS">
                              <node concept="3clFbF" id="72kd6xmLxz9" role="3cqZAp">
                                <node concept="22lmx$" id="72kd6xmLDku" role="3clFbG">
                                  <node concept="2OqwBi" id="72kd6xmLFty" role="3uHU7w">
                                    <node concept="2OqwBi" id="72kd6xmLDXe" role="2Oq$k0">
                                      <node concept="37vLTw" id="72kd6xmLDtu" role="2Oq$k0">
                                        <ref role="3cqZAo" node="72kd6xmLxmk" resolve="it" />
                                      </node>
                                      <node concept="3TrcHB" id="72kd6xmLE$Q" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpce:3Ftr4R6BH8A" resolve="sourceCardinality" />
                                      </node>
                                    </node>
                                    <node concept="21noJN" id="72kd6xmLGdC" role="2OqNvi">
                                      <node concept="21nZrQ" id="72kd6xmLGdE" role="21noJM">
                                        <ref role="21nZrZ" to="tpce:3Ftr4R6BFyk" resolve="_1__n" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="72kd6xmLC7b" role="3uHU7B">
                                    <node concept="2OqwBi" id="72kd6xmLxWy" role="2Oq$k0">
                                      <node concept="37vLTw" id="72kd6xmLxz8" role="2Oq$k0">
                                        <ref role="3cqZAo" node="72kd6xmLxmk" resolve="it" />
                                      </node>
                                      <node concept="3TrcHB" id="72kd6xmLyQD" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpce:3Ftr4R6BH8A" resolve="sourceCardinality" />
                                      </node>
                                    </node>
                                    <node concept="21noJN" id="72kd6xmLClT" role="2OqNvi">
                                      <node concept="21nZrQ" id="72kd6xmLClV" role="21noJM">
                                        <ref role="21nZrZ" to="tpce:3Ftr4R6BFyj" resolve="_0__n" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="72kd6xmLxmk" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="72kd6xmLxml" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="72kd6xmLvOC" role="3cqZAp" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEK" id="72kd6xmLGJu" role="383Ya9">
              <node concept="356sEF" id="72kd6xmLIug" role="356sEH">
                <property role="TrG5h" value="_" />
              </node>
              <node concept="356sEF" id="72kd6xmLGJv" role="356sEH">
                <property role="TrG5h" value="name" />
                <node concept="17Uvod" id="72kd6xmLGJw" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="72kd6xmLGJx" role="3zH0cK">
                    <node concept="3clFbS" id="72kd6xmLGJy" role="2VODD2">
                      <node concept="3clFbF" id="72kd6xmLGJz" role="3cqZAp">
                        <node concept="2OqwBi" id="72kd6xmLGJ_" role="3clFbG">
                          <node concept="3TrcHB" id="72kd6xmLGJA" role="2OqNvi">
                            <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                          </node>
                          <node concept="30H73N" id="72kd6xmLGJB" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="72kd6xmLGJC" role="356sEH">
                <property role="TrG5h" value="Helper = new RChildSingleHelper&lt;" />
              </node>
              <node concept="356sEF" id="72kd6xmLGJD" role="356sEH">
                <property role="TrG5h" value="Todo" />
                <node concept="17Uvod" id="72kd6xmLGJE" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="72kd6xmLGJF" role="3zH0cK">
                    <node concept="3clFbS" id="72kd6xmLGJG" role="2VODD2">
                      <node concept="3clFbF" id="72kd6xmLGJH" role="3cqZAp">
                        <node concept="2OqwBi" id="72kd6xmLGJI" role="3clFbG">
                          <node concept="2OqwBi" id="72kd6xmLGJJ" role="2Oq$k0">
                            <node concept="2OqwBi" id="72kd6xmLGJK" role="2Oq$k0">
                              <node concept="1iwH7S" id="72kd6xmLGJL" role="2Oq$k0" />
                              <node concept="1psM6Z" id="72kd6xmLGJM" role="2OqNvi">
                                <ref role="1psM6Y" node="PKiUC7aIQo" resolve="concept" />
                              </node>
                            </node>
                            <node concept="2Xjw5R" id="72kd6xmLGJN" role="2OqNvi">
                              <node concept="1xMEDy" id="72kd6xmLGJO" role="1xVPHs">
                                <node concept="chp4Y" id="72kd6xmLGJP" role="ri$Ld">
                                  <ref role="cht4Q" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2qgKlT" id="72kd6xmLGJQ" role="2OqNvi">
                            <ref role="37wK5l" to="deao:PKiUC7b6Ck" resolve="GetTargetCodeFqName" />
                            <node concept="2OqwBi" id="72kd6xmLGJR" role="37wK5m">
                              <node concept="30H73N" id="72kd6xmLGJS" role="2Oq$k0" />
                              <node concept="3TrEf2" id="72kd6xmLGJT" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="72kd6xmLGJU" role="356sEH">
                <property role="TrG5h" value="&gt;(&quot;" />
              </node>
              <node concept="356sEF" id="72kd6xmLGJV" role="356sEH">
                <property role="TrG5h" value="role" />
                <node concept="17Uvod" id="72kd6xmLGJW" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="72kd6xmLGJX" role="3zH0cK">
                    <node concept="3clFbS" id="72kd6xmLGJY" role="2VODD2">
                      <node concept="3clFbF" id="72kd6xmLGJZ" role="3cqZAp">
                        <node concept="2OqwBi" id="72kd6xmLGK0" role="3clFbG">
                          <node concept="3TrcHB" id="72kd6xmLGK1" role="2OqNvi">
                            <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                          </node>
                          <node concept="30H73N" id="72kd6xmLGK2" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="72kd6xmLGK3" role="356sEH">
                <property role="TrG5h" value="&quot;, this, OnPropertyChanged, nameof(" />
              </node>
              <node concept="356sEF" id="72kd6xmLJLL" role="356sEH">
                <property role="TrG5h" value="name" />
                <node concept="17Uvod" id="72kd6xmLJLM" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="72kd6xmLJLN" role="3zH0cK">
                    <node concept="3clFbS" id="72kd6xmLJLO" role="2VODD2">
                      <node concept="3clFbF" id="72kd6xmLJLP" role="3cqZAp">
                        <node concept="2YIFZM" id="72kd6xmLJLQ" role="3clFbG">
                          <ref role="1Pybhc" to="9q87:PKiUC7gbpn" resolve="NameChanges" />
                          <ref role="37wK5l" to="9q87:PKiUC7gbqw" resolve="GetPropertyName" />
                          <node concept="2OqwBi" id="72kd6xmLJLR" role="37wK5m">
                            <node concept="30H73N" id="72kd6xmLJLS" role="2Oq$k0" />
                            <node concept="3TrcHB" id="72kd6xmLJLT" role="2OqNvi">
                              <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="72kd6xmLJgt" role="356sEH">
                <property role="TrG5h" value="));" />
              </node>
              <node concept="2EixSi" id="72kd6xmLGK4" role="2EinRH" />
              <node concept="1WS0z7" id="72kd6xmLGK5" role="lGtFl">
                <node concept="3JmXsc" id="72kd6xmLGK6" role="3Jn$fo">
                  <node concept="3clFbS" id="72kd6xmLGK7" role="2VODD2">
                    <node concept="3clFbF" id="72kd6xmLGK8" role="3cqZAp">
                      <node concept="2OqwBi" id="72kd6xmLGK9" role="3clFbG">
                        <node concept="2OqwBi" id="72kd6xmLGKa" role="2Oq$k0">
                          <node concept="2OqwBi" id="72kd6xmLGKb" role="2Oq$k0">
                            <node concept="2OqwBi" id="72kd6xmLGKc" role="2Oq$k0">
                              <node concept="30H73N" id="72kd6xmLGKd" role="2Oq$k0" />
                              <node concept="3TrEf2" id="72kd6xmLGKe" role="2OqNvi">
                                <ref role="3Tt5mk" to="74bf:PKiUC77gMt" resolve="concept" />
                              </node>
                            </node>
                            <node concept="2qgKlT" id="72kd6xmLGKf" role="2OqNvi">
                              <ref role="37wK5l" to="tpcn:hEwILLp" resolve="getAggregationLinkDeclarations" />
                            </node>
                          </node>
                          <node concept="66VNe" id="72kd6xmLGKg" role="2OqNvi">
                            <node concept="2OqwBi" id="72kd6xmLGKh" role="576Qk">
                              <node concept="2OqwBi" id="72kd6xmLGKi" role="2Oq$k0">
                                <node concept="2OqwBi" id="72kd6xmLGKj" role="2Oq$k0">
                                  <node concept="30H73N" id="72kd6xmLGKk" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="72kd6xmLGKl" role="2OqNvi">
                                    <ref role="3Tt5mk" to="74bf:PKiUC77gMt" resolve="concept" />
                                  </node>
                                </node>
                                <node concept="3TrEf2" id="72kd6xmLGKm" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tpce:f_TJDff" resolve="extends" />
                                </node>
                              </node>
                              <node concept="2qgKlT" id="72kd6xmLGKn" role="2OqNvi">
                                <ref role="37wK5l" to="tpcn:hEwILLp" resolve="getAggregationLinkDeclarations" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3zZkjj" id="72kd6xmLGKo" role="2OqNvi">
                          <node concept="1bVj0M" id="72kd6xmLGKp" role="23t8la">
                            <node concept="3clFbS" id="72kd6xmLGKq" role="1bW5cS">
                              <node concept="3clFbF" id="72kd6xmLGKr" role="3cqZAp">
                                <node concept="22lmx$" id="72kd6xmLGKs" role="3clFbG">
                                  <node concept="2OqwBi" id="72kd6xmLGKt" role="3uHU7w">
                                    <node concept="2OqwBi" id="72kd6xmLGKu" role="2Oq$k0">
                                      <node concept="37vLTw" id="72kd6xmLGKv" role="2Oq$k0">
                                        <ref role="3cqZAo" node="72kd6xmLGKD" resolve="it" />
                                      </node>
                                      <node concept="3TrcHB" id="72kd6xmLGKw" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpce:3Ftr4R6BH8A" resolve="sourceCardinality" />
                                      </node>
                                    </node>
                                    <node concept="21noJN" id="72kd6xmLGKx" role="2OqNvi">
                                      <node concept="21nZrQ" id="72kd6xmLGKy" role="21noJM">
                                        <ref role="21nZrZ" to="tpce:3Ftr4R6BFyi" resolve="_1" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="72kd6xmLGKz" role="3uHU7B">
                                    <node concept="2OqwBi" id="72kd6xmLGK$" role="2Oq$k0">
                                      <node concept="37vLTw" id="72kd6xmLGK_" role="2Oq$k0">
                                        <ref role="3cqZAo" node="72kd6xmLGKD" resolve="it" />
                                      </node>
                                      <node concept="3TrcHB" id="72kd6xmLGKA" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpce:3Ftr4R6BH8A" resolve="sourceCardinality" />
                                      </node>
                                    </node>
                                    <node concept="21noJN" id="72kd6xmLGKB" role="2OqNvi">
                                      <node concept="21nZrQ" id="72kd6xmLGKC" role="21noJM">
                                        <ref role="21nZrZ" to="tpce:3Ftr4R6BFyh" resolve="_0__1" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="72kd6xmLGKD" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="72kd6xmLGKE" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="72kd6xmLGKF" role="3cqZAp" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEK" id="4xyMrPJ7UCz" role="383Ya9">
              <node concept="2EixSi" id="4xyMrPJ7UC_" role="2EinRH" />
            </node>
            <node concept="356sEK" id="4xyMrPJ7VFG" role="383Ya9">
              <node concept="356sEF" id="4xyMrPJ7VFH" role="356sEH">
                <property role="TrG5h" value="// ReSharper disable once InvocationIsSkipped" />
              </node>
              <node concept="2EixSi" id="4xyMrPJ7VFI" role="2EinRH" />
            </node>
            <node concept="356sEK" id="4xyMrPJ7Wk_" role="383Ya9">
              <node concept="356sEF" id="4xyMrPJ7WkA" role="356sEH">
                <property role="TrG5h" value="#pragma warning disable S3251" />
              </node>
              <node concept="2EixSi" id="4xyMrPJ7WkB" role="2EinRH" />
            </node>
            <node concept="356sEK" id="4xyMrPJ7XnL" role="383Ya9">
              <node concept="356sEF" id="4xyMrPJ7XnM" role="356sEH">
                <property role="TrG5h" value="AfterConstructor();" />
              </node>
              <node concept="2EixSi" id="4xyMrPJ7XnN" role="2EinRH" />
            </node>
            <node concept="356sEK" id="4xyMrPJ7Y0K" role="383Ya9">
              <node concept="356sEF" id="4xyMrPJ7Y0L" role="356sEH">
                <property role="TrG5h" value="#pragma warning restore S3251" />
              </node>
              <node concept="2EixSi" id="4xyMrPJ7Y0M" role="2EinRH" />
            </node>
          </node>
          <node concept="356sEK" id="PKiUC78hT8" role="383Ya9">
            <node concept="356sEF" id="PKiUC78hT9" role="356sEH">
              <property role="TrG5h" value="}" />
            </node>
            <node concept="2EixSi" id="PKiUC78hTb" role="2EinRH" />
          </node>
          <node concept="356sEK" id="PKiUC78hTc" role="383Ya9">
            <node concept="2EixSi" id="PKiUC78hTf" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4xyMrPJ7Siz" role="383Ya9">
            <node concept="356sEF" id="4xyMrPJ7Si$" role="356sEH">
              <property role="TrG5h" value="// ReSharper disable once PartialMethodWithSinglePart" />
            </node>
            <node concept="2EixSi" id="4xyMrPJ7Si_" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4xyMrPJ8uWI" role="383Ya9">
            <node concept="356sEF" id="4xyMrPJ8xiZ" role="356sEH">
              <property role="TrG5h" value="#pragma warning disable S3251" />
            </node>
            <node concept="2EixSi" id="4xyMrPJ8uWK" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4xyMrPJ7QI9" role="383Ya9">
            <node concept="356sEF" id="4xyMrPJ7Six" role="356sEH">
              <property role="TrG5h" value="partial void AfterConstructor();" />
            </node>
            <node concept="2EixSi" id="4xyMrPJ7QIb" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4xyMrPJ8xj1" role="383Ya9">
            <node concept="356sEF" id="4xyMrPJ8xj2" role="356sEH">
              <property role="TrG5h" value="#pragma warning restore S3251" />
            </node>
            <node concept="2EixSi" id="4xyMrPJ8xj3" role="2EinRH" />
          </node>
          <node concept="356sEK" id="4xyMrPJ7Ooe" role="383Ya9">
            <node concept="2EixSi" id="4xyMrPJ7Oog" role="2EinRH" />
          </node>
          <node concept="356WMU" id="6_xZaXNx7Ag" role="383Ya9">
            <node concept="356sEK" id="6_xZaXNxdS8" role="383Ya9">
              <node concept="2EixSi" id="6_xZaXNxdS9" role="2EinRH" />
              <node concept="2b32R4" id="6_xZaXNxdSa" role="lGtFl">
                <node concept="3JmXsc" id="6_xZaXNxdSb" role="2P8S$">
                  <node concept="3clFbS" id="6_xZaXNxdSc" role="2VODD2">
                    <node concept="3clFbF" id="6_xZaXNxdSd" role="3cqZAp">
                      <node concept="2OqwBi" id="6_xZaXNxdSe" role="3clFbG">
                        <node concept="2OqwBi" id="6_xZaXNxdSf" role="2Oq$k0">
                          <node concept="2OqwBi" id="6_xZaXNxdSg" role="2Oq$k0">
                            <node concept="2OqwBi" id="6_xZaXNxdSh" role="2Oq$k0">
                              <node concept="1iwH7S" id="6_xZaXNxdSi" role="2Oq$k0" />
                              <node concept="1psM6Z" id="6_xZaXNxdSj" role="2OqNvi">
                                <ref role="1psM6Y" node="PKiUC7aIQo" resolve="concept" />
                              </node>
                            </node>
                            <node concept="3Tsc0h" id="6_xZaXNxdSk" role="2OqNvi">
                              <ref role="3TtcxE" to="74bf:6_xZaXNvZn6" resolve="additions" />
                            </node>
                          </node>
                          <node concept="1z4cxt" id="6_xZaXNxdSl" role="2OqNvi">
                            <node concept="1bVj0M" id="6_xZaXNxdSm" role="23t8la">
                              <node concept="3clFbS" id="6_xZaXNxdSn" role="1bW5cS">
                                <node concept="3clFbF" id="6_xZaXNxdSo" role="3cqZAp">
                                  <node concept="3clFbC" id="6_xZaXNxdSp" role="3clFbG">
                                    <node concept="30H73N" id="6_xZaXNxeFQ" role="3uHU7w" />
                                    <node concept="2OqwBi" id="6_xZaXNxdSr" role="3uHU7B">
                                      <node concept="37vLTw" id="6_xZaXNxdSs" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6_xZaXNxdSu" resolve="it" />
                                      </node>
                                      <node concept="3TrEf2" id="6_xZaXNxdSt" role="2OqNvi">
                                        <ref role="3Tt5mk" to="74bf:6_xZaXNv8$Y" resolve="target" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="6_xZaXNxdSu" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="6_xZaXNxdSv" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3Tsc0h" id="6_xZaXNxdSw" role="2OqNvi">
                          <ref role="3TtcxE" to="74bf:6_xZaXNwdfJ" resolve="additions" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEK" id="6_xZaXNx5L2" role="383Ya9">
              <node concept="356sEF" id="6_xZaXNx8Os" role="356sEH">
                <property role="TrG5h" value="public RCollection&lt;" />
              </node>
              <node concept="356sEF" id="6_xZaXNx8Ot" role="356sEH">
                <property role="TrG5h" value="type" />
                <node concept="17Uvod" id="6_xZaXNx8Ou" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="6_xZaXNx8Ov" role="3zH0cK">
                    <node concept="3clFbS" id="6_xZaXNx8Ow" role="2VODD2">
                      <node concept="3clFbF" id="6_xZaXNx8Ox" role="3cqZAp">
                        <node concept="2OqwBi" id="6_xZaXNx8Oy" role="3clFbG">
                          <node concept="2OqwBi" id="6_xZaXNx8Oz" role="2Oq$k0">
                            <node concept="2OqwBi" id="6_xZaXNx8O$" role="2Oq$k0">
                              <node concept="1iwH7S" id="6_xZaXNx8O_" role="2Oq$k0" />
                              <node concept="1psM6Z" id="6_xZaXNx8OA" role="2OqNvi">
                                <ref role="1psM6Y" node="PKiUC7aIQo" resolve="concept" />
                              </node>
                            </node>
                            <node concept="2Xjw5R" id="6_xZaXNx8OB" role="2OqNvi">
                              <node concept="1xMEDy" id="6_xZaXNx8OC" role="1xVPHs">
                                <node concept="chp4Y" id="6_xZaXNx8OD" role="ri$Ld">
                                  <ref role="cht4Q" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2qgKlT" id="6_xZaXNx8OE" role="2OqNvi">
                            <ref role="37wK5l" to="deao:PKiUC7b6Ck" resolve="GetTargetCodeFqName" />
                            <node concept="2OqwBi" id="6_xZaXNx8OF" role="37wK5m">
                              <node concept="30H73N" id="6_xZaXNx8OG" role="2Oq$k0" />
                              <node concept="3TrEf2" id="6_xZaXNx8OH" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="6_xZaXNx8OI" role="356sEH">
                <property role="TrG5h" value="&gt; " />
              </node>
              <node concept="356sEF" id="6_xZaXNx8OJ" role="356sEH">
                <property role="TrG5h" value="name" />
                <node concept="17Uvod" id="6_xZaXNx8OK" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="6_xZaXNx8OL" role="3zH0cK">
                    <node concept="3clFbS" id="6_xZaXNx8OM" role="2VODD2">
                      <node concept="3clFbF" id="6_xZaXNx8ON" role="3cqZAp">
                        <node concept="2YIFZM" id="6_xZaXNx8OO" role="3clFbG">
                          <ref role="37wK5l" to="9q87:PKiUC7gbqw" resolve="GetPropertyName" />
                          <ref role="1Pybhc" to="9q87:PKiUC7gbpn" resolve="NameChanges" />
                          <node concept="2OqwBi" id="6_xZaXNx8OP" role="37wK5m">
                            <node concept="3TrcHB" id="6_xZaXNx8OQ" role="2OqNvi">
                              <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                            </node>
                            <node concept="30H73N" id="6_xZaXNx8OR" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="6_xZaXNx8OS" role="356sEH">
                <property role="TrG5h" value=" { get; }" />
              </node>
              <node concept="2EixSi" id="6_xZaXNx5L4" role="2EinRH" />
            </node>
            <node concept="1WS0z7" id="6_xZaXNx8C$" role="lGtFl">
              <node concept="3JmXsc" id="6_xZaXNx8C_" role="3Jn$fo">
                <node concept="3clFbS" id="6_xZaXNx8CA" role="2VODD2">
                  <node concept="3clFbF" id="72kd6xmLKLA" role="3cqZAp">
                    <node concept="2OqwBi" id="72kd6xmLKLB" role="3clFbG">
                      <node concept="2OqwBi" id="72kd6xmLKLC" role="2Oq$k0">
                        <node concept="2OqwBi" id="72kd6xmLKLD" role="2Oq$k0">
                          <node concept="2OqwBi" id="72kd6xmLKLE" role="2Oq$k0">
                            <node concept="30H73N" id="72kd6xmLKLF" role="2Oq$k0" />
                            <node concept="3TrEf2" id="72kd6xmLKLG" role="2OqNvi">
                              <ref role="3Tt5mk" to="74bf:PKiUC77gMt" resolve="concept" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="72kd6xmLKLH" role="2OqNvi">
                            <ref role="37wK5l" to="tpcn:hEwILLp" resolve="getAggregationLinkDeclarations" />
                          </node>
                        </node>
                        <node concept="66VNe" id="72kd6xmLKLI" role="2OqNvi">
                          <node concept="2OqwBi" id="72kd6xmLKLJ" role="576Qk">
                            <node concept="2OqwBi" id="72kd6xmLKLK" role="2Oq$k0">
                              <node concept="2OqwBi" id="72kd6xmLKLL" role="2Oq$k0">
                                <node concept="30H73N" id="72kd6xmLKLM" role="2Oq$k0" />
                                <node concept="3TrEf2" id="72kd6xmLKLN" role="2OqNvi">
                                  <ref role="3Tt5mk" to="74bf:PKiUC77gMt" resolve="concept" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="72kd6xmLKLO" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpce:f_TJDff" resolve="extends" />
                              </node>
                            </node>
                            <node concept="2qgKlT" id="72kd6xmLKLP" role="2OqNvi">
                              <ref role="37wK5l" to="tpcn:hEwILLp" resolve="getAggregationLinkDeclarations" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3zZkjj" id="72kd6xmLKLQ" role="2OqNvi">
                        <node concept="1bVj0M" id="72kd6xmLKLR" role="23t8la">
                          <node concept="3clFbS" id="72kd6xmLKLS" role="1bW5cS">
                            <node concept="3clFbF" id="72kd6xmLKLT" role="3cqZAp">
                              <node concept="22lmx$" id="72kd6xmLKLU" role="3clFbG">
                                <node concept="2OqwBi" id="72kd6xmLKLV" role="3uHU7w">
                                  <node concept="2OqwBi" id="72kd6xmLKLW" role="2Oq$k0">
                                    <node concept="37vLTw" id="72kd6xmLKLX" role="2Oq$k0">
                                      <ref role="3cqZAo" node="72kd6xmLKM7" resolve="it" />
                                    </node>
                                    <node concept="3TrcHB" id="72kd6xmLKLY" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpce:3Ftr4R6BH8A" resolve="sourceCardinality" />
                                    </node>
                                  </node>
                                  <node concept="21noJN" id="72kd6xmLKLZ" role="2OqNvi">
                                    <node concept="21nZrQ" id="72kd6xmLKM0" role="21noJM">
                                      <ref role="21nZrZ" to="tpce:3Ftr4R6BFyk" resolve="_1__n" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="72kd6xmLKM1" role="3uHU7B">
                                  <node concept="2OqwBi" id="72kd6xmLKM2" role="2Oq$k0">
                                    <node concept="37vLTw" id="72kd6xmLKM3" role="2Oq$k0">
                                      <ref role="3cqZAo" node="72kd6xmLKM7" resolve="it" />
                                    </node>
                                    <node concept="3TrcHB" id="72kd6xmLKM4" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpce:3Ftr4R6BH8A" resolve="sourceCardinality" />
                                    </node>
                                  </node>
                                  <node concept="21noJN" id="72kd6xmLKM5" role="2OqNvi">
                                    <node concept="21nZrQ" id="72kd6xmLKM6" role="21noJM">
                                      <ref role="21nZrZ" to="tpce:3Ftr4R6BFyj" resolve="_0__n" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="72kd6xmLKM7" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="72kd6xmLKM8" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEK" id="PKiUC78hTk" role="383Ya9">
            <node concept="2EixSi" id="PKiUC78hTn" role="2EinRH" />
          </node>
          <node concept="356WMU" id="72kd6xmLW1E" role="383Ya9">
            <node concept="356sEK" id="72kd6xmLW1F" role="383Ya9">
              <node concept="356sEF" id="72kd6xmLW1G" role="356sEH">
                <property role="TrG5h" value="private readonly RChildSingleHelper&lt;" />
              </node>
              <node concept="356sEF" id="72kd6xmLZ9t" role="356sEH">
                <property role="TrG5h" value="Todo" />
                <node concept="17Uvod" id="72kd6xmLZ9u" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="72kd6xmLZ9v" role="3zH0cK">
                    <node concept="3clFbS" id="72kd6xmLZ9w" role="2VODD2">
                      <node concept="3clFbF" id="72kd6xmLZ9x" role="3cqZAp">
                        <node concept="2OqwBi" id="72kd6xmLZ9y" role="3clFbG">
                          <node concept="2OqwBi" id="72kd6xmLZ9z" role="2Oq$k0">
                            <node concept="2OqwBi" id="72kd6xmLZ9$" role="2Oq$k0">
                              <node concept="1iwH7S" id="72kd6xmLZ9_" role="2Oq$k0" />
                              <node concept="1psM6Z" id="72kd6xmLZ9A" role="2OqNvi">
                                <ref role="1psM6Y" node="PKiUC7aIQo" resolve="concept" />
                              </node>
                            </node>
                            <node concept="2Xjw5R" id="72kd6xmLZ9B" role="2OqNvi">
                              <node concept="1xMEDy" id="72kd6xmLZ9C" role="1xVPHs">
                                <node concept="chp4Y" id="72kd6xmLZ9D" role="ri$Ld">
                                  <ref role="cht4Q" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2qgKlT" id="72kd6xmLZ9E" role="2OqNvi">
                            <ref role="37wK5l" to="deao:PKiUC7b6Ck" resolve="GetTargetCodeFqName" />
                            <node concept="2OqwBi" id="72kd6xmLZ9F" role="37wK5m">
                              <node concept="30H73N" id="72kd6xmLZ9G" role="2Oq$k0" />
                              <node concept="3TrEf2" id="72kd6xmLZ9H" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="72kd6xmLZ9f" role="356sEH">
                <property role="TrG5h" value="&gt; _" />
              </node>
              <node concept="356sEF" id="72kd6xmM0Be" role="356sEH">
                <property role="TrG5h" value="name" />
                <node concept="17Uvod" id="72kd6xmM0Bf" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="72kd6xmM0Bg" role="3zH0cK">
                    <node concept="3clFbS" id="72kd6xmM0Bh" role="2VODD2">
                      <node concept="3clFbF" id="72kd6xmM0Bi" role="3cqZAp">
                        <node concept="2OqwBi" id="72kd6xmM0Bj" role="3clFbG">
                          <node concept="3TrcHB" id="72kd6xmM0Bk" role="2OqNvi">
                            <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                          </node>
                          <node concept="30H73N" id="72kd6xmM0Bl" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="72kd6xmM0pV" role="356sEH">
                <property role="TrG5h" value="Helper;" />
              </node>
              <node concept="2EixSi" id="72kd6xmLW1I" role="2EinRH" />
            </node>
            <node concept="356sEK" id="1oTqnj_PalM" role="383Ya9">
              <node concept="2EixSi" id="1oTqnj_PalN" role="2EinRH" />
              <node concept="2b32R4" id="1oTqnj_PalO" role="lGtFl">
                <node concept="3JmXsc" id="1oTqnj_PalP" role="2P8S$">
                  <node concept="3clFbS" id="1oTqnj_PalQ" role="2VODD2">
                    <node concept="3clFbF" id="1oTqnj_PalR" role="3cqZAp">
                      <node concept="2OqwBi" id="1oTqnj_PalS" role="3clFbG">
                        <node concept="2OqwBi" id="1oTqnj_PalT" role="2Oq$k0">
                          <node concept="2OqwBi" id="1oTqnj_PalU" role="2Oq$k0">
                            <node concept="2OqwBi" id="1oTqnj_PalV" role="2Oq$k0">
                              <node concept="1iwH7S" id="1oTqnj_PalW" role="2Oq$k0" />
                              <node concept="1psM6Z" id="1oTqnj_PalX" role="2OqNvi">
                                <ref role="1psM6Y" node="PKiUC7aIQo" resolve="concept" />
                              </node>
                            </node>
                            <node concept="3Tsc0h" id="1oTqnj_PalY" role="2OqNvi">
                              <ref role="3TtcxE" to="74bf:6_xZaXNvZn6" resolve="additions" />
                            </node>
                          </node>
                          <node concept="1z4cxt" id="1oTqnj_PalZ" role="2OqNvi">
                            <node concept="1bVj0M" id="1oTqnj_Pam0" role="23t8la">
                              <node concept="3clFbS" id="1oTqnj_Pam1" role="1bW5cS">
                                <node concept="3clFbF" id="1oTqnj_Pam2" role="3cqZAp">
                                  <node concept="3clFbC" id="1oTqnj_Pam3" role="3clFbG">
                                    <node concept="30H73N" id="1oTqnj_Pam4" role="3uHU7w" />
                                    <node concept="2OqwBi" id="1oTqnj_Pam5" role="3uHU7B">
                                      <node concept="37vLTw" id="1oTqnj_Pam6" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1oTqnj_Pam8" resolve="it" />
                                      </node>
                                      <node concept="3TrEf2" id="1oTqnj_Pam7" role="2OqNvi">
                                        <ref role="3Tt5mk" to="74bf:6_xZaXNv8$Y" resolve="target" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="1oTqnj_Pam8" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="1oTqnj_Pam9" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3Tsc0h" id="1oTqnj_Pama" role="2OqNvi">
                          <ref role="3TtcxE" to="74bf:6_xZaXNwdfJ" resolve="additions" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEK" id="72kd6xmLW1K" role="383Ya9">
              <node concept="356sEF" id="72kd6xmLW1L" role="356sEH">
                <property role="TrG5h" value="public " />
              </node>
              <node concept="356sEF" id="72kd6xmM0Kn" role="356sEH">
                <property role="TrG5h" value="Todo" />
                <node concept="17Uvod" id="72kd6xmM0Ko" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="72kd6xmM0Kp" role="3zH0cK">
                    <node concept="3clFbS" id="72kd6xmM0Kq" role="2VODD2">
                      <node concept="3clFbF" id="72kd6xmM0Kr" role="3cqZAp">
                        <node concept="2OqwBi" id="72kd6xmM0Ks" role="3clFbG">
                          <node concept="2OqwBi" id="72kd6xmM0Kt" role="2Oq$k0">
                            <node concept="2OqwBi" id="72kd6xmM0Ku" role="2Oq$k0">
                              <node concept="1iwH7S" id="72kd6xmM0Kv" role="2Oq$k0" />
                              <node concept="1psM6Z" id="72kd6xmM0Kw" role="2OqNvi">
                                <ref role="1psM6Y" node="PKiUC7aIQo" resolve="concept" />
                              </node>
                            </node>
                            <node concept="2Xjw5R" id="72kd6xmM0Kx" role="2OqNvi">
                              <node concept="1xMEDy" id="72kd6xmM0Ky" role="1xVPHs">
                                <node concept="chp4Y" id="72kd6xmM0Kz" role="ri$Ld">
                                  <ref role="cht4Q" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2qgKlT" id="72kd6xmM0K$" role="2OqNvi">
                            <ref role="37wK5l" to="deao:PKiUC7b6Ck" resolve="GetTargetCodeFqName" />
                            <node concept="2OqwBi" id="72kd6xmM0K_" role="37wK5m">
                              <node concept="30H73N" id="72kd6xmM0KA" role="2Oq$k0" />
                              <node concept="3TrEf2" id="72kd6xmM0KB" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="72kd6xmM0Kj" role="356sEH">
                <property role="TrG5h" value=" " />
              </node>
              <node concept="356sEF" id="72kd6xmNRdr" role="356sEH">
                <property role="TrG5h" value="name" />
                <node concept="17Uvod" id="72kd6xmNRds" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="72kd6xmNRdt" role="3zH0cK">
                    <node concept="3clFbS" id="72kd6xmNRdu" role="2VODD2">
                      <node concept="3clFbF" id="72kd6xmNRdv" role="3cqZAp">
                        <node concept="2YIFZM" id="72kd6xmNRdw" role="3clFbG">
                          <ref role="1Pybhc" to="9q87:PKiUC7gbpn" resolve="NameChanges" />
                          <ref role="37wK5l" to="9q87:PKiUC7gbqw" resolve="GetPropertyName" />
                          <node concept="2OqwBi" id="72kd6xmNRdx" role="37wK5m">
                            <node concept="3TrcHB" id="72kd6xmNRdy" role="2OqNvi">
                              <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                            </node>
                            <node concept="30H73N" id="72kd6xmNRdz" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2EixSi" id="72kd6xmLW1N" role="2EinRH" />
            </node>
            <node concept="356sEK" id="72kd6xmLW1O" role="383Ya9">
              <node concept="356sEF" id="72kd6xmLW1P" role="356sEH">
                <property role="TrG5h" value="{" />
              </node>
              <node concept="2EixSi" id="72kd6xmLW1R" role="2EinRH" />
            </node>
            <node concept="356sEQ" id="72kd6xmLW1W" role="383Ya9">
              <property role="333NGx" value="    " />
              <node concept="356sEK" id="72kd6xmLW1S" role="383Ya9">
                <node concept="356sEF" id="72kd6xmLW1T" role="356sEH">
                  <property role="TrG5h" value="get =&gt; _" />
                </node>
                <node concept="356sEF" id="72kd6xmM1LR" role="356sEH">
                  <property role="TrG5h" value="name" />
                  <node concept="17Uvod" id="72kd6xmM1LS" role="lGtFl">
                    <property role="2qtEX9" value="name" />
                    <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                    <node concept="3zFVjK" id="72kd6xmM1LT" role="3zH0cK">
                      <node concept="3clFbS" id="72kd6xmM1LU" role="2VODD2">
                        <node concept="3clFbF" id="72kd6xmM1LV" role="3cqZAp">
                          <node concept="2OqwBi" id="72kd6xmM1LW" role="3clFbG">
                            <node concept="3TrcHB" id="72kd6xmM1LX" role="2OqNvi">
                              <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                            </node>
                            <node concept="30H73N" id="72kd6xmM1LY" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="356sEF" id="72kd6xmM1LN" role="356sEH">
                  <property role="TrG5h" value="Helper.Value;" />
                </node>
                <node concept="2EixSi" id="72kd6xmLW1V" role="2EinRH" />
              </node>
              <node concept="356sEK" id="72kd6xmLW1X" role="383Ya9">
                <node concept="356sEF" id="72kd6xmLW1Y" role="356sEH">
                  <property role="TrG5h" value="set =&gt; _" />
                </node>
                <node concept="356sEF" id="72kd6xmM207" role="356sEH">
                  <property role="TrG5h" value="name" />
                  <node concept="17Uvod" id="72kd6xmM208" role="lGtFl">
                    <property role="2qtEX9" value="name" />
                    <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                    <node concept="3zFVjK" id="72kd6xmM209" role="3zH0cK">
                      <node concept="3clFbS" id="72kd6xmM20a" role="2VODD2">
                        <node concept="3clFbF" id="72kd6xmM20b" role="3cqZAp">
                          <node concept="2OqwBi" id="72kd6xmM20c" role="3clFbG">
                            <node concept="3TrcHB" id="72kd6xmM20d" role="2OqNvi">
                              <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                            </node>
                            <node concept="30H73N" id="72kd6xmM20e" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="356sEF" id="72kd6xmM203" role="356sEH">
                  <property role="TrG5h" value="Helper.Value = value;" />
                </node>
                <node concept="2EixSi" id="72kd6xmLW20" role="2EinRH" />
              </node>
            </node>
            <node concept="356sEK" id="72kd6xmLW21" role="383Ya9">
              <node concept="356sEF" id="72kd6xmLW22" role="356sEH">
                <property role="TrG5h" value="}" />
              </node>
              <node concept="2EixSi" id="72kd6xmLW24" role="2EinRH" />
            </node>
            <node concept="1WS0z7" id="72kd6xmLYdi" role="lGtFl">
              <node concept="3JmXsc" id="72kd6xmLYdj" role="3Jn$fo">
                <node concept="3clFbS" id="72kd6xmLYdk" role="2VODD2">
                  <node concept="3clFbF" id="72kd6xmLYg7" role="3cqZAp">
                    <node concept="2OqwBi" id="72kd6xmLYg9" role="3clFbG">
                      <node concept="2OqwBi" id="72kd6xmLYga" role="2Oq$k0">
                        <node concept="2OqwBi" id="72kd6xmLYgb" role="2Oq$k0">
                          <node concept="2OqwBi" id="72kd6xmLYgc" role="2Oq$k0">
                            <node concept="30H73N" id="72kd6xmLYgd" role="2Oq$k0" />
                            <node concept="3TrEf2" id="72kd6xmLYge" role="2OqNvi">
                              <ref role="3Tt5mk" to="74bf:PKiUC77gMt" resolve="concept" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="72kd6xmLYgf" role="2OqNvi">
                            <ref role="37wK5l" to="tpcn:hEwILLp" resolve="getAggregationLinkDeclarations" />
                          </node>
                        </node>
                        <node concept="66VNe" id="72kd6xmLYgg" role="2OqNvi">
                          <node concept="2OqwBi" id="72kd6xmLYgh" role="576Qk">
                            <node concept="2OqwBi" id="72kd6xmLYgi" role="2Oq$k0">
                              <node concept="2OqwBi" id="72kd6xmLYgj" role="2Oq$k0">
                                <node concept="30H73N" id="72kd6xmLYgk" role="2Oq$k0" />
                                <node concept="3TrEf2" id="72kd6xmLYgl" role="2OqNvi">
                                  <ref role="3Tt5mk" to="74bf:PKiUC77gMt" resolve="concept" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="72kd6xmLYgm" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpce:f_TJDff" resolve="extends" />
                              </node>
                            </node>
                            <node concept="2qgKlT" id="72kd6xmLYgn" role="2OqNvi">
                              <ref role="37wK5l" to="tpcn:hEwILLp" resolve="getAggregationLinkDeclarations" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3zZkjj" id="72kd6xmLYgo" role="2OqNvi">
                        <node concept="1bVj0M" id="72kd6xmLYgp" role="23t8la">
                          <node concept="3clFbS" id="72kd6xmLYgq" role="1bW5cS">
                            <node concept="3clFbF" id="72kd6xmLYgr" role="3cqZAp">
                              <node concept="22lmx$" id="72kd6xmLYgs" role="3clFbG">
                                <node concept="2OqwBi" id="72kd6xmLYgt" role="3uHU7w">
                                  <node concept="2OqwBi" id="72kd6xmLYgu" role="2Oq$k0">
                                    <node concept="37vLTw" id="72kd6xmLYgv" role="2Oq$k0">
                                      <ref role="3cqZAo" node="72kd6xmLYgD" resolve="it" />
                                    </node>
                                    <node concept="3TrcHB" id="72kd6xmLYgw" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpce:3Ftr4R6BH8A" resolve="sourceCardinality" />
                                    </node>
                                  </node>
                                  <node concept="21noJN" id="72kd6xmLYgx" role="2OqNvi">
                                    <node concept="21nZrQ" id="72kd6xmLYgy" role="21noJM">
                                      <ref role="21nZrZ" to="tpce:3Ftr4R6BFyi" resolve="_1" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="72kd6xmLYgz" role="3uHU7B">
                                  <node concept="2OqwBi" id="72kd6xmLYg$" role="2Oq$k0">
                                    <node concept="37vLTw" id="72kd6xmLYg_" role="2Oq$k0">
                                      <ref role="3cqZAo" node="72kd6xmLYgD" resolve="it" />
                                    </node>
                                    <node concept="3TrcHB" id="72kd6xmLYgA" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpce:3Ftr4R6BH8A" resolve="sourceCardinality" />
                                    </node>
                                  </node>
                                  <node concept="21noJN" id="72kd6xmLYgB" role="2OqNvi">
                                    <node concept="21nZrQ" id="72kd6xmLYgC" role="21noJM">
                                      <ref role="21nZrZ" to="tpce:3Ftr4R6BFyh" resolve="_0__1" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="72kd6xmLYgD" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="72kd6xmLYgE" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEK" id="72kd6xmLNEr" role="383Ya9">
            <node concept="2EixSi" id="72kd6xmLNEt" role="2EinRH" />
          </node>
          <node concept="356WMU" id="5w895fhspJD" role="383Ya9">
            <node concept="356sEK" id="5w895fhspJE" role="383Ya9">
              <node concept="356sEF" id="5w895fhspJF" role="356sEH">
                <property role="TrG5h" value="private readonly RReferenceHelper&lt;" />
              </node>
              <node concept="356sEF" id="5w895fhstLU" role="356sEH">
                <property role="TrG5h" value="type" />
                <node concept="17Uvod" id="5w895fhstNl" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="5w895fhstNm" role="3zH0cK">
                    <node concept="3clFbS" id="5w895fhstNn" role="2VODD2">
                      <node concept="3clFbF" id="5w895fhstWd" role="3cqZAp">
                        <node concept="2OqwBi" id="5w895fhstWe" role="3clFbG">
                          <node concept="2OqwBi" id="5w895fhstWf" role="2Oq$k0">
                            <node concept="2OqwBi" id="5w895fhstWg" role="2Oq$k0">
                              <node concept="1iwH7S" id="5w895fhstWh" role="2Oq$k0" />
                              <node concept="1psM6Z" id="5w895fhstWi" role="2OqNvi">
                                <ref role="1psM6Y" node="PKiUC7aIQo" resolve="concept" />
                              </node>
                            </node>
                            <node concept="2Xjw5R" id="5w895fhstWj" role="2OqNvi">
                              <node concept="1xMEDy" id="5w895fhstWk" role="1xVPHs">
                                <node concept="chp4Y" id="5w895fhstWl" role="ri$Ld">
                                  <ref role="cht4Q" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2qgKlT" id="5w895fhstWm" role="2OqNvi">
                            <ref role="37wK5l" to="deao:PKiUC7b6Ck" resolve="GetTargetCodeFqName" />
                            <node concept="2OqwBi" id="5w895fhstWn" role="37wK5m">
                              <node concept="30H73N" id="5w895fhstWo" role="2Oq$k0" />
                              <node concept="3TrEf2" id="5w895fhstWp" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="5w895fhstLV" role="356sEH">
                <property role="TrG5h" value="&gt; _" />
              </node>
              <node concept="356sEF" id="5w895fhstM9" role="356sEH">
                <property role="TrG5h" value="name" />
                <node concept="17Uvod" id="5w895fhswwi" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="5w895fhswwl" role="3zH0cK">
                    <node concept="3clFbS" id="5w895fhswwm" role="2VODD2">
                      <node concept="3clFbF" id="5w895fhswws" role="3cqZAp">
                        <node concept="2OqwBi" id="5w895fhswwn" role="3clFbG">
                          <node concept="3TrcHB" id="5w895fhswwq" role="2OqNvi">
                            <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                          </node>
                          <node concept="30H73N" id="5w895fhswwr" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="5w895fhstMa" role="356sEH">
                <property role="TrG5h" value="Helper;" />
              </node>
              <node concept="2EixSi" id="5w895fhspJH" role="2EinRH" />
            </node>
            <node concept="356sEK" id="6_xZaXNx087" role="383Ya9">
              <node concept="2EixSi" id="6_xZaXNx089" role="2EinRH" />
              <node concept="2b32R4" id="6_xZaXNx0jC" role="lGtFl">
                <node concept="3JmXsc" id="6_xZaXNx0jD" role="2P8S$">
                  <node concept="3clFbS" id="6_xZaXNx0jE" role="2VODD2">
                    <node concept="3clFbF" id="6_xZaXNwKiU" role="3cqZAp">
                      <node concept="2OqwBi" id="6_xZaXNwXNM" role="3clFbG">
                        <node concept="2OqwBi" id="6_xZaXNwRic" role="2Oq$k0">
                          <node concept="2OqwBi" id="6_xZaXNwL6f" role="2Oq$k0">
                            <node concept="2OqwBi" id="6_xZaXNwKMg" role="2Oq$k0">
                              <node concept="1iwH7S" id="6_xZaXNwKiT" role="2Oq$k0" />
                              <node concept="1psM6Z" id="6_xZaXNwKRy" role="2OqNvi">
                                <ref role="1psM6Y" node="PKiUC7aIQo" resolve="concept" />
                              </node>
                            </node>
                            <node concept="3Tsc0h" id="6_xZaXNwLOL" role="2OqNvi">
                              <ref role="3TtcxE" to="74bf:6_xZaXNvZn6" resolve="additions" />
                            </node>
                          </node>
                          <node concept="1z4cxt" id="6_xZaXNwSju" role="2OqNvi">
                            <node concept="1bVj0M" id="6_xZaXNwSjw" role="23t8la">
                              <node concept="3clFbS" id="6_xZaXNwSjx" role="1bW5cS">
                                <node concept="3clFbF" id="6_xZaXNwSpx" role="3cqZAp">
                                  <node concept="3clFbC" id="6_xZaXNwX5C" role="3clFbG">
                                    <node concept="30H73N" id="6_xZaXNwXn8" role="3uHU7w" />
                                    <node concept="2OqwBi" id="6_xZaXNwWKk" role="3uHU7B">
                                      <node concept="37vLTw" id="6_xZaXNwSpw" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6_xZaXNwSjy" resolve="it" />
                                      </node>
                                      <node concept="3TrEf2" id="6_xZaXNwWOw" role="2OqNvi">
                                        <ref role="3Tt5mk" to="74bf:6_xZaXNv8$Y" resolve="target" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="6_xZaXNwSjy" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="6_xZaXNwSjz" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3Tsc0h" id="6_xZaXNwZ1t" role="2OqNvi">
                          <ref role="3TtcxE" to="74bf:6_xZaXNwdfJ" resolve="additions" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEK" id="5w895fhspJJ" role="383Ya9">
              <node concept="356sEF" id="5w895fhspJK" role="356sEH">
                <property role="TrG5h" value="public " />
              </node>
              <node concept="356sEF" id="5w895fhswVA" role="356sEH">
                <property role="TrG5h" value="type" />
                <node concept="17Uvod" id="5w895fhswVB" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="5w895fhswVC" role="3zH0cK">
                    <node concept="3clFbS" id="5w895fhswVD" role="2VODD2">
                      <node concept="3clFbF" id="5w895fhswVE" role="3cqZAp">
                        <node concept="2OqwBi" id="5w895fhswVF" role="3clFbG">
                          <node concept="2OqwBi" id="5w895fhswVG" role="2Oq$k0">
                            <node concept="2OqwBi" id="5w895fhswVH" role="2Oq$k0">
                              <node concept="1iwH7S" id="5w895fhswVI" role="2Oq$k0" />
                              <node concept="1psM6Z" id="5w895fhswVJ" role="2OqNvi">
                                <ref role="1psM6Y" node="PKiUC7aIQo" resolve="concept" />
                              </node>
                            </node>
                            <node concept="2Xjw5R" id="5w895fhswVK" role="2OqNvi">
                              <node concept="1xMEDy" id="5w895fhswVL" role="1xVPHs">
                                <node concept="chp4Y" id="5w895fhswVM" role="ri$Ld">
                                  <ref role="cht4Q" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2qgKlT" id="5w895fhswVN" role="2OqNvi">
                            <ref role="37wK5l" to="deao:PKiUC7b6Ck" resolve="GetTargetCodeFqName" />
                            <node concept="2OqwBi" id="5w895fhswVO" role="37wK5m">
                              <node concept="30H73N" id="5w895fhswVP" role="2Oq$k0" />
                              <node concept="3TrEf2" id="5w895fhswVQ" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="5w895fhstMC" role="356sEH">
                <property role="TrG5h" value=" " />
              </node>
              <node concept="356sEF" id="5w895fhsxCw" role="356sEH">
                <property role="TrG5h" value="name" />
                <node concept="17Uvod" id="5w895fhsxCx" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="5w895fhsxCy" role="3zH0cK">
                    <node concept="3clFbS" id="5w895fhsxCz" role="2VODD2">
                      <node concept="3clFbF" id="5w895fhsxIo" role="3cqZAp">
                        <node concept="2YIFZM" id="5w895fhsxK5" role="3clFbG">
                          <ref role="37wK5l" to="9q87:PKiUC7gbqw" resolve="GetPropertyName" />
                          <ref role="1Pybhc" to="9q87:PKiUC7gbpn" resolve="NameChanges" />
                          <node concept="2OqwBi" id="5w895fhsxZt" role="37wK5m">
                            <node concept="30H73N" id="5w895fhsxMg" role="2Oq$k0" />
                            <node concept="3TrcHB" id="5w895fhsysN" role="2OqNvi">
                              <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2EixSi" id="5w895fhspJM" role="2EinRH" />
            </node>
            <node concept="356sEK" id="5w895fhspJN" role="383Ya9">
              <node concept="356sEF" id="5w895fhspJO" role="356sEH">
                <property role="TrG5h" value="{" />
              </node>
              <node concept="2EixSi" id="5w895fhspJQ" role="2EinRH" />
            </node>
            <node concept="356sEQ" id="5w895fhspJV" role="383Ya9">
              <property role="333NGx" value="    " />
              <node concept="356sEK" id="5w895fhspJR" role="383Ya9">
                <node concept="356sEF" id="5w895fhspJS" role="356sEH">
                  <property role="TrG5h" value="get =&gt; _" />
                </node>
                <node concept="356sEF" id="5w895fhsxvY" role="356sEH">
                  <property role="TrG5h" value="name" />
                  <node concept="17Uvod" id="5w895fhsxvZ" role="lGtFl">
                    <property role="2qtEX9" value="name" />
                    <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                    <node concept="3zFVjK" id="5w895fhsxw0" role="3zH0cK">
                      <node concept="3clFbS" id="5w895fhsxw1" role="2VODD2">
                        <node concept="3clFbF" id="5w895fhsxw2" role="3cqZAp">
                          <node concept="2OqwBi" id="5w895fhsxw3" role="3clFbG">
                            <node concept="3TrcHB" id="5w895fhsxw4" role="2OqNvi">
                              <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                            </node>
                            <node concept="30H73N" id="5w895fhsxw5" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="356sEF" id="5w895fhstMS" role="356sEH">
                  <property role="TrG5h" value="Helper.Value;" />
                </node>
                <node concept="2EixSi" id="5w895fhspJU" role="2EinRH" />
              </node>
              <node concept="356sEK" id="5w895fhspJW" role="383Ya9">
                <node concept="356sEF" id="5w895fhspJX" role="356sEH">
                  <property role="TrG5h" value="set =&gt; _" />
                </node>
                <node concept="356sEF" id="5w895fhsxAl" role="356sEH">
                  <property role="TrG5h" value="name" />
                  <node concept="17Uvod" id="5w895fhsxAm" role="lGtFl">
                    <property role="2qtEX9" value="name" />
                    <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                    <node concept="3zFVjK" id="5w895fhsxAn" role="3zH0cK">
                      <node concept="3clFbS" id="5w895fhsxAo" role="2VODD2">
                        <node concept="3clFbF" id="5w895fhsxAp" role="3cqZAp">
                          <node concept="2OqwBi" id="5w895fhsxAq" role="3clFbG">
                            <node concept="3TrcHB" id="5w895fhsxAr" role="2OqNvi">
                              <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                            </node>
                            <node concept="30H73N" id="5w895fhsxAs" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="356sEF" id="5w895fhstN7" role="356sEH">
                  <property role="TrG5h" value="Helper.Value = value;" />
                </node>
                <node concept="2EixSi" id="5w895fhspJZ" role="2EinRH" />
              </node>
            </node>
            <node concept="356sEK" id="5w895fhspK0" role="383Ya9">
              <node concept="356sEF" id="5w895fhspK1" role="356sEH">
                <property role="TrG5h" value="}" />
              </node>
              <node concept="2EixSi" id="5w895fhspK3" role="2EinRH" />
            </node>
            <node concept="1WS0z7" id="5w895fhsqIm" role="lGtFl">
              <node concept="3JmXsc" id="5w895fhsqIn" role="3Jn$fo">
                <node concept="3clFbS" id="5w895fhsqIo" role="2VODD2">
                  <node concept="3clFbF" id="5w895fhsqLb" role="3cqZAp">
                    <node concept="2OqwBi" id="5w895fhsqLc" role="3clFbG">
                      <node concept="2OqwBi" id="5w895fhsrxk" role="2Oq$k0">
                        <node concept="2OqwBi" id="5w895fhsqLe" role="2Oq$k0">
                          <node concept="30H73N" id="5w895fhsqLf" role="2Oq$k0" />
                          <node concept="3TrEf2" id="5w895fhsqLg" role="2OqNvi">
                            <ref role="3Tt5mk" to="74bf:PKiUC77gMt" resolve="concept" />
                          </node>
                        </node>
                        <node concept="2qgKlT" id="5w895fhsrTg" role="2OqNvi">
                          <ref role="37wK5l" to="tpcn:hEwILL0" resolve="getReferenceLinkDeclarations" />
                        </node>
                      </node>
                      <node concept="66VNe" id="5w895fhsqLi" role="2OqNvi">
                        <node concept="2OqwBi" id="5w895fhstAl" role="576Qk">
                          <node concept="2OqwBi" id="5w895fhsqLk" role="2Oq$k0">
                            <node concept="2OqwBi" id="5w895fhsqLl" role="2Oq$k0">
                              <node concept="30H73N" id="5w895fhsqLm" role="2Oq$k0" />
                              <node concept="3TrEf2" id="5w895fhsqLn" role="2OqNvi">
                                <ref role="3Tt5mk" to="74bf:PKiUC77gMt" resolve="concept" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="5w895fhsqLo" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpce:f_TJDff" resolve="extends" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="5w895fhstIt" role="2OqNvi">
                            <ref role="37wK5l" to="tpcn:hEwILL0" resolve="getReferenceLinkDeclarations" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEK" id="5w895fhsnZG" role="383Ya9">
            <node concept="2EixSi" id="5w895fhsnZI" role="2EinRH" />
          </node>
          <node concept="356WMU" id="PKiUC78xus" role="383Ya9">
            <node concept="356sEK" id="PKiUC78hTo" role="383Ya9">
              <node concept="356sEF" id="PKiUC78hTp" role="356sEH">
                <property role="TrG5h" value="private readonly RPropertyHelper&lt;" />
              </node>
              <node concept="356sEF" id="PKiUC78F14" role="356sEH">
                <property role="TrG5h" value="Priority" />
                <node concept="17Uvod" id="PKiUC78FLM" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="PKiUC78FLN" role="3zH0cK">
                    <node concept="3clFbS" id="PKiUC78FLO" role="2VODD2">
                      <node concept="3clFbF" id="PKiUC78FQp" role="3cqZAp">
                        <node concept="2OqwBi" id="PKiUC7bhTr" role="3clFbG">
                          <node concept="2OqwBi" id="PKiUC7bhTs" role="2Oq$k0">
                            <node concept="2OqwBi" id="PKiUC7bhTt" role="2Oq$k0">
                              <node concept="1iwH7S" id="PKiUC7bhTu" role="2Oq$k0" />
                              <node concept="1psM6Z" id="PKiUC7bhTv" role="2OqNvi">
                                <ref role="1psM6Y" node="PKiUC7aIQo" resolve="concept" />
                              </node>
                            </node>
                            <node concept="2Xjw5R" id="PKiUC7bhTw" role="2OqNvi">
                              <node concept="1xMEDy" id="PKiUC7bhTx" role="1xVPHs">
                                <node concept="chp4Y" id="PKiUC7bhTy" role="ri$Ld">
                                  <ref role="cht4Q" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2qgKlT" id="PKiUC7bhTz" role="2OqNvi">
                            <ref role="37wK5l" to="deao:PKiUC7b6Ck" resolve="GetTargetCodeFqName" />
                            <node concept="2OqwBi" id="PKiUC7bhT$" role="37wK5m">
                              <node concept="30H73N" id="PKiUC7bhT_" role="2Oq$k0" />
                              <node concept="3TrEf2" id="PKiUC7bhTA" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpce:fKAX2Z_" resolve="dataType" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="PKiUC78F15" role="356sEH">
                <property role="TrG5h" value="&gt; _" />
              </node>
              <node concept="356sEF" id="PKiUC78DpY" role="356sEH">
                <property role="TrG5h" value="name" />
                <node concept="17Uvod" id="PKiUC78Dzc" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="PKiUC78Dzf" role="3zH0cK">
                    <node concept="3clFbS" id="PKiUC78Dzg" role="2VODD2">
                      <node concept="3clFbF" id="PKiUC78Dzm" role="3cqZAp">
                        <node concept="2OqwBi" id="PKiUC78Dzh" role="3clFbG">
                          <node concept="3TrcHB" id="PKiUC78Dzk" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                          <node concept="30H73N" id="PKiUC78Dzl" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="PKiUC78DpZ" role="356sEH">
                <property role="TrG5h" value="Helper;" />
              </node>
              <node concept="2EixSi" id="PKiUC78hTr" role="2EinRH" />
            </node>
            <node concept="356sEK" id="6_xZaXNx1r0" role="383Ya9">
              <node concept="2EixSi" id="6_xZaXNx1r1" role="2EinRH" />
              <node concept="2b32R4" id="6_xZaXNx1r2" role="lGtFl">
                <node concept="3JmXsc" id="6_xZaXNx1r3" role="2P8S$">
                  <node concept="3clFbS" id="6_xZaXNx1r4" role="2VODD2">
                    <node concept="3clFbF" id="6_xZaXNx1r5" role="3cqZAp">
                      <node concept="2OqwBi" id="6_xZaXNx1r6" role="3clFbG">
                        <node concept="2OqwBi" id="6_xZaXNx1r7" role="2Oq$k0">
                          <node concept="2OqwBi" id="6_xZaXNx1r8" role="2Oq$k0">
                            <node concept="2OqwBi" id="6_xZaXNx1r9" role="2Oq$k0">
                              <node concept="1iwH7S" id="6_xZaXNx1ra" role="2Oq$k0" />
                              <node concept="1psM6Z" id="6_xZaXNx1rb" role="2OqNvi">
                                <ref role="1psM6Y" node="PKiUC7aIQo" resolve="concept" />
                              </node>
                            </node>
                            <node concept="3Tsc0h" id="6_xZaXNx1rc" role="2OqNvi">
                              <ref role="3TtcxE" to="74bf:6_xZaXNvZn6" resolve="additions" />
                            </node>
                          </node>
                          <node concept="1z4cxt" id="6_xZaXNx1rd" role="2OqNvi">
                            <node concept="1bVj0M" id="6_xZaXNx1re" role="23t8la">
                              <node concept="3clFbS" id="6_xZaXNx1rf" role="1bW5cS">
                                <node concept="3clFbF" id="6_xZaXNx1rg" role="3cqZAp">
                                  <node concept="3clFbC" id="6_xZaXNx1rh" role="3clFbG">
                                    <node concept="30H73N" id="6_xZaXNx37O" role="3uHU7w" />
                                    <node concept="2OqwBi" id="6_xZaXNx1rj" role="3uHU7B">
                                      <node concept="37vLTw" id="6_xZaXNx1rk" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6_xZaXNx1rm" resolve="it" />
                                      </node>
                                      <node concept="3TrEf2" id="6_xZaXNx1rl" role="2OqNvi">
                                        <ref role="3Tt5mk" to="74bf:6_xZaXNv8$Y" resolve="target" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="6_xZaXNx1rm" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="6_xZaXNx1rn" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3Tsc0h" id="6_xZaXNx1ro" role="2OqNvi">
                          <ref role="3TtcxE" to="74bf:6_xZaXNwdfJ" resolve="additions" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEK" id="PKiUC78hTs" role="383Ya9">
              <node concept="356sEF" id="PKiUC78hTt" role="356sEH">
                <property role="TrG5h" value="public " />
              </node>
              <node concept="356sEF" id="PKiUC78Fbz" role="356sEH">
                <property role="TrG5h" value="Priority" />
                <node concept="17Uvod" id="PKiUC78IUF" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="PKiUC78IUG" role="3zH0cK">
                    <node concept="3clFbS" id="PKiUC78IUH" role="2VODD2">
                      <node concept="3clFbF" id="PKiUC78IZi" role="3cqZAp">
                        <node concept="2OqwBi" id="PKiUC7bi8U" role="3clFbG">
                          <node concept="2OqwBi" id="PKiUC7bi8V" role="2Oq$k0">
                            <node concept="2OqwBi" id="PKiUC7bi8W" role="2Oq$k0">
                              <node concept="1iwH7S" id="PKiUC7bi8X" role="2Oq$k0" />
                              <node concept="1psM6Z" id="PKiUC7bi8Y" role="2OqNvi">
                                <ref role="1psM6Y" node="PKiUC7aIQo" resolve="concept" />
                              </node>
                            </node>
                            <node concept="2Xjw5R" id="PKiUC7bi8Z" role="2OqNvi">
                              <node concept="1xMEDy" id="PKiUC7bi90" role="1xVPHs">
                                <node concept="chp4Y" id="PKiUC7bi91" role="ri$Ld">
                                  <ref role="cht4Q" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2qgKlT" id="PKiUC7bi92" role="2OqNvi">
                            <ref role="37wK5l" to="deao:PKiUC7b6Ck" resolve="GetTargetCodeFqName" />
                            <node concept="2OqwBi" id="PKiUC7bi93" role="37wK5m">
                              <node concept="30H73N" id="PKiUC7bi94" role="2Oq$k0" />
                              <node concept="3TrEf2" id="PKiUC7bi95" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpce:fKAX2Z_" resolve="dataType" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="PKiUC78Fb$" role="356sEH">
                <property role="TrG5h" value=" " />
              </node>
              <node concept="356sEF" id="PKiUC78COU" role="356sEH">
                <property role="TrG5h" value="name" />
                <node concept="17Uvod" id="PKiUC78CY6" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="PKiUC78CY9" role="3zH0cK">
                    <node concept="3clFbS" id="PKiUC78CYa" role="2VODD2">
                      <node concept="3clFbF" id="PKiUC7gt5x" role="3cqZAp">
                        <node concept="2YIFZM" id="PKiUC7gtch" role="3clFbG">
                          <ref role="37wK5l" to="9q87:PKiUC7gbqw" resolve="GetPropertyName" />
                          <ref role="1Pybhc" to="9q87:PKiUC7gbpn" resolve="NameChanges" />
                          <node concept="2OqwBi" id="PKiUC7gtf_" role="37wK5m">
                            <node concept="3TrcHB" id="PKiUC7gtfA" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                            <node concept="30H73N" id="PKiUC7gtfB" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2EixSi" id="PKiUC78hTv" role="2EinRH" />
            </node>
            <node concept="356sEK" id="PKiUC78hTw" role="383Ya9">
              <node concept="356sEF" id="PKiUC78hTx" role="356sEH">
                <property role="TrG5h" value="{" />
              </node>
              <node concept="2EixSi" id="PKiUC78hTz" role="2EinRH" />
            </node>
            <node concept="356sEQ" id="PKiUC78hTC" role="383Ya9">
              <property role="333NGx" value="    " />
              <node concept="356sEK" id="PKiUC78hT$" role="383Ya9">
                <node concept="356sEF" id="PKiUC78hT_" role="356sEH">
                  <property role="TrG5h" value="get =&gt; _" />
                </node>
                <node concept="356sEF" id="PKiUC78DJd" role="356sEH">
                  <property role="TrG5h" value="name" />
                  <node concept="17Uvod" id="PKiUC78EiD" role="lGtFl">
                    <property role="2qtEX9" value="name" />
                    <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                    <node concept="3zFVjK" id="PKiUC78EiG" role="3zH0cK">
                      <node concept="3clFbS" id="PKiUC78EiH" role="2VODD2">
                        <node concept="3clFbF" id="PKiUC78EiN" role="3cqZAp">
                          <node concept="2OqwBi" id="PKiUC78EiI" role="3clFbG">
                            <node concept="3TrcHB" id="PKiUC78EiL" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                            <node concept="30H73N" id="PKiUC78EiM" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="356sEF" id="PKiUC78DJe" role="356sEH">
                  <property role="TrG5h" value="Helper.Value;" />
                </node>
                <node concept="2EixSi" id="PKiUC78hTB" role="2EinRH" />
              </node>
              <node concept="356sEK" id="PKiUC78hTD" role="383Ya9">
                <node concept="356sEF" id="PKiUC78hTE" role="356sEH">
                  <property role="TrG5h" value="set =&gt; _" />
                </node>
                <node concept="356sEF" id="PKiUC78EuS" role="356sEH">
                  <property role="TrG5h" value="name" />
                  <node concept="17Uvod" id="PKiUC78EC6" role="lGtFl">
                    <property role="2qtEX9" value="name" />
                    <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                    <node concept="3zFVjK" id="PKiUC78EC9" role="3zH0cK">
                      <node concept="3clFbS" id="PKiUC78ECa" role="2VODD2">
                        <node concept="3clFbF" id="PKiUC78ECg" role="3cqZAp">
                          <node concept="2OqwBi" id="PKiUC78ECb" role="3clFbG">
                            <node concept="3TrcHB" id="PKiUC78ECe" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                            <node concept="30H73N" id="PKiUC78ECf" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="356sEF" id="PKiUC78EuT" role="356sEH">
                  <property role="TrG5h" value="Helper.Value = value;" />
                </node>
                <node concept="2EixSi" id="PKiUC78hTG" role="2EinRH" />
              </node>
            </node>
            <node concept="356sEK" id="PKiUC78hTH" role="383Ya9">
              <node concept="356sEF" id="PKiUC78hTI" role="356sEH">
                <property role="TrG5h" value="}" />
              </node>
              <node concept="2EixSi" id="PKiUC78hTK" role="2EinRH" />
            </node>
            <node concept="1WS0z7" id="PKiUC78xBj" role="lGtFl">
              <node concept="3JmXsc" id="PKiUC78xBk" role="3Jn$fo">
                <node concept="3clFbS" id="PKiUC78xBl" role="2VODD2">
                  <node concept="3clFbF" id="PKiUC7cg8o" role="3cqZAp">
                    <node concept="2OqwBi" id="PKiUC7nEJP" role="3clFbG">
                      <node concept="2OqwBi" id="PKiUC7m$XS" role="2Oq$k0">
                        <node concept="2OqwBi" id="PKiUC7cgCv" role="2Oq$k0">
                          <node concept="30H73N" id="PKiUC7cg8n" role="2Oq$k0" />
                          <node concept="3TrEf2" id="PKiUC7cgXv" role="2OqNvi">
                            <ref role="3Tt5mk" to="74bf:PKiUC77gMt" resolve="concept" />
                          </node>
                        </node>
                        <node concept="2qgKlT" id="PKiUC7m_Dk" role="2OqNvi">
                          <ref role="37wK5l" to="tpcn:hEwILLM" resolve="getPropertyDeclarations" />
                        </node>
                      </node>
                      <node concept="66VNe" id="PKiUC7nH_R" role="2OqNvi">
                        <node concept="2OqwBi" id="PKiUC7nJRp" role="576Qk">
                          <node concept="2OqwBi" id="PKiUC7nIOL" role="2Oq$k0">
                            <node concept="2OqwBi" id="PKiUC7nI81" role="2Oq$k0">
                              <node concept="30H73N" id="PKiUC7nHJx" role="2Oq$k0" />
                              <node concept="3TrEf2" id="PKiUC7nIqy" role="2OqNvi">
                                <ref role="3Tt5mk" to="74bf:PKiUC77gMt" resolve="concept" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="PKiUC7nJCL" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpce:f_TJDff" resolve="extends" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="PKiUC7nK3G" role="2OqNvi">
                            <ref role="37wK5l" to="tpcn:hEwILLM" resolve="getPropertyDeclarations" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEK" id="PKiUC78hTL" role="383Ya9">
            <node concept="2EixSi" id="PKiUC78hTO" role="2EinRH" />
          </node>
        </node>
        <node concept="356sEK" id="PKiUC78hUe" role="383Ya9">
          <node concept="356sEF" id="PKiUC78hUf" role="356sEH">
            <property role="TrG5h" value="}" />
          </node>
          <node concept="2EixSi" id="PKiUC78hUh" role="2EinRH" />
        </node>
      </node>
      <node concept="356sEK" id="PKiUC78hUi" role="383Ya9">
        <node concept="356sEF" id="PKiUC78hUj" role="356sEH">
          <property role="TrG5h" value="}" />
        </node>
        <node concept="2EixSi" id="PKiUC78hUl" role="2EinRH" />
      </node>
      <node concept="1ps_y7" id="PKiUC7aIQn" role="lGtFl">
        <node concept="1ps_xZ" id="PKiUC7aIQo" role="1ps_xO">
          <property role="TrG5h" value="concept" />
          <node concept="2jfdEK" id="PKiUC7aIQp" role="1ps_xN">
            <node concept="3clFbS" id="PKiUC7aIQq" role="2VODD2">
              <node concept="3clFbF" id="PKiUC7aJsi" role="3cqZAp">
                <node concept="30H73N" id="PKiUC7aJsh" role="3clFbG" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="n94m4" id="PKiUC78gGt" role="lGtFl">
      <ref role="n9lRv" to="74bf:PKiUC77gMs" resolve="ConceptClient" />
    </node>
    <node concept="17Uvod" id="PKiUC78gGv" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="PKiUC78gGw" role="3zH0cK">
        <node concept="3clFbS" id="PKiUC78gGx" role="2VODD2">
          <node concept="3clFbF" id="5w895fhxeeS" role="3cqZAp">
            <node concept="2OqwBi" id="5w895fhxera" role="3clFbG">
              <node concept="30H73N" id="5w895fhxeeR" role="2Oq$k0" />
              <node concept="2qgKlT" id="5w895fhxe$5" role="2OqNvi">
                <ref role="37wK5l" to="deao:5w895fhxaq_" resolve="GenerateFilename" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="356sEV" id="PKiUC78POC">
    <property role="TrG5h" value="Initialize" />
    <property role="3Le9LX" value=".cs" />
    <node concept="356WMU" id="PKiUC78PP6" role="356KY_">
      <node concept="356sEK" id="PKiUC78PP7" role="383Ya9">
        <node concept="356sEF" id="PKiUC78PP8" role="356sEH">
          <property role="TrG5h" value="using Sioux.RClient.Runtime;" />
        </node>
        <node concept="2EixSi" id="PKiUC78PPa" role="2EinRH" />
      </node>
      <node concept="356sEK" id="PKiUC78PPb" role="383Ya9">
        <node concept="2EixSi" id="PKiUC78PPe" role="2EinRH" />
      </node>
      <node concept="356sEK" id="PKiUC78PPf" role="383Ya9">
        <node concept="356sEF" id="PKiUC78PPg" role="356sEH">
          <property role="TrG5h" value="namespace " />
        </node>
        <node concept="356sEF" id="PKiUC7aFCV" role="356sEH">
          <property role="TrG5h" value="Namespace" />
          <node concept="17Uvod" id="PKiUC7aFCY" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="PKiUC7aFD1" role="3zH0cK">
              <node concept="3clFbS" id="PKiUC7aFD2" role="2VODD2">
                <node concept="3clFbF" id="PKiUC7aFD8" role="3cqZAp">
                  <node concept="2OqwBi" id="PKiUC7aFD3" role="3clFbG">
                    <node concept="3TrcHB" id="PKiUC7aFD6" role="2OqNvi">
                      <ref role="3TsBF5" to="74bf:PKiUC77KtY" resolve="baseTargetNameSpace" />
                    </node>
                    <node concept="30H73N" id="PKiUC7aFD7" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2EixSi" id="PKiUC78PPi" role="2EinRH" />
      </node>
      <node concept="356sEK" id="PKiUC78PPj" role="383Ya9">
        <node concept="356sEF" id="PKiUC78PPk" role="356sEH">
          <property role="TrG5h" value="{" />
        </node>
        <node concept="2EixSi" id="PKiUC78PPm" role="2EinRH" />
      </node>
      <node concept="356sEQ" id="PKiUC78PPr" role="383Ya9">
        <property role="333NGx" value="    " />
        <node concept="356sEK" id="PKiUC78PPn" role="383Ya9">
          <node concept="356sEF" id="PKiUC78PPo" role="356sEH">
            <property role="TrG5h" value="public class " />
          </node>
          <node concept="356sEF" id="PKiUC78XCv" role="356sEH">
            <property role="TrG5h" value="Todos" />
            <node concept="17Uvod" id="PKiUC78XC$" role="lGtFl">
              <property role="2qtEX9" value="name" />
              <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
              <node concept="3zFVjK" id="PKiUC78XCB" role="3zH0cK">
                <node concept="3clFbS" id="PKiUC78XCC" role="2VODD2">
                  <node concept="3clFbF" id="PKiUC78XCI" role="3cqZAp">
                    <node concept="2OqwBi" id="PKiUC78XCD" role="3clFbG">
                      <node concept="3TrcHB" id="PKiUC78XCG" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                      <node concept="30H73N" id="PKiUC78XCH" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="PKiUC78XCw" role="356sEH">
            <property role="TrG5h" value="Initialize: ILanguageInitialization" />
          </node>
          <node concept="2EixSi" id="PKiUC78PPq" role="2EinRH" />
        </node>
        <node concept="356sEK" id="PKiUC78PPs" role="383Ya9">
          <node concept="356sEF" id="PKiUC78PPt" role="356sEH">
            <property role="TrG5h" value="{" />
          </node>
          <node concept="2EixSi" id="PKiUC78PPv" role="2EinRH" />
        </node>
        <node concept="356sEQ" id="PKiUC78PP$" role="383Ya9">
          <property role="333NGx" value="    " />
          <node concept="356sEK" id="PKiUC78PPw" role="383Ya9">
            <node concept="356sEF" id="PKiUC78PPx" role="356sEH">
              <property role="TrG5h" value="public static void Register(IRClientFactory factory)" />
            </node>
            <node concept="2EixSi" id="PKiUC78PPz" role="2EinRH" />
          </node>
          <node concept="356sEK" id="PKiUC78PP_" role="383Ya9">
            <node concept="356sEF" id="PKiUC78PPA" role="356sEH">
              <property role="TrG5h" value="{" />
            </node>
            <node concept="2EixSi" id="PKiUC78PPC" role="2EinRH" />
          </node>
          <node concept="356sEQ" id="PKiUC78PPH" role="383Ya9">
            <property role="333NGx" value="    " />
            <node concept="356sEK" id="PKiUC78PPD" role="383Ya9">
              <node concept="356sEF" id="PKiUC78PPE" role="356sEH">
                <property role="TrG5h" value="factory.Register(typeof(" />
              </node>
              <node concept="356sEF" id="PKiUC78SrB" role="356sEH">
                <property role="TrG5h" value="conceptname" />
                <node concept="17Uvod" id="PKiUC78SzE" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="PKiUC78SzF" role="3zH0cK">
                    <node concept="3clFbS" id="PKiUC78SzG" role="2VODD2">
                      <node concept="3clFbF" id="PKiUC7aDUx" role="3cqZAp">
                        <node concept="2OqwBi" id="PKiUC7aE7K" role="3clFbG">
                          <node concept="30H73N" id="PKiUC7aDV0" role="2Oq$k0" />
                          <node concept="2qgKlT" id="PKiUC7aEnV" role="2OqNvi">
                            <ref role="37wK5l" to="deao:PKiUC7a_Oy" resolve="GetTargetCodeFqName" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="PKiUC78SrC" role="356sEH">
                <property role="TrG5h" value="), &quot;" />
              </node>
              <node concept="356sEF" id="PKiUC78VaU" role="356sEH">
                <property role="TrG5h" value="conceptname" />
                <node concept="17Uvod" id="PKiUC78W31" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="PKiUC78W32" role="3zH0cK">
                    <node concept="3clFbS" id="PKiUC78W33" role="2VODD2">
                      <node concept="3clFbF" id="PKiUC78W3r" role="3cqZAp">
                        <node concept="2OqwBi" id="PKiUC7bkEJ" role="3clFbG">
                          <node concept="30H73N" id="PKiUC7bjt4" role="2Oq$k0" />
                          <node concept="2qgKlT" id="PKiUC7bkV6" role="2OqNvi">
                            <ref role="37wK5l" to="deao:PKiUC7alj6" resolve="GetMPSCodeFqName" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="356sEF" id="PKiUC78TSV" role="356sEH">
                <property role="TrG5h" value="&quot;);" />
              </node>
              <node concept="2EixSi" id="PKiUC78PPG" role="2EinRH" />
              <node concept="1WS0z7" id="PKiUC78PQD" role="lGtFl">
                <node concept="3JmXsc" id="PKiUC78PQG" role="3Jn$fo">
                  <node concept="3clFbS" id="PKiUC78PQH" role="2VODD2">
                    <node concept="3clFbF" id="PKiUC78PQN" role="3cqZAp">
                      <node concept="2OqwBi" id="PKiUC78Rcm" role="3clFbG">
                        <node concept="2OqwBi" id="PKiUC78PQI" role="2Oq$k0">
                          <node concept="3Tsc0h" id="PKiUC78PQL" role="2OqNvi">
                            <ref role="3TtcxE" to="74bf:PKiUC77gUj" resolve="content" />
                          </node>
                          <node concept="30H73N" id="PKiUC78PQM" role="2Oq$k0" />
                        </node>
                        <node concept="v3k3i" id="PKiUC78SmZ" role="2OqNvi">
                          <node concept="chp4Y" id="PKiUC78Sos" role="v3oSu">
                            <ref role="cht4Q" to="74bf:PKiUC77gMs" resolve="ConceptClient" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEK" id="PKiUC78PPM" role="383Ya9">
            <node concept="356sEF" id="PKiUC78PPN" role="356sEH">
              <property role="TrG5h" value="}" />
            </node>
            <node concept="2EixSi" id="PKiUC78PPP" role="2EinRH" />
          </node>
          <node concept="356sEK" id="67VaKSIrlA5" role="383Ya9">
            <node concept="2EixSi" id="67VaKSIrlA7" role="2EinRH" />
          </node>
          <node concept="356sEK" id="67VaKSIrlXW" role="383Ya9">
            <node concept="356sEF" id="67VaKSIrlXX" role="356sEH">
              <property role="TrG5h" value="void ILanguageInitialization.Register(IRClientFactory factory)" />
            </node>
            <node concept="2EixSi" id="67VaKSIrlXZ" role="2EinRH" />
          </node>
          <node concept="356sEK" id="67VaKSIrlY1" role="383Ya9">
            <node concept="356sEF" id="67VaKSIrlY2" role="356sEH">
              <property role="TrG5h" value="{" />
            </node>
            <node concept="2EixSi" id="67VaKSIrlY4" role="2EinRH" />
          </node>
          <node concept="356sEQ" id="67VaKSIrlY9" role="383Ya9">
            <property role="333NGx" value="    " />
            <node concept="356sEK" id="67VaKSIrlY5" role="383Ya9">
              <node concept="356sEF" id="67VaKSIrlY6" role="356sEH">
                <property role="TrG5h" value="Register(factory);" />
              </node>
              <node concept="2EixSi" id="67VaKSIrlY8" role="2EinRH" />
            </node>
          </node>
          <node concept="356sEK" id="67VaKSIrlYa" role="383Ya9">
            <node concept="356sEF" id="67VaKSIrlYb" role="356sEH">
              <property role="TrG5h" value="}" />
            </node>
            <node concept="2EixSi" id="67VaKSIrlYd" role="2EinRH" />
          </node>
        </node>
        <node concept="356sEK" id="PKiUC78PPQ" role="383Ya9">
          <node concept="356sEF" id="PKiUC78PPR" role="356sEH">
            <property role="TrG5h" value="}" />
          </node>
          <node concept="2EixSi" id="PKiUC78PPT" role="2EinRH" />
        </node>
      </node>
      <node concept="356sEK" id="PKiUC78PPU" role="383Ya9">
        <node concept="356sEF" id="PKiUC78PPV" role="356sEH">
          <property role="TrG5h" value="}" />
        </node>
        <node concept="2EixSi" id="PKiUC78PPX" role="2EinRH" />
      </node>
    </node>
    <node concept="n94m4" id="PKiUC78POE" role="lGtFl">
      <ref role="n9lRv" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
    </node>
    <node concept="17Uvod" id="PKiUC78Y3Q" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="PKiUC78Y3R" role="3zH0cK">
        <node concept="3clFbS" id="PKiUC78Y3S" role="2VODD2">
          <node concept="3clFbF" id="5w895fhxWjE" role="3cqZAp">
            <node concept="3cpWs3" id="PKiUC78YR0" role="3clFbG">
              <node concept="Xl_RD" id="PKiUC78YR4" role="3uHU7w">
                <property role="Xl_RC" value="Initialize" />
              </node>
              <node concept="3cpWs3" id="5w895fhxWjG" role="3uHU7B">
                <node concept="3cpWs3" id="5w895fhxWjK" role="3uHU7B">
                  <node concept="2OqwBi" id="5w895fhxWjL" role="3uHU7B">
                    <node concept="30H73N" id="5w895fhxWjM" role="2Oq$k0" />
                    <node concept="3TrcHB" id="5w895fhxWjN" role="2OqNvi">
                      <ref role="3TsBF5" to="74bf:PKiUC77KtY" resolve="baseTargetNameSpace" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="5w895fhxWjO" role="3uHU7w">
                    <property role="Xl_RC" value="/" />
                  </node>
                </node>
                <node concept="2OqwBi" id="PKiUC78Ymh" role="3uHU7w">
                  <node concept="30H73N" id="PKiUC78Y9Y" role="2Oq$k0" />
                  <node concept="3TrcHB" id="PKiUC78Yv3" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5w895fhxWiK" role="3cqZAp" />
        </node>
      </node>
    </node>
  </node>
  <node concept="356sEV" id="PKiUC78YYH">
    <property role="TrG5h" value="project" />
    <property role="3Le9LX" value=".csproj" />
    <node concept="356WMU" id="PKiUC78YZc" role="356KY_">
      <node concept="356sEK" id="PKiUC78YZd" role="383Ya9">
        <node concept="356sEF" id="PKiUC78YZe" role="356sEH">
          <property role="TrG5h" value="&lt;Project Sdk=&quot;Microsoft.NET.Sdk&quot;&gt;" />
        </node>
        <node concept="2EixSi" id="PKiUC78YZg" role="2EinRH" />
      </node>
      <node concept="356sEK" id="PKiUC78YZh" role="383Ya9">
        <node concept="2EixSi" id="PKiUC78YZk" role="2EinRH" />
      </node>
      <node concept="356sEQ" id="PKiUC78YZp" role="383Ya9">
        <property role="333NGx" value="    " />
        <node concept="356sEK" id="PKiUC78YZl" role="383Ya9">
          <node concept="356sEF" id="PKiUC78YZm" role="356sEH">
            <property role="TrG5h" value="&lt;PropertyGroup&gt;" />
          </node>
          <node concept="2EixSi" id="PKiUC78YZo" role="2EinRH" />
        </node>
        <node concept="356sEQ" id="PKiUC78YZu" role="383Ya9">
          <property role="333NGx" value="    " />
          <node concept="356sEK" id="PKiUC78YZq" role="383Ya9">
            <node concept="356sEF" id="PKiUC78YZr" role="356sEH">
              <property role="TrG5h" value="&lt;TargetFramework&gt;" />
            </node>
            <node concept="356sEF" id="67VaKSIqC3h" role="356sEH">
              <property role="TrG5h" value="net5.0" />
              <node concept="17Uvod" id="67VaKSIqC3m" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="67VaKSIqC3p" role="3zH0cK">
                  <node concept="3clFbS" id="67VaKSIqC3q" role="2VODD2">
                    <node concept="3clFbF" id="67VaKSIqC3w" role="3cqZAp">
                      <node concept="2OqwBi" id="67VaKSIqC3r" role="3clFbG">
                        <node concept="3TrcHB" id="67VaKSIqC3u" role="2OqNvi">
                          <ref role="3TsBF5" to="74bf:67VaKSIpVGz" resolve="targetFramework" />
                        </node>
                        <node concept="30H73N" id="67VaKSIqC3v" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEF" id="67VaKSIqC3i" role="356sEH">
              <property role="TrG5h" value="&lt;/TargetFramework&gt;" />
            </node>
            <node concept="2EixSi" id="PKiUC78YZt" role="2EinRH" />
          </node>
          <node concept="356sEK" id="5w895fhyNjN" role="383Ya9">
            <node concept="356sEF" id="5w895fhyNjO" role="356sEH">
              <property role="TrG5h" value="&lt;Version&gt;" />
            </node>
            <node concept="356sEF" id="5w895fhyO$Q" role="356sEH">
              <property role="TrG5h" value="1.0.0" />
              <node concept="17Uvod" id="5w895fhyO$Y" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="5w895fhyO_1" role="3zH0cK">
                  <node concept="3clFbS" id="5w895fhyO_2" role="2VODD2">
                    <node concept="3clFbF" id="5w895fhyO_8" role="3cqZAp">
                      <node concept="2OqwBi" id="5w895fhyO_3" role="3clFbG">
                        <node concept="3TrcHB" id="5w895fhyO_6" role="2OqNvi">
                          <ref role="3TsBF5" to="74bf:5w895fhyNk2" resolve="version" />
                        </node>
                        <node concept="30H73N" id="5w895fhyO_7" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEF" id="5w895fhyO$R" role="356sEH">
              <property role="TrG5h" value="&lt;/Version&gt;" />
            </node>
            <node concept="2EixSi" id="5w895fhyNjP" role="2EinRH" />
          </node>
          <node concept="356sEK" id="67VaKSIr0YN" role="383Ya9">
            <node concept="356sEF" id="67VaKSIr0YO" role="356sEH">
              <property role="TrG5h" value="&lt;Nullable&gt;enable&lt;/Nullable&gt;" />
            </node>
            <node concept="2EixSi" id="67VaKSIr0YP" role="2EinRH" />
          </node>
        </node>
        <node concept="356sEK" id="PKiUC78YZv" role="383Ya9">
          <node concept="356sEF" id="PKiUC78YZw" role="356sEH">
            <property role="TrG5h" value="&lt;/PropertyGroup&gt;" />
          </node>
          <node concept="2EixSi" id="PKiUC78YZy" role="2EinRH" />
        </node>
        <node concept="356sEK" id="PKiUC78YZz" role="383Ya9">
          <node concept="2EixSi" id="PKiUC78YZA" role="2EinRH" />
        </node>
        <node concept="356sEK" id="PKiUC78YZB" role="383Ya9">
          <node concept="356sEF" id="PKiUC78YZC" role="356sEH">
            <property role="TrG5h" value="&lt;ItemGroup&gt;" />
          </node>
          <node concept="2EixSi" id="PKiUC78YZE" role="2EinRH" />
        </node>
        <node concept="356sEQ" id="PKiUC78YZJ" role="383Ya9">
          <property role="333NGx" value="  " />
          <node concept="356sEK" id="PKiUC78YZF" role="383Ya9">
            <node concept="356sEF" id="PKiUC78YZG" role="356sEH">
              <property role="TrG5h" value="&lt;PackageReference Include=&quot;DynamicData&quot; Version=&quot;7.3.1&quot; /&gt;" />
            </node>
            <node concept="2EixSi" id="PKiUC78YZI" role="2EinRH" />
          </node>
          <node concept="356sEK" id="PKiUC78YZK" role="383Ya9">
            <node concept="356sEF" id="PKiUC78YZL" role="356sEH">
              <property role="TrG5h" value="&lt;PackageReference Include=&quot;JetBrains.RdFramework&quot; Version=&quot;2021.3.1&quot; /&gt;" />
            </node>
            <node concept="2EixSi" id="PKiUC78YZN" role="2EinRH" />
          </node>
          <node concept="356sEK" id="5w895fhyz4P" role="383Ya9">
            <node concept="356sEF" id="5w895fhyz4Q" role="356sEH">
              <property role="TrG5h" value="&lt;PackageReference Include=&quot;" />
            </node>
            <node concept="356sEF" id="5w895fhz20y" role="356sEH">
              <property role="TrG5h" value="nugetpackage" />
              <node concept="17Uvod" id="5w895fhz242" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="5w895fhz245" role="3zH0cK">
                  <node concept="3clFbS" id="5w895fhz246" role="2VODD2">
                    <node concept="3clFbF" id="5w895fhz24c" role="3cqZAp">
                      <node concept="2OqwBi" id="5w895fhzDqR" role="3clFbG">
                        <node concept="30H73N" id="5w895fhz24b" role="2Oq$k0" />
                        <node concept="3TrcHB" id="5w895fhzDEN" role="2OqNvi">
                          <ref role="3TsBF5" to="74bf:5w895fhzCOE" resolve="nugetPackage" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEF" id="5w895fhz20z" role="356sEH">
              <property role="TrG5h" value="&quot; Version=&quot;" />
            </node>
            <node concept="356sEF" id="5w895fhz2RZ" role="356sEH">
              <property role="TrG5h" value="version" />
              <node concept="17Uvod" id="5w895fhz39g" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="5w895fhz39j" role="3zH0cK">
                  <node concept="3clFbS" id="5w895fhz39k" role="2VODD2">
                    <node concept="3clFbF" id="5w895fhz39q" role="3cqZAp">
                      <node concept="2OqwBi" id="5w895fhz39l" role="3clFbG">
                        <node concept="3TrcHB" id="5w895fhz39o" role="2OqNvi">
                          <ref role="3TsBF5" to="74bf:5w895fhyNk2" resolve="version" />
                        </node>
                        <node concept="30H73N" id="5w895fhz39p" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEF" id="5w895fhz2S0" role="356sEH">
              <property role="TrG5h" value="&quot; /&gt;" />
            </node>
            <node concept="2EixSi" id="5w895fhyz4R" role="2EinRH" />
            <node concept="1WS0z7" id="5w895fhyT0L" role="lGtFl">
              <node concept="3JmXsc" id="5w895fhyT0O" role="3Jn$fo">
                <node concept="3clFbS" id="5w895fhyT0P" role="2VODD2">
                  <node concept="3clFbF" id="5fYI6AyIvGv" role="3cqZAp">
                    <node concept="2OqwBi" id="5fYI6AyIwtb" role="3clFbG">
                      <node concept="2OqwBi" id="5fYI6AyIvZi" role="2Oq$k0">
                        <node concept="30H73N" id="5fYI6AyIvGu" role="2Oq$k0" />
                        <node concept="2qgKlT" id="5fYI6AyIwdl" role="2OqNvi">
                          <ref role="37wK5l" to="deao:5fYI6AyIjDP" resolve="GetAllDependencies" />
                        </node>
                      </node>
                      <node concept="3zZkjj" id="5fYI6AyIwFa" role="2OqNvi">
                        <node concept="1bVj0M" id="5fYI6AyIwFc" role="23t8la">
                          <node concept="3clFbS" id="5fYI6AyIwFd" role="1bW5cS">
                            <node concept="3clFbF" id="5fYI6AyIwPS" role="3cqZAp">
                              <node concept="3y3z36" id="5fYI6AyIxqa" role="3clFbG">
                                <node concept="2OqwBi" id="5fYI6AyIy07" role="3uHU7w">
                                  <node concept="30H73N" id="5fYI6AyIxC7" role="2Oq$k0" />
                                  <node concept="I4A8Y" id="5fYI6AyIyoo" role="2OqNvi" />
                                </node>
                                <node concept="2OqwBi" id="5fYI6AyIwZk" role="3uHU7B">
                                  <node concept="37vLTw" id="5fYI6AyIwPR" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5fYI6AyIwFe" resolve="it" />
                                  </node>
                                  <node concept="I4A8Y" id="5fYI6AyIx8X" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="5fYI6AyIwFe" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="5fYI6AyIwFf" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEK" id="67VaKSImOMO" role="383Ya9">
            <node concept="356sEF" id="67VaKSImUb2" role="356sEH">
              <property role="TrG5h" value="&lt;PackageReference Include=&quot;" />
            </node>
            <node concept="356sEF" id="67VaKSImUb3" role="356sEH">
              <property role="TrG5h" value="nugetpackage" />
              <node concept="17Uvod" id="67VaKSImUb4" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="67VaKSImUb5" role="3zH0cK">
                  <node concept="3clFbS" id="67VaKSImUb6" role="2VODD2">
                    <node concept="3clFbF" id="67VaKSImUb7" role="3cqZAp">
                      <node concept="2OqwBi" id="67VaKSImVm4" role="3clFbG">
                        <node concept="30H73N" id="67VaKSImUb9" role="2Oq$k0" />
                        <node concept="3TrcHB" id="67VaKSImWhY" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEF" id="67VaKSImUbb" role="356sEH">
              <property role="TrG5h" value="&quot; Version=&quot;" />
            </node>
            <node concept="356sEF" id="67VaKSImUbc" role="356sEH">
              <property role="TrG5h" value="version" />
              <node concept="17Uvod" id="67VaKSImUbd" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="67VaKSImUbe" role="3zH0cK">
                  <node concept="3clFbS" id="67VaKSImUbf" role="2VODD2">
                    <node concept="3clFbF" id="67VaKSImUbg" role="3cqZAp">
                      <node concept="2OqwBi" id="67VaKSImUUf" role="3clFbG">
                        <node concept="30H73N" id="67VaKSImUbj" role="2Oq$k0" />
                        <node concept="3TrcHB" id="67VaKSImVdA" role="2OqNvi">
                          <ref role="3TsBF5" to="74bf:67VaKSImrra" resolve="version" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEF" id="67VaKSImUbk" role="356sEH">
              <property role="TrG5h" value="&quot; /&gt;" />
            </node>
            <node concept="2EixSi" id="67VaKSImOMQ" role="2EinRH" />
            <node concept="1WS0z7" id="67VaKSImOTg" role="lGtFl">
              <node concept="3JmXsc" id="67VaKSImOTh" role="3Jn$fo">
                <node concept="3clFbS" id="67VaKSImOTi" role="2VODD2">
                  <node concept="3clFbF" id="67VaKSImOVY" role="3cqZAp">
                    <node concept="2OqwBi" id="67VaKSImTTX" role="3clFbG">
                      <node concept="2OqwBi" id="67VaKSImTeb" role="2Oq$k0">
                        <node concept="2OqwBi" id="67VaKSIogF6" role="2Oq$k0">
                          <node concept="2OqwBi" id="67VaKSImSE6" role="2Oq$k0">
                            <node concept="2OqwBi" id="67VaKSImQ$E" role="2Oq$k0">
                              <node concept="2OqwBi" id="67VaKSImP95" role="2Oq$k0">
                                <node concept="30H73N" id="67VaKSImOVX" role="2Oq$k0" />
                                <node concept="2Rf3mk" id="67VaKSImPk7" role="2OqNvi">
                                  <node concept="1xMEDy" id="67VaKSImPk9" role="1xVPHs">
                                    <node concept="chp4Y" id="67VaKSImPsP" role="ri$Ld">
                                      <ref role="cht4Q" to="74bf:6_xZaXN$w5c" resolve="TextGenAddition" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="13MTOL" id="67VaKSImS5o" role="2OqNvi">
                                <ref role="13MTZf" to="74bf:67VaKSImrro" resolve="using" />
                              </node>
                            </node>
                            <node concept="13MTOL" id="67VaKSImSQq" role="2OqNvi">
                              <ref role="13MTZf" to="74bf:67VaKSImrrj" resolve="namespace" />
                            </node>
                          </node>
                          <node concept="13MTOL" id="67VaKSIogVX" role="2OqNvi">
                            <ref role="13MTZf" to="74bf:67VaKSImrrd" resolve="reference" />
                          </node>
                        </node>
                        <node concept="1VAtEI" id="67VaKSImTxa" role="2OqNvi" />
                      </node>
                      <node concept="v3k3i" id="67VaKSImU66" role="2OqNvi">
                        <node concept="chp4Y" id="67VaKSImU7G" role="v3oSu">
                          <ref role="cht4Q" to="74bf:67VaKSImrr0" resolve="NugetPackage" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="356sEK" id="PKiUC78YZO" role="383Ya9">
          <node concept="356sEF" id="PKiUC78YZP" role="356sEH">
            <property role="TrG5h" value="&lt;/ItemGroup&gt;" />
          </node>
          <node concept="2EixSi" id="PKiUC78YZR" role="2EinRH" />
        </node>
        <node concept="356sEK" id="PKiUC78YZS" role="383Ya9">
          <node concept="2EixSi" id="PKiUC78YZV" role="2EinRH" />
        </node>
        <node concept="356sEK" id="PKiUC78YZW" role="383Ya9">
          <node concept="356sEF" id="PKiUC78YZX" role="356sEH">
            <property role="TrG5h" value="&lt;ItemGroup&gt;" />
          </node>
          <node concept="2EixSi" id="PKiUC78YZZ" role="2EinRH" />
        </node>
        <node concept="356sEQ" id="PKiUC78Z04" role="383Ya9">
          <property role="333NGx" value="  " />
          <node concept="356sEK" id="5w895fhyg4$" role="383Ya9">
            <node concept="356sEF" id="5w895fhyg4_" role="356sEH">
              <property role="TrG5h" value="&lt;ProjectReference Include=&quot;..\" />
            </node>
            <node concept="356sEF" id="5w895fhygf$" role="356sEH">
              <property role="TrG5h" value="namespace" />
              <node concept="17Uvod" id="5w895fhygBA" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="5w895fhygBB" role="3zH0cK">
                  <node concept="3clFbS" id="5w895fhygBC" role="2VODD2">
                    <node concept="3clFbF" id="5w895fhygGg" role="3cqZAp">
                      <node concept="2OqwBi" id="5w895fhylvP" role="3clFbG">
                        <node concept="30H73N" id="5w895fhyluW" role="2Oq$k0" />
                        <node concept="3TrcHB" id="5w895fhylD9" role="2OqNvi">
                          <ref role="3TsBF5" to="74bf:PKiUC77KtY" resolve="baseTargetNameSpace" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEF" id="5w895fhygf_" role="356sEH">
              <property role="TrG5h" value="\" />
            </node>
            <node concept="356sEF" id="5w895fhygrz" role="356sEH">
              <property role="TrG5h" value="namespace" />
              <node concept="17Uvod" id="5w895fhyhF$" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="5w895fhyhF_" role="3zH0cK">
                  <node concept="3clFbS" id="5w895fhyhFA" role="2VODD2">
                    <node concept="3clFbF" id="5w895fhyhG1" role="3cqZAp">
                      <node concept="2OqwBi" id="5w895fhym0a" role="3clFbG">
                        <node concept="30H73N" id="5w895fhyhG0" role="2Oq$k0" />
                        <node concept="3TrcHB" id="5w895fhymf2" role="2OqNvi">
                          <ref role="3TsBF5" to="74bf:PKiUC77KtY" resolve="baseTargetNameSpace" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEF" id="5w895fhygr$" role="356sEH">
              <property role="TrG5h" value=".csproj&quot; /&gt;" />
            </node>
            <node concept="2EixSi" id="5w895fhyg4A" role="2EinRH" />
            <node concept="1WS0z7" id="5w895fhyg4U" role="lGtFl">
              <node concept="3JmXsc" id="5w895fhyg4X" role="3Jn$fo">
                <node concept="3clFbS" id="5w895fhyg4Y" role="2VODD2">
                  <node concept="3clFbF" id="5fYI6AyIyAM" role="3cqZAp">
                    <node concept="2OqwBi" id="5fYI6AyIyAN" role="3clFbG">
                      <node concept="2OqwBi" id="5fYI6AyIyAO" role="2Oq$k0">
                        <node concept="30H73N" id="5fYI6AyIyAP" role="2Oq$k0" />
                        <node concept="2qgKlT" id="5fYI6AyIyAQ" role="2OqNvi">
                          <ref role="37wK5l" to="deao:5fYI6AyIjDP" resolve="GetAllDependencies" />
                        </node>
                      </node>
                      <node concept="3zZkjj" id="5fYI6AyIyAR" role="2OqNvi">
                        <node concept="1bVj0M" id="5fYI6AyIyAS" role="23t8la">
                          <node concept="3clFbS" id="5fYI6AyIyAT" role="1bW5cS">
                            <node concept="3clFbF" id="5fYI6AyIyAU" role="3cqZAp">
                              <node concept="3clFbC" id="5fYI6AyIyJJ" role="3clFbG">
                                <node concept="2OqwBi" id="5fYI6AyIyAZ" role="3uHU7B">
                                  <node concept="37vLTw" id="5fYI6AyIyB0" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5fYI6AyIyB2" resolve="it" />
                                  </node>
                                  <node concept="I4A8Y" id="5fYI6AyIyB1" role="2OqNvi" />
                                </node>
                                <node concept="2OqwBi" id="5fYI6AyIyAW" role="3uHU7w">
                                  <node concept="30H73N" id="5fYI6AyIyAX" role="2Oq$k0" />
                                  <node concept="I4A8Y" id="5fYI6AyIyAY" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="5fYI6AyIyB2" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="5fYI6AyIyB3" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEK" id="67VaKSImXiL" role="383Ya9">
            <node concept="356sEF" id="67VaKSImXLT" role="356sEH">
              <property role="TrG5h" value="&lt;ProjectReference Include=&quot;" />
            </node>
            <node concept="356sEF" id="67VaKSImYre" role="356sEH">
              <property role="TrG5h" value="path" />
              <node concept="17Uvod" id="67VaKSImYty" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="67VaKSImYt_" role="3zH0cK">
                  <node concept="3clFbS" id="67VaKSImYtA" role="2VODD2">
                    <node concept="3clFbF" id="67VaKSImYtG" role="3cqZAp">
                      <node concept="2OqwBi" id="67VaKSImYtB" role="3clFbG">
                        <node concept="3TrcHB" id="67VaKSImYtE" role="2OqNvi">
                          <ref role="3TsBF5" to="74bf:67VaKSImrr6" resolve="relativePath" />
                        </node>
                        <node concept="30H73N" id="67VaKSImYtF" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEF" id="67VaKSImXMb" role="356sEH">
              <property role="TrG5h" value="&quot; /&gt;" />
            </node>
            <node concept="2EixSi" id="67VaKSImXiN" role="2EinRH" />
            <node concept="1WS0z7" id="67VaKSImXp5" role="lGtFl">
              <node concept="3JmXsc" id="67VaKSImXp6" role="3Jn$fo">
                <node concept="3clFbS" id="67VaKSImXp7" role="2VODD2">
                  <node concept="3clFbF" id="67VaKSImXpK" role="3cqZAp">
                    <node concept="2OqwBi" id="67VaKSIohha" role="3clFbG">
                      <node concept="2OqwBi" id="67VaKSIohhb" role="2Oq$k0">
                        <node concept="2OqwBi" id="67VaKSIohhc" role="2Oq$k0">
                          <node concept="2OqwBi" id="67VaKSIohhd" role="2Oq$k0">
                            <node concept="2OqwBi" id="67VaKSIohhe" role="2Oq$k0">
                              <node concept="2OqwBi" id="67VaKSIohhf" role="2Oq$k0">
                                <node concept="30H73N" id="67VaKSIohhg" role="2Oq$k0" />
                                <node concept="2Rf3mk" id="67VaKSIohhh" role="2OqNvi">
                                  <node concept="1xMEDy" id="67VaKSIohhi" role="1xVPHs">
                                    <node concept="chp4Y" id="67VaKSIohhj" role="ri$Ld">
                                      <ref role="cht4Q" to="74bf:6_xZaXN$w5c" resolve="TextGenAddition" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="13MTOL" id="67VaKSIohhk" role="2OqNvi">
                                <ref role="13MTZf" to="74bf:67VaKSImrro" resolve="using" />
                              </node>
                            </node>
                            <node concept="13MTOL" id="67VaKSIohhl" role="2OqNvi">
                              <ref role="13MTZf" to="74bf:67VaKSImrrj" resolve="namespace" />
                            </node>
                          </node>
                          <node concept="13MTOL" id="67VaKSIohhm" role="2OqNvi">
                            <ref role="13MTZf" to="74bf:67VaKSImrrd" resolve="reference" />
                          </node>
                        </node>
                        <node concept="1VAtEI" id="67VaKSIohhn" role="2OqNvi" />
                      </node>
                      <node concept="v3k3i" id="67VaKSIohho" role="2OqNvi">
                        <node concept="chp4Y" id="67VaKSIohhp" role="v3oSu">
                          <ref role="cht4Q" to="74bf:67VaKSImrr3" resolve="Project" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="67VaKSImXpG" role="3cqZAp" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="356sEK" id="PKiUC78Z05" role="383Ya9">
          <node concept="356sEF" id="PKiUC78Z06" role="356sEH">
            <property role="TrG5h" value="&lt;/ItemGroup&gt;" />
          </node>
          <node concept="2EixSi" id="PKiUC78Z08" role="2EinRH" />
        </node>
        <node concept="356sEK" id="PKiUC78Z09" role="383Ya9">
          <node concept="2EixSi" id="PKiUC78Z0c" role="2EinRH" />
        </node>
      </node>
      <node concept="356sEK" id="PKiUC78Z0d" role="383Ya9">
        <node concept="356sEF" id="PKiUC78Z0e" role="356sEH">
          <property role="TrG5h" value="&lt;/Project&gt;" />
        </node>
        <node concept="2EixSi" id="PKiUC78Z0g" role="2EinRH" />
      </node>
    </node>
    <node concept="n94m4" id="PKiUC78YYJ" role="lGtFl">
      <ref role="n9lRv" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
    </node>
    <node concept="17Uvod" id="PKiUC78Z12" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="PKiUC78Z13" role="3zH0cK">
        <node concept="3clFbS" id="PKiUC78Z14" role="2VODD2">
          <node concept="3clFbF" id="PKiUC78Z5K" role="3cqZAp">
            <node concept="3cpWs3" id="5w895fhxihx" role="3clFbG">
              <node concept="2OqwBi" id="PKiUC78Zi2" role="3uHU7w">
                <node concept="30H73N" id="PKiUC78Z5J" role="2Oq$k0" />
                <node concept="3TrcHB" id="PKiUC78ZqO" role="2OqNvi">
                  <ref role="3TsBF5" to="74bf:PKiUC77KtY" resolve="baseTargetNameSpace" />
                </node>
              </node>
              <node concept="3cpWs3" id="5w895fhxivx" role="3uHU7B">
                <node concept="2OqwBi" id="5w895fhxjJL" role="3uHU7B">
                  <node concept="30H73N" id="5w895fhxiwi" role="2Oq$k0" />
                  <node concept="3TrcHB" id="5w895fhxjTm" role="2OqNvi">
                    <ref role="3TsBF5" to="74bf:PKiUC77KtY" resolve="baseTargetNameSpace" />
                  </node>
                </node>
                <node concept="Xl_RD" id="5w895fhxitZ" role="3uHU7w">
                  <property role="Xl_RC" value="/" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="356sEV" id="PKiUC7jwgd">
    <property role="TrG5h" value="interfaceClient" />
    <property role="3Le9LX" value=".cs" />
    <node concept="356WMU" id="PKiUC7jxC9" role="356KY_">
      <node concept="356sEK" id="5w895fh$bNV" role="383Ya9">
        <node concept="356sEF" id="5w895fh$bNW" role="356sEH">
          <property role="TrG5h" value="using Sioux.RClient.Runtime;" />
        </node>
        <node concept="2EixSi" id="5w895fh$bNX" role="2EinRH" />
      </node>
      <node concept="356sEK" id="5w895fh$cJD" role="383Ya9">
        <node concept="2EixSi" id="5w895fh$cJF" role="2EinRH" />
      </node>
      <node concept="356sEK" id="PKiUC7jxCa" role="383Ya9">
        <node concept="356sEF" id="PKiUC7jxCb" role="356sEH">
          <property role="TrG5h" value="namespace " />
        </node>
        <node concept="356sEF" id="PKiUC7jxD0" role="356sEH">
          <property role="TrG5h" value="Sioux.RClient.Runtime" />
          <node concept="17Uvod" id="PKiUC7jxD3" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="PKiUC7jxD4" role="3zH0cK">
              <node concept="3clFbS" id="PKiUC7jxD5" role="2VODD2">
                <node concept="3clFbF" id="PKiUC7jxHE" role="3cqZAp">
                  <node concept="2OqwBi" id="PKiUC7jybr" role="3clFbG">
                    <node concept="30H73N" id="PKiUC7jxHD" role="2Oq$k0" />
                    <node concept="2qgKlT" id="PKiUC7jycA" role="2OqNvi">
                      <ref role="37wK5l" to="deao:PKiUC7a_Nb" resolve="GetTargetCodeNamespace" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2EixSi" id="PKiUC7jxCd" role="2EinRH" />
      </node>
      <node concept="356sEK" id="PKiUC7jxCe" role="383Ya9">
        <node concept="356sEF" id="PKiUC7jxCf" role="356sEH">
          <property role="TrG5h" value="{" />
        </node>
        <node concept="2EixSi" id="PKiUC7jxCh" role="2EinRH" />
      </node>
      <node concept="356sEQ" id="PKiUC7jxCm" role="383Ya9">
        <property role="333NGx" value="    " />
        <node concept="356sEK" id="PKiUC7jxCi" role="383Ya9">
          <node concept="356sEF" id="PKiUC7jxCj" role="356sEH">
            <property role="TrG5h" value="public partial interface " />
          </node>
          <node concept="356sEF" id="PKiUC7jylO" role="356sEH">
            <property role="TrG5h" value="INamedConcept" />
            <node concept="17Uvod" id="PKiUC7jylR" role="lGtFl">
              <property role="2qtEX9" value="name" />
              <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
              <node concept="3zFVjK" id="PKiUC7jylS" role="3zH0cK">
                <node concept="3clFbS" id="PKiUC7jylT" role="2VODD2">
                  <node concept="3clFbF" id="PKiUC7jymh" role="3cqZAp">
                    <node concept="2OqwBi" id="5w895fhyScn" role="3clFbG">
                      <node concept="2OqwBi" id="5w895fhyRDo" role="2Oq$k0">
                        <node concept="30H73N" id="5w895fhxhzP" role="2Oq$k0" />
                        <node concept="3TrEf2" id="5w895fhyRMb" role="2OqNvi">
                          <ref role="3Tt5mk" to="74bf:PKiUC7jvRa" resolve="interface" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="5w895fhySBb" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2EixSi" id="PKiUC7jxCl" role="2EinRH" />
          <node concept="356sEF" id="PKiUC7ooE6" role="356sEH">
            <property role="TrG5h" value=": " />
          </node>
          <node concept="356sEF" id="PKiUC7lZY4" role="356sEH">
            <property role="TrG5h" value="extendList" />
            <node concept="17Uvod" id="PKiUC7lZY7" role="lGtFl">
              <property role="2qtEX9" value="name" />
              <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
              <node concept="3zFVjK" id="PKiUC7lZY8" role="3zH0cK">
                <node concept="3clFbS" id="PKiUC7lZY9" role="2VODD2">
                  <node concept="3clFbF" id="PKiUC7mhKP" role="3cqZAp">
                    <node concept="2YIFZM" id="PKiUC7mhVl" role="3clFbG">
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <ref role="37wK5l" to="wyt6:~String.join(java.lang.CharSequence,java.lang.Iterable)" resolve="join" />
                      <node concept="Xl_RD" id="PKiUC7mjdb" role="37wK5m">
                        <property role="Xl_RC" value=", " />
                      </node>
                      <node concept="2OqwBi" id="PKiUC7maWo" role="37wK5m">
                        <node concept="2OqwBi" id="PKiUC7m8CO" role="2Oq$k0">
                          <node concept="2OqwBi" id="PKiUC7m0_q" role="2Oq$k0">
                            <node concept="2OqwBi" id="PKiUC7m0f0" role="2Oq$k0">
                              <node concept="30H73N" id="PKiUC7m02H" role="2Oq$k0" />
                              <node concept="3TrEf2" id="PKiUC7m0nM" role="2OqNvi">
                                <ref role="3Tt5mk" to="74bf:PKiUC7jvRa" resolve="interface" />
                              </node>
                            </node>
                            <node concept="3Tsc0h" id="PKiUC7m0VI" role="2OqNvi">
                              <ref role="3TtcxE" to="tpce:h0PrDRO" resolve="extends" />
                            </node>
                          </node>
                          <node concept="13MTOL" id="PKiUC7mab0" role="2OqNvi">
                            <ref role="13MTZf" to="tpce:h0PrY0D" resolve="intfc" />
                          </node>
                        </node>
                        <node concept="3$u5V9" id="PKiUC7mb8Z" role="2OqNvi">
                          <node concept="1bVj0M" id="PKiUC7mb91" role="23t8la">
                            <node concept="3clFbS" id="PKiUC7mb92" role="1bW5cS">
                              <node concept="3clFbF" id="PKiUC7mbed" role="3cqZAp">
                                <node concept="2OqwBi" id="PKiUC7mcNZ" role="3clFbG">
                                  <node concept="2OqwBi" id="PKiUC7mbX0" role="2Oq$k0">
                                    <node concept="2OqwBi" id="PKiUC7mbpI" role="2Oq$k0">
                                      <node concept="1iwH7S" id="PKiUC7mbec" role="2Oq$k0" />
                                      <node concept="1psM6Z" id="PKiUC7mb$Z" role="2OqNvi">
                                        <ref role="1psM6Y" node="PKiUC7jDZW" resolve="interfaceClient" />
                                      </node>
                                    </node>
                                    <node concept="2Xjw5R" id="PKiUC7mcoY" role="2OqNvi">
                                      <node concept="1xMEDy" id="PKiUC7mcp0" role="1xVPHs">
                                        <node concept="chp4Y" id="PKiUC7mcw0" role="ri$Ld">
                                          <ref role="cht4Q" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="2qgKlT" id="PKiUC7mdat" role="2OqNvi">
                                    <ref role="37wK5l" to="deao:PKiUC7b6Ck" resolve="GetTargetCodeFqName" />
                                    <node concept="37vLTw" id="PKiUC7mdge" role="37wK5m">
                                      <ref role="3cqZAo" node="PKiUC7mb93" resolve="it" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="PKiUC7mb93" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="PKiUC7mb94" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1W57fq" id="PKiUC7onOK" role="lGtFl">
              <node concept="3IZrLx" id="PKiUC7onOL" role="3IZSJc">
                <node concept="3clFbS" id="PKiUC7onOM" role="2VODD2">
                  <node concept="3clFbF" id="PKiUC7onV0" role="3cqZAp">
                    <node concept="2OqwBi" id="PKiUC7onV2" role="3clFbG">
                      <node concept="2OqwBi" id="PKiUC7onV3" role="2Oq$k0">
                        <node concept="2OqwBi" id="PKiUC7onV4" role="2Oq$k0">
                          <node concept="30H73N" id="PKiUC7onV5" role="2Oq$k0" />
                          <node concept="3TrEf2" id="PKiUC7onV6" role="2OqNvi">
                            <ref role="3Tt5mk" to="74bf:PKiUC7jvRa" resolve="interface" />
                          </node>
                        </node>
                        <node concept="3Tsc0h" id="PKiUC7onV7" role="2OqNvi">
                          <ref role="3TtcxE" to="tpce:h0PrDRO" resolve="extends" />
                        </node>
                      </node>
                      <node concept="3GX2aA" id="PKiUC7onV8" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEF" id="PKiUC7omdz" role="356sEH">
            <property role="TrG5h" value="Sioux.RClient.Runtime.IBaseConcept" />
            <node concept="1W57fq" id="PKiUC7ooMd" role="lGtFl">
              <node concept="3IZrLx" id="PKiUC7ooMe" role="3IZSJc">
                <node concept="3clFbS" id="PKiUC7ooMf" role="2VODD2">
                  <node concept="3clFbF" id="PKiUC7opco" role="3cqZAp">
                    <node concept="2OqwBi" id="PKiUC7opcq" role="3clFbG">
                      <node concept="2OqwBi" id="PKiUC7opcr" role="2Oq$k0">
                        <node concept="2OqwBi" id="PKiUC7opcs" role="2Oq$k0">
                          <node concept="30H73N" id="PKiUC7opct" role="2Oq$k0" />
                          <node concept="3TrEf2" id="PKiUC7opcu" role="2OqNvi">
                            <ref role="3Tt5mk" to="74bf:PKiUC7jvRa" resolve="interface" />
                          </node>
                        </node>
                        <node concept="3Tsc0h" id="PKiUC7opcv" role="2OqNvi">
                          <ref role="3TtcxE" to="tpce:h0PrDRO" resolve="extends" />
                        </node>
                      </node>
                      <node concept="1v1jN8" id="PKiUC7oqXX" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="356sEK" id="PKiUC7jxCn" role="383Ya9">
          <node concept="356sEF" id="PKiUC7jxCo" role="356sEH">
            <property role="TrG5h" value="{" />
          </node>
          <node concept="2EixSi" id="PKiUC7jxCq" role="2EinRH" />
        </node>
        <node concept="356sEQ" id="PKiUC7jxCv" role="383Ya9">
          <property role="333NGx" value="    " />
          <node concept="356sEK" id="PKiUC7jGiR" role="383Ya9">
            <node concept="356sEF" id="PKiUC7jGiS" role="356sEH">
              <property role="TrG5h" value="RCollection&lt;" />
            </node>
            <node concept="356sEF" id="PKiUC7jGCT" role="356sEH">
              <property role="TrG5h" value="Todo" />
              <node concept="17Uvod" id="PKiUC7jP7k" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="PKiUC7jP7l" role="3zH0cK">
                  <node concept="3clFbS" id="PKiUC7jP7m" role="2VODD2">
                    <node concept="3clFbF" id="PKiUC7jPB6" role="3cqZAp">
                      <node concept="2OqwBi" id="PKiUC7jPB7" role="3clFbG">
                        <node concept="2OqwBi" id="PKiUC7jPB8" role="2Oq$k0">
                          <node concept="2OqwBi" id="PKiUC7jPB9" role="2Oq$k0">
                            <node concept="1iwH7S" id="PKiUC7jPBa" role="2Oq$k0" />
                            <node concept="1psM6Z" id="PKiUC7jPBb" role="2OqNvi">
                              <ref role="1psM6Y" node="PKiUC7jDZW" resolve="interfaceClient" />
                            </node>
                          </node>
                          <node concept="2Xjw5R" id="PKiUC7jPBc" role="2OqNvi">
                            <node concept="1xMEDy" id="PKiUC7jPBd" role="1xVPHs">
                              <node concept="chp4Y" id="PKiUC7jPBe" role="ri$Ld">
                                <ref role="cht4Q" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2qgKlT" id="PKiUC7jPBf" role="2OqNvi">
                          <ref role="37wK5l" to="deao:PKiUC7b6Ck" resolve="GetTargetCodeFqName" />
                          <node concept="2OqwBi" id="PKiUC7jPUx" role="37wK5m">
                            <node concept="30H73N" id="PKiUC7jPBh" role="2Oq$k0" />
                            <node concept="3TrEf2" id="PKiUC7jQix" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEF" id="PKiUC7jGCU" role="356sEH">
              <property role="TrG5h" value="&gt; " />
            </node>
            <node concept="356sEF" id="PKiUC7jGCY" role="356sEH">
              <property role="TrG5h" value="Items" />
              <node concept="17Uvod" id="PKiUC7jQof" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="PKiUC7jQog" role="3zH0cK">
                  <node concept="3clFbS" id="PKiUC7jQoh" role="2VODD2">
                    <node concept="3clFbF" id="5w895fhsRCJ" role="3cqZAp">
                      <node concept="2YIFZM" id="5w895fhsRDA" role="3clFbG">
                        <ref role="37wK5l" to="9q87:PKiUC7gbqw" resolve="GetPropertyName" />
                        <ref role="1Pybhc" to="9q87:PKiUC7gbpn" resolve="NameChanges" />
                        <node concept="2OqwBi" id="5w895fhsRQi" role="37wK5m">
                          <node concept="30H73N" id="5w895fhsRDD" role="2Oq$k0" />
                          <node concept="3TrcHB" id="5w895fhsSjp" role="2OqNvi">
                            <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEF" id="PKiUC7jGCZ" role="356sEH">
              <property role="TrG5h" value=" { get; }" />
            </node>
            <node concept="2EixSi" id="PKiUC7jGiT" role="2EinRH" />
            <node concept="1WS0z7" id="PKiUC7jGD7" role="lGtFl">
              <node concept="3JmXsc" id="PKiUC7jGD8" role="3Jn$fo">
                <node concept="3clFbS" id="PKiUC7jGD9" role="2VODD2">
                  <node concept="3clFbF" id="PKiUC7jGDB" role="3cqZAp">
                    <node concept="2OqwBi" id="PKiUC7jKY4" role="3clFbG">
                      <node concept="2OqwBi" id="PKiUC7jHfh" role="2Oq$k0">
                        <node concept="2OqwBi" id="PKiUC7jGPQ" role="2Oq$k0">
                          <node concept="30H73N" id="PKiUC7jGDA" role="2Oq$k0" />
                          <node concept="3TrEf2" id="PKiUC7jGYK" role="2OqNvi">
                            <ref role="3Tt5mk" to="74bf:PKiUC7jvRa" resolve="interface" />
                          </node>
                        </node>
                        <node concept="3Tsc0h" id="PKiUC7jHRZ" role="2OqNvi">
                          <ref role="3TtcxE" to="tpce:f_TKVDF" resolve="linkDeclaration" />
                        </node>
                      </node>
                      <node concept="3zZkjj" id="PKiUC7jNBm" role="2OqNvi">
                        <node concept="1bVj0M" id="PKiUC7jNBo" role="23t8la">
                          <node concept="3clFbS" id="PKiUC7jNBp" role="1bW5cS">
                            <node concept="3clFbF" id="PKiUC7jNNN" role="3cqZAp">
                              <node concept="2OqwBi" id="PKiUC7jOKn" role="3clFbG">
                                <node concept="2OqwBi" id="PKiUC7jO93" role="2Oq$k0">
                                  <node concept="37vLTw" id="PKiUC7jNNM" role="2Oq$k0">
                                    <ref role="3cqZAo" node="PKiUC7jNBq" resolve="it" />
                                  </node>
                                  <node concept="3TrcHB" id="PKiUC7jOub" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                                  </node>
                                </node>
                                <node concept="21noJN" id="PKiUC7jOVy" role="2OqNvi">
                                  <node concept="21nZrQ" id="PKiUC7jOV$" role="21noJM">
                                    <ref role="21nZrZ" to="tpce:3Ftr4R6BFyo" resolve="aggregation" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="PKiUC7jNBq" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="PKiUC7jNBr" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEK" id="PKiUC7jxCr" role="383Ya9">
            <node concept="356sEF" id="PKiUC7jDiJ" role="356sEH">
              <property role="TrG5h" value="string" />
              <node concept="17Uvod" id="PKiUC7jD$o" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="PKiUC7jD$p" role="3zH0cK">
                  <node concept="3clFbS" id="PKiUC7jD$q" role="2VODD2">
                    <node concept="3clFbF" id="PKiUC7jEkV" role="3cqZAp">
                      <node concept="2OqwBi" id="PKiUC7jFk7" role="3clFbG">
                        <node concept="2OqwBi" id="PKiUC7jEJd" role="2Oq$k0">
                          <node concept="2OqwBi" id="PKiUC7jEv$" role="2Oq$k0">
                            <node concept="1iwH7S" id="PKiUC7jEkU" role="2Oq$k0" />
                            <node concept="1psM6Z" id="PKiUC7jE$I" role="2OqNvi">
                              <ref role="1psM6Y" node="PKiUC7jDZW" resolve="interfaceClient" />
                            </node>
                          </node>
                          <node concept="2Xjw5R" id="PKiUC7jEZb" role="2OqNvi">
                            <node concept="1xMEDy" id="PKiUC7jEZd" role="1xVPHs">
                              <node concept="chp4Y" id="PKiUC7jF7u" role="ri$Ld">
                                <ref role="cht4Q" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2qgKlT" id="PKiUC7jFvf" role="2OqNvi">
                          <ref role="37wK5l" to="deao:PKiUC7b6Ck" resolve="GetTargetCodeFqName" />
                          <node concept="2OqwBi" id="PKiUC7jFJc" role="37wK5m">
                            <node concept="30H73N" id="PKiUC7jFzI" role="2Oq$k0" />
                            <node concept="3TrEf2" id="PKiUC7jG66" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpce:fKAX2Z_" resolve="dataType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEF" id="PKiUC7jDiK" role="356sEH">
              <property role="TrG5h" value=" " />
            </node>
            <node concept="356sEF" id="PKiUC7jBR4" role="356sEH">
              <property role="TrG5h" value="Name" />
              <node concept="17Uvod" id="PKiUC7jC2f" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="PKiUC7jC2g" role="3zH0cK">
                  <node concept="3clFbS" id="PKiUC7jC2h" role="2VODD2">
                    <node concept="3clFbF" id="5w895fhsQOa" role="3cqZAp">
                      <node concept="2YIFZM" id="5w895fhsQPO" role="3clFbG">
                        <ref role="37wK5l" to="9q87:PKiUC7gbqw" resolve="GetPropertyName" />
                        <ref role="1Pybhc" to="9q87:PKiUC7gbpn" resolve="NameChanges" />
                        <node concept="2OqwBi" id="5w895fhsR8J" role="37wK5m">
                          <node concept="30H73N" id="5w895fhsQR9" role="2Oq$k0" />
                          <node concept="3TrcHB" id="5w895fhsRwS" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEF" id="PKiUC7jBR5" role="356sEH">
              <property role="TrG5h" value=" { get; set; }" />
            </node>
            <node concept="2EixSi" id="PKiUC7jxCu" role="2EinRH" />
            <node concept="1WS0z7" id="PKiUC7jzuV" role="lGtFl">
              <node concept="3JmXsc" id="PKiUC7jzuW" role="3Jn$fo">
                <node concept="3clFbS" id="PKiUC7jzuX" role="2VODD2">
                  <node concept="3clFbF" id="PKiUC7jzxD" role="3cqZAp">
                    <node concept="2OqwBi" id="PKiUC7j$7j" role="3clFbG">
                      <node concept="2OqwBi" id="PKiUC7jzHS" role="2Oq$k0">
                        <node concept="30H73N" id="PKiUC7jzxC" role="2Oq$k0" />
                        <node concept="3TrEf2" id="PKiUC7jzQM" role="2OqNvi">
                          <ref role="3Tt5mk" to="74bf:PKiUC7jvRa" resolve="interface" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="PKiUC7j$rN" role="2OqNvi">
                        <ref role="3TtcxE" to="tpce:f_TKVDG" resolve="propertyDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="356sEK" id="5w895fhsDv3" role="383Ya9">
            <node concept="356sEF" id="5w895fhsDv4" role="356sEH">
              <property role="TrG5h" value="string" />
              <node concept="17Uvod" id="5w895fhsDv5" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="5w895fhsDv6" role="3zH0cK">
                  <node concept="3clFbS" id="5w895fhsDv7" role="2VODD2">
                    <node concept="3clFbF" id="5w895fhsDv8" role="3cqZAp">
                      <node concept="2OqwBi" id="5w895fhsDv9" role="3clFbG">
                        <node concept="2OqwBi" id="5w895fhsDva" role="2Oq$k0">
                          <node concept="2OqwBi" id="5w895fhsDvb" role="2Oq$k0">
                            <node concept="1iwH7S" id="5w895fhsDvc" role="2Oq$k0" />
                            <node concept="1psM6Z" id="5w895fhsDvd" role="2OqNvi">
                              <ref role="1psM6Y" node="PKiUC7jDZW" resolve="interfaceClient" />
                            </node>
                          </node>
                          <node concept="2Xjw5R" id="5w895fhsDve" role="2OqNvi">
                            <node concept="1xMEDy" id="5w895fhsDvf" role="1xVPHs">
                              <node concept="chp4Y" id="5w895fhsDvg" role="ri$Ld">
                                <ref role="cht4Q" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2qgKlT" id="5w895fhsDvh" role="2OqNvi">
                          <ref role="37wK5l" to="deao:PKiUC7b6Ck" resolve="GetTargetCodeFqName" />
                          <node concept="2OqwBi" id="5w895fhsDvi" role="37wK5m">
                            <node concept="30H73N" id="5w895fhsDvj" role="2Oq$k0" />
                            <node concept="3TrEf2" id="5w895fhsDvk" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEF" id="5w895fhsDvl" role="356sEH">
              <property role="TrG5h" value=" " />
            </node>
            <node concept="356sEF" id="5w895fhsDvm" role="356sEH">
              <property role="TrG5h" value="Name" />
              <node concept="17Uvod" id="5w895fhsDvn" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="5w895fhsDvo" role="3zH0cK">
                  <node concept="3clFbS" id="5w895fhsDvp" role="2VODD2">
                    <node concept="3clFbF" id="5w895fhsSrV" role="3cqZAp">
                      <node concept="2YIFZM" id="5w895fhsSsP" role="3clFbG">
                        <ref role="37wK5l" to="9q87:PKiUC7gbqw" resolve="GetPropertyName" />
                        <ref role="1Pybhc" to="9q87:PKiUC7gbpn" resolve="NameChanges" />
                        <node concept="2OqwBi" id="5w895fhsSzZ" role="37wK5m">
                          <node concept="30H73N" id="5w895fhsSuJ" role="2Oq$k0" />
                          <node concept="3TrcHB" id="5w895fhsSEn" role="2OqNvi">
                            <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="356sEF" id="5w895fhsDvu" role="356sEH">
              <property role="TrG5h" value=" { get; set; }" />
            </node>
            <node concept="2EixSi" id="5w895fhsDvv" role="2EinRH" />
            <node concept="1WS0z7" id="5w895fhsDvw" role="lGtFl">
              <node concept="3JmXsc" id="5w895fhsDvx" role="3Jn$fo">
                <node concept="3clFbS" id="5w895fhsDvy" role="2VODD2">
                  <node concept="3clFbF" id="5w895fhsDvz" role="3cqZAp">
                    <node concept="2OqwBi" id="5w895fhsL1K" role="3clFbG">
                      <node concept="2OqwBi" id="5w895fhsH$C" role="2Oq$k0">
                        <node concept="2OqwBi" id="5w895fhsDv_" role="2Oq$k0">
                          <node concept="30H73N" id="5w895fhsDvA" role="2Oq$k0" />
                          <node concept="3TrEf2" id="5w895fhsDvB" role="2OqNvi">
                            <ref role="3Tt5mk" to="74bf:PKiUC7jvRa" resolve="interface" />
                          </node>
                        </node>
                        <node concept="3Tsc0h" id="5w895fhsHVl" role="2OqNvi">
                          <ref role="3TtcxE" to="tpce:f_TKVDF" resolve="linkDeclaration" />
                        </node>
                      </node>
                      <node concept="3zZkjj" id="5w895fhsNJp" role="2OqNvi">
                        <node concept="1bVj0M" id="5w895fhsNJr" role="23t8la">
                          <node concept="3clFbS" id="5w895fhsNJs" role="1bW5cS">
                            <node concept="3clFbF" id="5w895fhsNQT" role="3cqZAp">
                              <node concept="2OqwBi" id="5w895fhsPbH" role="3clFbG">
                                <node concept="2OqwBi" id="5w895fhsOaO" role="2Oq$k0">
                                  <node concept="37vLTw" id="5w895fhsNQS" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5w895fhsNJt" resolve="it" />
                                  </node>
                                  <node concept="3TrcHB" id="5w895fhsOya" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                                  </node>
                                </node>
                                <node concept="21noJN" id="5w895fhsPFq" role="2OqNvi">
                                  <node concept="21nZrQ" id="5w895fhsPFs" role="21noJM">
                                    <ref role="21nZrZ" to="tpce:3Ftr4R6BFyn" resolve="reference" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="5w895fhsNJt" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="5w895fhsNJu" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="356sEK" id="PKiUC7jxCw" role="383Ya9">
          <node concept="356sEF" id="PKiUC7jxCx" role="356sEH">
            <property role="TrG5h" value="}" />
          </node>
          <node concept="2EixSi" id="PKiUC7jxCz" role="2EinRH" />
        </node>
      </node>
      <node concept="356sEK" id="PKiUC7jxC$" role="383Ya9">
        <node concept="356sEF" id="PKiUC7jxC_" role="356sEH">
          <property role="TrG5h" value="}" />
        </node>
        <node concept="2EixSi" id="PKiUC7jxCB" role="2EinRH" />
      </node>
      <node concept="1ps_y7" id="PKiUC7jDZV" role="lGtFl">
        <node concept="1ps_xZ" id="PKiUC7jDZW" role="1ps_xO">
          <property role="TrG5h" value="interfaceClient" />
          <node concept="2jfdEK" id="PKiUC7jDZX" role="1ps_xN">
            <node concept="3clFbS" id="PKiUC7jDZY" role="2VODD2">
              <node concept="3clFbF" id="PKiUC7jE9b" role="3cqZAp">
                <node concept="30H73N" id="PKiUC7jE9a" role="3clFbG" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="n94m4" id="PKiUC7jwgf" role="lGtFl">
      <ref role="n9lRv" to="74bf:PKiUC7jvQW" resolve="InterfaceClient" />
    </node>
    <node concept="17Uvod" id="PKiUC7jRe8" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="PKiUC7jRe9" role="3zH0cK">
        <node concept="3clFbS" id="PKiUC7jRea" role="2VODD2">
          <node concept="3clFbF" id="5w895fhxYeg" role="3cqZAp">
            <node concept="2OqwBi" id="5w895fhxYqy" role="3clFbG">
              <node concept="30H73N" id="5w895fhxYef" role="2Oq$k0" />
              <node concept="2qgKlT" id="5w895fhxYFR" role="2OqNvi">
                <ref role="37wK5l" to="deao:5w895fhxaq_" resolve="GenerateFilename" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

