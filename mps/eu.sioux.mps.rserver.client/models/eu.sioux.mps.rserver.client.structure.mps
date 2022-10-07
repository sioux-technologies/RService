<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fbbd8fd4-3d94-4974-8b29-623f74c85604(eu.sioux.mps.rserver.client.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="myiq" ref="r:9a91b5e6-ae62-4c53-acd2-6de1a1816316(com.dslfoundry.plaintextgen.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ">
        <child id="1169127546356" name="extends" index="PrDN$" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="8842732777748464990" name="jetbrains.mps.lang.structure.structure.RefPresentationTemplate" flags="ng" index="ROjv2">
        <property id="4307758654697524057" name="prefix" index="1W_73P" />
      </concept>
      <concept id="8842732777748207592" name="jetbrains.mps.lang.structure.structure.SmartReferenceAttribute" flags="ng" index="RPilO">
        <reference id="8842732777748207597" name="charactersticReference" index="RPilL" />
        <child id="8842732777748474935" name="refPresentationTemplate" index="ROhUF" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="PKiUC77gMs">
    <property role="EcuMT" value="968357113520524444" />
    <property role="TrG5h" value="ConceptClient" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6_xZaXNvZn6" role="1TKVEi">
      <property role="IQ2ns" value="7593628277210609094" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="additions" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6_xZaXNwdfE" resolve="NamedStructureClientAdditions" />
    </node>
    <node concept="1TJgyj" id="PKiUC77gMt" role="1TKVEi">
      <property role="IQ2ns" value="968357113520524445" />
      <property role="20kJfa" value="concept" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
    </node>
    <node concept="PrWs8" id="PKiUC77gUY" role="PzmwI">
      <ref role="PrY4T" node="PKiUC77gUm" resolve="IClientContent" />
    </node>
  </node>
  <node concept="1TIwiD" id="PKiUC77gUi">
    <property role="EcuMT" value="968357113520524946" />
    <property role="TrG5h" value="ClientGenerator" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="PKiUC77gUj" role="1TKVEi">
      <property role="IQ2ns" value="968357113520524947" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="content" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="PKiUC77gUm" resolve="IClientContent" />
    </node>
    <node concept="1TJgyj" id="PKiUC7iyJQ" role="1TKVEi">
      <property role="IQ2ns" value="968357113523481590" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="using" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="PKiUC7iyJK" resolve="ClientGeneratorReference" />
    </node>
    <node concept="PrWs8" id="PKiUC77gVg" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="PKiUC77KtY" role="1TKVEl">
      <property role="IQ2nx" value="968357113520654206" />
      <property role="TrG5h" value="baseTargetNameSpace" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="5w895fhzCOE" role="1TKVEl">
      <property role="IQ2nx" value="6343360017568009514" />
      <property role="TrG5h" value="nugetPackage" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="5w895fhyNk2" role="1TKVEl">
      <property role="IQ2nx" value="6343360017567790338" />
      <property role="TrG5h" value="version" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="67VaKSIpVGz" role="1TKVEl">
      <property role="IQ2nx" value="7060284180741471011" />
      <property role="TrG5h" value="targetFramework" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="$4Ynxqyrzt" role="1TKVEl">
      <property role="IQ2nx" value="649918541558560989" />
      <property role="TrG5h" value="createProjectFile" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="PlHQZ" id="PKiUC77gUm">
    <property role="TrG5h" value="IClientContent" />
    <property role="EcuMT" value="968357113520524949" />
  </node>
  <node concept="1TIwiD" id="PKiUC77G0C">
    <property role="EcuMT" value="968357113520635944" />
    <property role="TrG5h" value="EnumClient" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="PKiUC77G0D" role="PzmwI">
      <ref role="PrY4T" node="PKiUC77gUm" resolve="IClientContent" />
    </node>
    <node concept="1TJgyj" id="PKiUC77G0F" role="1TKVEi">
      <property role="IQ2ns" value="968357113520635947" />
      <property role="20kJfa" value="target" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpce:2TR3acGo7Lv" resolve="EnumerationDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="PKiUC7iyJK">
    <property role="EcuMT" value="968357113523481584" />
    <property role="TrG5h" value="ClientGeneratorReference" />
    <node concept="1TJgyj" id="PKiUC7iyJL" role="1TKVEi">
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="968357113523481585" />
      <property role="20kJfa" value="clientGenerator" />
      <ref role="20lvS9" node="PKiUC77gUi" resolve="ClientGenerator" />
    </node>
  </node>
  <node concept="1TIwiD" id="PKiUC7jvQW">
    <property role="EcuMT" value="968357113523731900" />
    <property role="TrG5h" value="InterfaceClient" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="PKiUC7jvQX" role="PzmwI">
      <ref role="PrY4T" node="PKiUC77gUm" resolve="IClientContent" />
    </node>
    <node concept="1TJgyj" id="PKiUC7jvRa" role="1TKVEi">
      <property role="IQ2ns" value="968357113523731914" />
      <property role="20kJfa" value="interface" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="PKiUC7lbTW">
    <property role="EcuMT" value="968357113524174460" />
    <property role="TrG5h" value="CustomImplementation" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="PKiUC7lbTY" role="1TKVEi">
      <property role="IQ2ns" value="968357113524174462" />
      <property role="20kJfa" value="structureElement" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpce:1ob16QT2yIl" resolve="INamedStructureElement" />
    </node>
    <node concept="PrWs8" id="PKiUC7lbUy" role="PzmwI">
      <ref role="PrY4T" node="PKiUC77gUm" resolve="IClientContent" />
    </node>
    <node concept="RPilO" id="PKiUC7lbU$" role="lGtFl">
      <ref role="RPilL" node="PKiUC7lbTY" resolve="structureElement" />
      <node concept="ROjv2" id="PKiUC7lbUA" role="ROhUF">
        <property role="1W_73P" value="custom " />
      </node>
    </node>
    <node concept="1TJgyi" id="PKiUC7lchL" role="1TKVEl">
      <property role="IQ2nx" value="968357113524175985" />
      <property role="TrG5h" value="TargetImplementationNamespace" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="PKiUC7lchN" role="1TKVEl">
      <property role="IQ2nx" value="968357113524175987" />
      <property role="TrG5h" value="TargetImplementationName" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="6_xZaXNwdfE">
    <property role="TrG5h" value="NamedStructureClientAdditions" />
    <property role="3GE5qa" value="Addition" />
    <property role="EcuMT" value="7593628277210384696" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6_xZaXNv8$Y" role="1TKVEi">
      <property role="IQ2ns" value="7593628277210384702" />
      <property role="20kJfa" value="target" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpce:1ob16QT2yIl" resolve="INamedStructureElement" />
    </node>
    <node concept="1TJgyj" id="6_xZaXNwdfJ" role="1TKVEi">
      <property role="IQ2ns" value="7593628277210665967" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="additions" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6_xZaXNwdfG" resolve="IAddition" />
    </node>
  </node>
  <node concept="PlHQZ" id="6_xZaXNwdfG">
    <property role="EcuMT" value="7593628277210665964" />
    <property role="3GE5qa" value="Addition" />
    <property role="TrG5h" value="IAddition" />
  </node>
  <node concept="1TIwiD" id="6_xZaXN$w5c">
    <property role="EcuMT" value="7593628277211791692" />
    <property role="3GE5qa" value="Addition" />
    <property role="TrG5h" value="TextGenAddition" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6_xZaXN$w5d" role="1TKVEi">
      <property role="IQ2ns" value="7593628277211791693" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="text" />
      <ref role="20lvS9" to="myiq:7g_oPKUKThq" resolve="ILineElement" />
    </node>
    <node concept="1TJgyj" id="67VaKSImrro" role="1TKVEi">
      <property role="IQ2ns" value="7060284180740552408" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="using" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="67VaKSImrri" resolve="NamespaceReference" />
    </node>
    <node concept="PrWs8" id="6_xZaXN_1MS" role="PzmwI">
      <ref role="PrY4T" node="6_xZaXNwdfG" resolve="IAddition" />
    </node>
  </node>
  <node concept="1TIwiD" id="67VaKSImrqV">
    <property role="EcuMT" value="7060284180740552379" />
    <property role="3GE5qa" value="Addition" />
    <property role="TrG5h" value="Namespace" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="67VaKSImrrd" role="1TKVEi">
      <property role="IQ2ns" value="7060284180740552397" />
      <property role="20kJfa" value="reference" />
      <ref role="20lvS9" node="67VaKSImrqZ" resolve="IReferenceTarget" />
    </node>
    <node concept="PrWs8" id="67VaKSImrrg" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="PlHQZ" id="67VaKSImrqZ">
    <property role="3GE5qa" value="Addition" />
    <property role="EcuMT" value="7060284180740552382" />
    <property role="TrG5h" value="IReferenceTarget" />
    <node concept="PrWs8" id="67VaKSInKOc" role="PrDN$">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="67VaKSImrr0">
    <property role="EcuMT" value="7060284180740552384" />
    <property role="3GE5qa" value="Addition" />
    <property role="TrG5h" value="NugetPackage" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="67VaKSImrr1" role="PzmwI">
      <ref role="PrY4T" node="67VaKSImrqZ" resolve="IReferenceTarget" />
    </node>
    <node concept="PrWs8" id="67VaKSImVyU" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="67VaKSImrra" role="1TKVEl">
      <property role="IQ2nx" value="7060284180740552394" />
      <property role="TrG5h" value="version" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="67VaKSImrr3">
    <property role="EcuMT" value="7060284180740552387" />
    <property role="3GE5qa" value="Addition" />
    <property role="TrG5h" value="Project" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="67VaKSImrr4" role="PzmwI">
      <ref role="PrY4T" node="67VaKSImrqZ" resolve="IReferenceTarget" />
    </node>
    <node concept="1TJgyi" id="67VaKSImrr6" role="1TKVEl">
      <property role="IQ2nx" value="7060284180740552390" />
      <property role="TrG5h" value="relativePath" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="67VaKSImrri">
    <property role="EcuMT" value="7060284180740552402" />
    <property role="TrG5h" value="NamespaceReference" />
    <property role="3GE5qa" value="Addition" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="67VaKSImrrj" role="1TKVEi">
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="7060284180740552403" />
      <property role="20kJfa" value="namespace" />
      <ref role="20lvS9" node="67VaKSImrqV" resolve="Namespace" />
    </node>
  </node>
  <node concept="1TIwiD" id="67VaKSInKKO">
    <property role="EcuMT" value="7060284180740901940" />
    <property role="3GE5qa" value="Addition" />
    <property role="TrG5h" value="Environment" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="67VaKSInKKP" role="1TKVEi">
      <property role="IQ2ns" value="7060284180740901941" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="namespaces" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="67VaKSImrqV" resolve="Namespace" />
    </node>
    <node concept="1TJgyj" id="67VaKSInKKR" role="1TKVEi">
      <property role="IQ2ns" value="7060284180740901943" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="referenceTargets" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="67VaKSImrqZ" resolve="IReferenceTarget" />
    </node>
  </node>
</model>

