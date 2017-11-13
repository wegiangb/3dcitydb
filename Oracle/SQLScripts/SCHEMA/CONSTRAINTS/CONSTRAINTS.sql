-- 3D City Database - The Open Source CityGML Database
-- http://www.3dcitydb.org/
-- 
-- Copyright 2013 - 2017
-- Chair of Geoinformatics
-- Technical University of Munich, Germany
-- https://www.gis.bgu.tum.de/
-- 
-- The 3D City Database is jointly developed with the following
-- cooperation partners:
-- 
-- virtualcitySYSTEMS GmbH, Berlin <http://www.virtualcitysystems.de/>
-- M.O.S.S. Computer Grafik Systeme GmbH, Taufkirchen <http://www.moss.de/>
-- 
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
-- 
--     http://www.apache.org/licenses/LICENSE-2.0
--     
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--

ALTER TABLE ADDRESS_TO_BRIDGE
ADD CONSTRAINT ADDRESS_TO_BRIDGE_FK FOREIGN KEY
(
  ADDRESS_ID 
)
REFERENCES ADDRESS
(
  ID 
)
ENABLE;

ALTER TABLE ADDRESS_TO_BRIDGE
ADD CONSTRAINT ADDRESS_TO_BRIDGE_FK1 FOREIGN KEY
(
  BRIDGE_ID 
)
REFERENCES BRIDGE
(
  ID 
)
ENABLE;

ALTER TABLE ADDRESS_TO_BUILDING
ADD CONSTRAINT ADDRESS_TO_BUILDING_FK FOREIGN KEY
(
  ADDRESS_ID 
)
REFERENCES ADDRESS
(
  ID 
)
ENABLE;

ALTER TABLE ADDRESS_TO_BUILDING
ADD CONSTRAINT ADDRESS_TO_BUILDING_FK1 FOREIGN KEY
(
  BUILDING_ID 
)
REFERENCES BUILDING
(
  ID 
)
ENABLE;

ALTER TABLE APPEARANCE
ADD CONSTRAINT APPEARANCE_CITYMODEL_FK FOREIGN KEY
(
  CITYMODEL_ID 
)
REFERENCES CITYMODEL
(
  ID 
)
ENABLE;

ALTER TABLE APPEARANCE
ADD CONSTRAINT APPEARANCE_CITYOBJECT_FK FOREIGN KEY
(
  CITYOBJECT_ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE APPEAR_TO_SURFACE_DATA
ADD CONSTRAINT APPEAR_TO_SURFACE_DATA_FK FOREIGN KEY
(
  SURFACE_DATA_ID 
)
REFERENCES SURFACE_DATA
(
  ID 
)
ENABLE;

ALTER TABLE APPEAR_TO_SURFACE_DATA
ADD CONSTRAINT APPEAR_TO_SURFACE_DATA_FK1 FOREIGN KEY
(
  APPEARANCE_ID 
)
REFERENCES APPEARANCE
(
  ID 
)
ENABLE;

ALTER TABLE BREAKLINE_RELIEF
ADD CONSTRAINT BREAKLINE_RELIEF_COMP_FK FOREIGN KEY
(
  ID 
)
REFERENCES RELIEF_COMPONENT
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE
ADD CONSTRAINT BRIDGE_CITYOBJECT_FK FOREIGN KEY
(
  ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE
ADD CONSTRAINT BRIDGE_LOD1MSRF_FK FOREIGN KEY
(
  LOD1_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE
ADD CONSTRAINT BRIDGE_LOD1SOLID_FK FOREIGN KEY
(
  LOD1_SOLID_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE
ADD CONSTRAINT BRIDGE_LOD2MSRF_FK FOREIGN KEY
(
  LOD2_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE
ADD CONSTRAINT BRIDGE_LOD2SOLID_FK FOREIGN KEY
(
  LOD2_SOLID_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE
ADD CONSTRAINT BRIDGE_LOD3MSRF_FK FOREIGN KEY
(
  LOD3_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE
ADD CONSTRAINT BRIDGE_LOD3SOLID_FK FOREIGN KEY
(
  LOD3_SOLID_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE
ADD CONSTRAINT BRIDGE_LOD4MSRF_FK FOREIGN KEY
(
  LOD4_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE
ADD CONSTRAINT BRIDGE_LOD4SOLID_FK FOREIGN KEY
(
  LOD4_SOLID_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE
ADD CONSTRAINT BRIDGE_PARENT_FK FOREIGN KEY
(
  BRIDGE_PARENT_ID 
)
REFERENCES BRIDGE
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE
ADD CONSTRAINT BRIDGE_ROOT_FK FOREIGN KEY
(
  BRIDGE_ROOT_ID 
)
REFERENCES BRIDGE
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_CONSTR_ELEMENT
ADD CONSTRAINT BRIDGE_CONSTR_BRIDGE_FK FOREIGN KEY
(
  BRIDGE_ID 
)
REFERENCES BRIDGE
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_CONSTR_ELEMENT
ADD CONSTRAINT BRIDGE_CONSTR_CITYOBJ_FK FOREIGN KEY
(
  ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_CONSTR_ELEMENT
ADD CONSTRAINT BRIDGE_CONSTR_LOD1BREP_FK FOREIGN KEY
(
  LOD1_BREP_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_CONSTR_ELEMENT
ADD CONSTRAINT BRIDGE_CONSTR_LOD1IMPL_FK FOREIGN KEY
(
  LOD1_IMPLICIT_REP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_CONSTR_ELEMENT
ADD CONSTRAINT BRIDGE_CONSTR_LOD2BREP_FK FOREIGN KEY
(
  LOD2_BREP_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_CONSTR_ELEMENT
ADD CONSTRAINT BRIDGE_CONSTR_LOD2IMPL_FK FOREIGN KEY
(
  LOD2_IMPLICIT_REP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_CONSTR_ELEMENT
ADD CONSTRAINT BRIDGE_CONSTR_LOD3BREP_FK FOREIGN KEY
(
  LOD3_BREP_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_CONSTR_ELEMENT
ADD CONSTRAINT BRIDGE_CONSTR_LOD3IMPL_FK FOREIGN KEY
(
  LOD3_IMPLICIT_REP_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_CONSTR_ELEMENT
ADD CONSTRAINT BRIDGE_CONSTR_LOD4BREP_FK FOREIGN KEY
(
  LOD4_BREP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_CONSTR_ELEMENT
ADD CONSTRAINT BRIDGE_CONSTR_LOD4IMPL_FK FOREIGN KEY
(
  LOD4_IMPLICIT_REP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_FURNITURE
ADD CONSTRAINT BRIDGE_FURN_BRD_ROOM_FK FOREIGN KEY
(
  BRIDGE_ROOM_ID 
)
REFERENCES BRIDGE_ROOM
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_FURNITURE
ADD CONSTRAINT BRIDGE_FURN_CITYOBJECT_FK FOREIGN KEY
(
  ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_FURNITURE
ADD CONSTRAINT BRIDGE_FURN_LOD4BREP_FK FOREIGN KEY
(
  LOD4_BREP_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_FURNITURE
ADD CONSTRAINT BRIDGE_FURN_LOD4IMPL_FK FOREIGN KEY
(
  LOD4_IMPLICIT_REP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_INSTALLATION
ADD CONSTRAINT BRIDGE_INST_BRD_ROOM_FK FOREIGN KEY
(
  BRIDGE_ROOM_ID 
)
REFERENCES BRIDGE_ROOM
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_INSTALLATION
ADD CONSTRAINT BRIDGE_INST_BRIDGE_FK FOREIGN KEY
(
  BRIDGE_ID 
)
REFERENCES BRIDGE
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_INSTALLATION
ADD CONSTRAINT BRIDGE_INST_CITYOBJECT_FK FOREIGN KEY
(
  ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_INSTALLATION
ADD CONSTRAINT BRIDGE_INST_LOD2BREP_FK FOREIGN KEY
(
  LOD2_BREP_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_INSTALLATION
ADD CONSTRAINT BRIDGE_INST_LOD2IMPL_FK FOREIGN KEY
(
  LOD2_IMPLICIT_REP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_INSTALLATION
ADD CONSTRAINT BRIDGE_INST_LOD3BREP_FK FOREIGN KEY
(
  LOD3_BREP_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_INSTALLATION
ADD CONSTRAINT BRIDGE_INST_LOD3IMPL_FK FOREIGN KEY
(
  LOD3_IMPLICIT_REP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_INSTALLATION
ADD CONSTRAINT BRIDGE_INST_LOD4BREP_FK FOREIGN KEY
(
  LOD4_BREP_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_INSTALLATION
ADD CONSTRAINT BRIDGE_INST_LOD4IMPL_FK FOREIGN KEY
(
  LOD4_IMPLICIT_REP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_INSTALLATION
ADD CONSTRAINT BRIDGE_INST_OBJCLASS_FK FOREIGN KEY
(
  OBJECTCLASS_ID 
)
REFERENCES OBJECTCLASS
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_OPENING
ADD CONSTRAINT BRIDGE_OPEN_ADDRESS_FK FOREIGN KEY
(
  ADDRESS_ID 
)
REFERENCES ADDRESS
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_OPENING
ADD CONSTRAINT BRIDGE_OPEN_CITYOBJECT_FK FOREIGN KEY
(
  ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_OPENING
ADD CONSTRAINT BRIDGE_OPEN_LOD3IMPL_FK FOREIGN KEY
(
  LOD3_IMPLICIT_REP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_OPENING
ADD CONSTRAINT BRIDGE_OPEN_LOD3MSRF_FK FOREIGN KEY
(
  LOD3_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_OPENING
ADD CONSTRAINT BRIDGE_OPEN_LOD4IMPL_FK FOREIGN KEY
(
  LOD4_IMPLICIT_REP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_OPENING
ADD CONSTRAINT BRIDGE_OPEN_LOD4MSRF_FK FOREIGN KEY
(
  LOD4_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_OPENING
ADD CONSTRAINT BRIDGE_OPEN_OBJCLASS_FK FOREIGN KEY
(
  OBJECTCLASS_ID 
)
REFERENCES OBJECTCLASS
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_OPEN_TO_THEM_SRF
ADD CONSTRAINT BRD_OPEN_TO_THEM_SRF_FK FOREIGN KEY
(
  BRIDGE_OPENING_ID 
)
REFERENCES BRIDGE_OPENING
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_OPEN_TO_THEM_SRF
ADD CONSTRAINT BRD_OPEN_TO_THEM_SRF_FK1 FOREIGN KEY
(
  BRIDGE_THEMATIC_SURFACE_ID 
)
REFERENCES BRIDGE_THEMATIC_SURFACE
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_ROOM
ADD CONSTRAINT BRIDGE_ROOM_BRIDGE_FK FOREIGN KEY
(
  BRIDGE_ID 
)
REFERENCES BRIDGE
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_ROOM
ADD CONSTRAINT BRIDGE_ROOM_CITYOBJECT_FK FOREIGN KEY
(
  ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_ROOM
ADD CONSTRAINT BRIDGE_ROOM_LOD4MSRF_FK FOREIGN KEY
(
  LOD4_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_ROOM
ADD CONSTRAINT BRIDGE_ROOM_LOD4SOLID_FK FOREIGN KEY
(
  LOD4_SOLID_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_THEMATIC_SURFACE
ADD CONSTRAINT BRD_THEM_SRF_BRD_CONST_FK FOREIGN KEY
(
  BRIDGE_CONSTR_ELEMENT_ID  
)
REFERENCES BRIDGE_CONSTR_ELEMENT
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_THEMATIC_SURFACE
ADD CONSTRAINT BRD_THEM_SRF_BRD_INST_FK FOREIGN KEY
(
  BRIDGE_INSTALLATION_ID 
)
REFERENCES BRIDGE_INSTALLATION
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_THEMATIC_SURFACE
ADD CONSTRAINT BRD_THEM_SRF_BRD_ROOM_FK FOREIGN KEY
(
  BRIDGE_ROOM_ID 
)
REFERENCES BRIDGE_ROOM
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_THEMATIC_SURFACE
ADD CONSTRAINT BRD_THEM_SRF_BRIDGE_FK FOREIGN KEY
(
  BRIDGE_ID 
)
REFERENCES BRIDGE
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_THEMATIC_SURFACE
ADD CONSTRAINT BRD_THEM_SRF_CITYOBJ_FK FOREIGN KEY
(
  ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_THEMATIC_SURFACE
ADD CONSTRAINT BRD_THEM_SRF_LOD2MSRF_FK FOREIGN KEY
(
  LOD2_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_THEMATIC_SURFACE
ADD CONSTRAINT BRD_THEM_SRF_LOD3MSRF_FK FOREIGN KEY
(
  LOD3_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_THEMATIC_SURFACE
ADD CONSTRAINT BRD_THEM_SRF_LOD4MSRF_FK FOREIGN KEY
(
  LOD4_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BRIDGE_THEMATIC_SURFACE
ADD CONSTRAINT BRD_THEM_SRF_OBJCLASS_FK FOREIGN KEY
(
  OBJECTCLASS_ID 
)
REFERENCES OBJECTCLASS
(
  ID 
)
ENABLE;

ALTER TABLE BUILDING
ADD CONSTRAINT BUILDING_CITYOBJECT_FK FOREIGN KEY
(
  ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE BUILDING
ADD CONSTRAINT BUILDING_LOD0FOOTPRINT_FK FOREIGN KEY
(
  LOD0_FOOTPRINT_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BUILDING
ADD CONSTRAINT BUILDING_LOD0ROOFPRINT_FK FOREIGN KEY
(
  LOD0_ROOFPRINT_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BUILDING
ADD CONSTRAINT BUILDING_LOD1MSRF_FK FOREIGN KEY
(
  LOD1_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BUILDING
ADD CONSTRAINT BUILDING_LOD1SOLID_FK FOREIGN KEY
(
  LOD1_SOLID_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BUILDING
ADD CONSTRAINT BUILDING_LOD2MSRF_FK FOREIGN KEY
(
  LOD2_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BUILDING
ADD CONSTRAINT BUILDING_LOD2SOLID_FK FOREIGN KEY
(
  LOD2_SOLID_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BUILDING
ADD CONSTRAINT BUILDING_LOD3MSRF_FK FOREIGN KEY
(
  LOD3_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BUILDING
ADD CONSTRAINT BUILDING_LOD3SOLID_FK FOREIGN KEY
(
  LOD3_SOLID_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BUILDING
ADD CONSTRAINT BUILDING_LOD4MSRF_FK FOREIGN KEY
(
  LOD4_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BUILDING
ADD CONSTRAINT BUILDING_LOD4SOLID_FK FOREIGN KEY
(
  LOD4_SOLID_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BUILDING
ADD CONSTRAINT BUILDING_PARENT_FK FOREIGN KEY
(
  BUILDING_PARENT_ID 
)
REFERENCES BUILDING
(
  ID 
)
ENABLE;

ALTER TABLE BUILDING
ADD CONSTRAINT BUILDING_ROOT_FK FOREIGN KEY
(
  BUILDING_ROOT_ID 
)
REFERENCES BUILDING
(
  ID 
)
ENABLE;

ALTER TABLE BUILDING_FURNITURE
ADD CONSTRAINT BLDG_FURN_CITYOBJECT_FK FOREIGN KEY
(
  ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE BUILDING_FURNITURE
ADD CONSTRAINT BLDG_FURN_LOD4BREP_FK FOREIGN KEY
(
  LOD4_BREP_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BUILDING_FURNITURE
ADD CONSTRAINT BLDG_FURN_LOD4IMPL_FK FOREIGN KEY
(
  LOD4_IMPLICIT_REP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BUILDING_FURNITURE
ADD CONSTRAINT BLDG_FURN_ROOM_FK FOREIGN KEY
(
  ROOM_ID 
)
REFERENCES ROOM
(
  ID 
)
ENABLE;

ALTER TABLE BUILDING_INSTALLATION
ADD CONSTRAINT BLDG_INST_BUILDING_FK FOREIGN KEY
(
  BUILDING_ID 
)
REFERENCES BUILDING
(
  ID 
)
ENABLE;

ALTER TABLE BUILDING_INSTALLATION
ADD CONSTRAINT BLDG_INST_CITYOBJECT_FK FOREIGN KEY
(
  ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE BUILDING_INSTALLATION
ADD CONSTRAINT BLDG_INST_LOD2BREP_FK FOREIGN KEY
(
  LOD2_BREP_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BUILDING_INSTALLATION
ADD CONSTRAINT BLDG_INST_LOD2IMPL_FK FOREIGN KEY
(
  LOD2_IMPLICIT_REP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BUILDING_INSTALLATION
ADD CONSTRAINT BLDG_INST_LOD3BREP_FK FOREIGN KEY
(
  LOD3_BREP_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BUILDING_INSTALLATION
ADD CONSTRAINT BLDG_INST_LOD3IMPL_FK FOREIGN KEY
(
  LOD3_IMPLICIT_REP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BUILDING_INSTALLATION
ADD CONSTRAINT BLDG_INST_LOD4BREP_FK FOREIGN KEY
(
  LOD4_BREP_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BUILDING_INSTALLATION
ADD CONSTRAINT BLDG_INST_LOD4IMPL_FK FOREIGN KEY
(
  LOD4_IMPLICIT_REP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE BUILDING_INSTALLATION
ADD CONSTRAINT BLDG_INST_OBJECTCLASS_FK FOREIGN KEY
(
  OBJECTCLASS_ID 
)
REFERENCES OBJECTCLASS
(
  ID 
)
ENABLE;

ALTER TABLE BUILDING_INSTALLATION
ADD CONSTRAINT BLDG_INST_ROOM_FK FOREIGN KEY
(
  ROOM_ID 
)
REFERENCES ROOM
(
  ID 
)
ENABLE;

ALTER TABLE CITYOBJECT
ADD CONSTRAINT CITYOBJECT_OBJECTCLASS_FK FOREIGN KEY
(
  OBJECTCLASS_ID 
)
REFERENCES OBJECTCLASS
(
  ID 
)
ENABLE;

ALTER TABLE CITYOBJECTGROUP
ADD CONSTRAINT GROUP_BREP_FK FOREIGN KEY
(
  BREP_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE CITYOBJECTGROUP
ADD CONSTRAINT GROUP_CITYOBJECT_FK FOREIGN KEY
(
  ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE CITYOBJECTGROUP
ADD CONSTRAINT GROUP_PARENT_CITYOBJ_FK FOREIGN KEY
(
  PARENT_CITYOBJECT_ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE CITYOBJECT_GENERICATTRIB
ADD CONSTRAINT GENERICATTRIB_CITYOBJ_FK FOREIGN KEY
(
  CITYOBJECT_ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE CITYOBJECT_GENERICATTRIB
ADD CONSTRAINT GENERICATTRIB_GEOM_FK FOREIGN KEY
(
  SURFACE_GEOMETRY_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE CITYOBJECT_GENERICATTRIB
ADD CONSTRAINT GENERICATTRIB_PARENT_FK FOREIGN KEY
(
  PARENT_GENATTRIB_ID 
)
REFERENCES CITYOBJECT_GENERICATTRIB
(
  ID 
)
ENABLE;

ALTER TABLE CITYOBJECT_GENERICATTRIB
ADD CONSTRAINT GENERICATTRIB_ROOT_FK FOREIGN KEY
(
  ROOT_GENATTRIB_ID 
)
REFERENCES CITYOBJECT_GENERICATTRIB
(
  ID 
)
ENABLE;

ALTER TABLE CITYOBJECT_MEMBER
ADD CONSTRAINT CITYOBJECT_MEMBER_FK FOREIGN KEY
(
  CITYOBJECT_ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE CITYOBJECT_MEMBER
ADD CONSTRAINT CITYOBJECT_MEMBER_FK1 FOREIGN KEY
(
  CITYMODEL_ID 
)
REFERENCES CITYMODEL
(
  ID 
)
ENABLE;

ALTER TABLE CITY_FURNITURE
ADD CONSTRAINT CITY_FURN_CITYOBJ_FK FOREIGN KEY
(
  ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE CITY_FURNITURE
ADD CONSTRAINT CITY_FURN_LOD1BREP_FK FOREIGN KEY
(
  LOD1_BREP_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE CITY_FURNITURE
ADD CONSTRAINT CITY_FURN_LOD1IMPL_FK FOREIGN KEY
(
  LOD1_IMPLICIT_REP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE CITY_FURNITURE
ADD CONSTRAINT CITY_FURN_LOD2BREP_FK FOREIGN KEY
(
  LOD2_BREP_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE CITY_FURNITURE
ADD CONSTRAINT CITY_FURN_LOD2IMPL_FK FOREIGN KEY
(
  LOD2_IMPLICIT_REP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE CITY_FURNITURE
ADD CONSTRAINT CITY_FURN_LOD3BREP_FK FOREIGN KEY
(
  LOD3_BREP_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE CITY_FURNITURE
ADD CONSTRAINT CITY_FURN_LOD3IMPL_FK FOREIGN KEY
(
  LOD3_IMPLICIT_REP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE CITY_FURNITURE
ADD CONSTRAINT CITY_FURN_LOD4BREP_FK FOREIGN KEY
(
  LOD4_BREP_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE CITY_FURNITURE
ADD CONSTRAINT CITY_FURN_LOD4IMPL_FK FOREIGN KEY
(
  LOD4_IMPLICIT_REP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE EXTERNAL_REFERENCE
ADD CONSTRAINT EXT_REF_CITYOBJECT_FK FOREIGN KEY
(
  CITYOBJECT_ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE GENERALIZATION
ADD CONSTRAINT GENERAL_CITYOBJECT_FK FOREIGN KEY
(
  CITYOBJECT_ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE GENERALIZATION
ADD CONSTRAINT GENERAL_GENERALIZES_TO_FK FOREIGN KEY
(
  GENERALIZES_TO_ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE GENERIC_CITYOBJECT
ADD CONSTRAINT GEN_OBJECT_CITYOBJECT_FK FOREIGN KEY
(
  ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE GENERIC_CITYOBJECT
ADD CONSTRAINT GEN_OBJECT_LOD0BREP_FK FOREIGN KEY
(
  LOD0_BREP_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE GENERIC_CITYOBJECT
ADD CONSTRAINT GEN_OBJECT_LOD0IMPL_FK FOREIGN KEY
(
  LOD0_IMPLICIT_REP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE GENERIC_CITYOBJECT
ADD CONSTRAINT GEN_OBJECT_LOD1BREP_FK FOREIGN KEY
(
  LOD1_BREP_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE GENERIC_CITYOBJECT
ADD CONSTRAINT GEN_OBJECT_LOD1IMPL_FK FOREIGN KEY
(
  LOD1_IMPLICIT_REP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE GENERIC_CITYOBJECT
ADD CONSTRAINT GEN_OBJECT_LOD2BREP_FK FOREIGN KEY
(
  LOD2_BREP_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE GENERIC_CITYOBJECT
ADD CONSTRAINT GEN_OBJECT_LOD2IMPL_FK FOREIGN KEY
(
  LOD2_IMPLICIT_REP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE GENERIC_CITYOBJECT
ADD CONSTRAINT GEN_OBJECT_LOD3BREP_FK FOREIGN KEY
(
  LOD3_BREP_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE GENERIC_CITYOBJECT
ADD CONSTRAINT GEN_OBJECT_LOD3IMPL_FK FOREIGN KEY
(
  LOD3_IMPLICIT_REP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE GENERIC_CITYOBJECT
ADD CONSTRAINT GEN_OBJECT_LOD4IMPL_FK FOREIGN KEY
(
  LOD4_IMPLICIT_REP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE GENERIC_CITYOBJECT
ADD CONSTRAINT GEN_OBJECT_LOD9BREP_FK FOREIGN KEY
(
  LOD4_BREP_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE GROUP_TO_CITYOBJECT
ADD CONSTRAINT GROUP_TO_CITYOBJECT_FK FOREIGN KEY
(
  CITYOBJECT_ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE GROUP_TO_CITYOBJECT
ADD CONSTRAINT GROUP_TO_CITYOBJECT_FK1 FOREIGN KEY
(
  CITYOBJECTGROUP_ID 
)
REFERENCES CITYOBJECTGROUP
(
  ID 
)
ENABLE;

ALTER TABLE IMPLICIT_GEOMETRY
ADD CONSTRAINT IMPLICIT_GEOM_BREP_FK FOREIGN KEY
(
  RELATIVE_BREP_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE LAND_USE
ADD CONSTRAINT LAND_USE_CITYOBJECT_FK FOREIGN KEY
(
  ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE LAND_USE
ADD CONSTRAINT LAND_USE_LOD0MSRF_FK FOREIGN KEY
(
  LOD0_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE LAND_USE
ADD CONSTRAINT LAND_USE_LOD1MSRF_FK FOREIGN KEY
(
  LOD1_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE LAND_USE
ADD CONSTRAINT LAND_USE_LOD2MSRF_FK FOREIGN KEY
(
  LOD2_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE LAND_USE
ADD CONSTRAINT LAND_USE_LOD3MSRF_FK FOREIGN KEY
(
  LOD3_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE LAND_USE
ADD CONSTRAINT LAND_USE_LOD4MSRF_FK FOREIGN KEY
(
  LOD4_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE MASSPOINT_RELIEF
ADD CONSTRAINT MASSPOINT_RELIEF_COMP_FK FOREIGN KEY
(
  ID 
)
REFERENCES RELIEF_COMPONENT
(
  ID 
)
ENABLE;

ALTER TABLE OBJECTCLASS
ADD CONSTRAINT OBJECTCLASS_SUPERCLASS_FK FOREIGN KEY
(
  SUPERCLASS_ID 
)
REFERENCES OBJECTCLASS
(
  ID 
)
ENABLE;

ALTER TABLE OPENING
ADD CONSTRAINT OPENING_ADDRESS_FK FOREIGN KEY
(
  ADDRESS_ID 
)
REFERENCES ADDRESS
(
  ID 
)
ENABLE;

ALTER TABLE OPENING
ADD CONSTRAINT OPENING_CITYOBJECT_FK FOREIGN KEY
(
  ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE OPENING
ADD CONSTRAINT OPENING_LOD3IMPL_FK FOREIGN KEY
(
  LOD3_IMPLICIT_REP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE OPENING
ADD CONSTRAINT OPENING_LOD3MSRF_FK FOREIGN KEY
(
  LOD3_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE OPENING
ADD CONSTRAINT OPENING_LOD4IMPL_FK FOREIGN KEY
(
  LOD4_IMPLICIT_REP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE OPENING
ADD CONSTRAINT OPENING_LOD4MSRF_FK FOREIGN KEY
(
  LOD4_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE OPENING
ADD CONSTRAINT OPENING_OBJECTCLASS_FK FOREIGN KEY
(
  OBJECTCLASS_ID 
)
REFERENCES OBJECTCLASS
(
  ID 
)
ENABLE;

ALTER TABLE OPENING_TO_THEM_SURFACE
ADD CONSTRAINT OPEN_TO_THEM_SURFACE_FK FOREIGN KEY
(
  OPENING_ID 
)
REFERENCES OPENING
(
  ID 
)
ENABLE;

ALTER TABLE OPENING_TO_THEM_SURFACE
ADD CONSTRAINT OPEN_TO_THEM_SURFACE_FK1 FOREIGN KEY
(
  THEMATIC_SURFACE_ID 
)
REFERENCES THEMATIC_SURFACE
(
  ID 
)
ENABLE;

ALTER TABLE PLANT_COVER
ADD CONSTRAINT PLANT_COVER_CITYOBJECT_FK FOREIGN KEY
(
  ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE PLANT_COVER
ADD CONSTRAINT PLANT_COVER_LOD1MSOLID_FK FOREIGN KEY
(
  LOD1_MULTI_SOLID_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE PLANT_COVER
ADD CONSTRAINT PLANT_COVER_LOD1MSRF_FK FOREIGN KEY
(
  LOD1_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE PLANT_COVER
ADD CONSTRAINT PLANT_COVER_LOD2MSOLID_FK FOREIGN KEY
(
  LOD2_MULTI_SOLID_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE PLANT_COVER
ADD CONSTRAINT PLANT_COVER_LOD2MSRF_FK FOREIGN KEY
(
  LOD2_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE PLANT_COVER
ADD CONSTRAINT PLANT_COVER_LOD3MSOLID_FK FOREIGN KEY
(
  LOD3_MULTI_SOLID_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE PLANT_COVER
ADD CONSTRAINT PLANT_COVER_LOD3MSRF_FK FOREIGN KEY
(
  LOD3_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE PLANT_COVER
ADD CONSTRAINT PLANT_COVER_LOD4MSOLID_FK FOREIGN KEY
(
  LOD4_MULTI_SOLID_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE PLANT_COVER
ADD CONSTRAINT PLANT_COVER_LOD4MSRF_FK FOREIGN KEY
(
  LOD4_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

BEGIN
  IF ('&DBVERSION'='S' or '&DBVERSION'='s') THEN
    EXECUTE IMMEDIATE 'ALTER TABLE RASTER_RELIEF
	ADD CONSTRAINT RASTER_RELIEF_COMP_FK FOREIGN KEY
	(
	  ID
	)
	REFERENCES RELIEF_COMPONENT
	(
	  ID
	)
	ENABLE';  

	EXECUTE IMMEDIATE 'ALTER TABLE RASTER_RELIEF
	ADD CONSTRAINT RASTER_RELIEF_COVERAGE_FK FOREIGN KEY
	(
	  COVERAGE_ID 
	)
	REFERENCES GRID_COVERAGE
	(
	  ID 
	)
	ENABLE';
  END IF;
END;
/

ALTER TABLE RELIEF_COMPONENT
ADD CONSTRAINT RELIEF_COMP_CITYOBJECT_FK FOREIGN KEY
(
  ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE RELIEF_COMPONENT
ADD CONSTRAINT RELIEF_COMP_OBJCLASS_FK FOREIGN KEY
(
  OBJECTCLASS_ID 
)
REFERENCES OBJECTCLASS
(
  ID 
)
ENABLE;

ALTER TABLE RELIEF_FEATURE
ADD CONSTRAINT RELIEF_FEAT_CITYOBJECT_FK FOREIGN KEY
(
  ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE RELIEF_FEAT_TO_REL_COMP
ADD CONSTRAINT REL_FEAT_TO_REL_COMP_FK FOREIGN KEY
(
  RELIEF_COMPONENT_ID 
)
REFERENCES RELIEF_COMPONENT
(
  ID 
)
ENABLE;

ALTER TABLE RELIEF_FEAT_TO_REL_COMP
ADD CONSTRAINT REL_FEAT_TO_REL_COMP_FK1 FOREIGN KEY
(
  RELIEF_FEATURE_ID 
)
REFERENCES RELIEF_FEATURE
(
  ID 
)
ENABLE;

ALTER TABLE ROOM
ADD CONSTRAINT ROOM_BUILDING_FK FOREIGN KEY
(
  BUILDING_ID 
)
REFERENCES BUILDING
(
  ID 
)
ENABLE;

ALTER TABLE ROOM
ADD CONSTRAINT ROOM_CITYOBJECT_FK FOREIGN KEY
(
  ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE ROOM
ADD CONSTRAINT ROOM_LOD4MSRF_FK FOREIGN KEY
(
  LOD4_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE ROOM
ADD CONSTRAINT ROOM_LOD4SOLID_FK FOREIGN KEY
(
  LOD4_SOLID_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE SOLITARY_VEGETAT_OBJECT
ADD CONSTRAINT SOL_VEG_OBJ_CITYOBJECT_FK FOREIGN KEY
(
  ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE SOLITARY_VEGETAT_OBJECT
ADD CONSTRAINT SOL_VEG_OBJ_LOD1BREP_FK FOREIGN KEY
(
  LOD1_BREP_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE SOLITARY_VEGETAT_OBJECT
ADD CONSTRAINT SOL_VEG_OBJ_LOD1IMPL_FK FOREIGN KEY
(
  LOD1_IMPLICIT_REP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE SOLITARY_VEGETAT_OBJECT
ADD CONSTRAINT SOL_VEG_OBJ_LOD2BREP_FK FOREIGN KEY
(
  LOD2_BREP_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE SOLITARY_VEGETAT_OBJECT
ADD CONSTRAINT SOL_VEG_OBJ_LOD2IMPL_FK FOREIGN KEY
(
  LOD2_IMPLICIT_REP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE SOLITARY_VEGETAT_OBJECT
ADD CONSTRAINT SOL_VEG_OBJ_LOD3BREP_FK FOREIGN KEY
(
  LOD3_BREP_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE SOLITARY_VEGETAT_OBJECT
ADD CONSTRAINT SOL_VEG_OBJ_LOD3IMPL_FK FOREIGN KEY
(
  LOD3_IMPLICIT_REP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE SOLITARY_VEGETAT_OBJECT
ADD CONSTRAINT SOL_VEG_OBJ_LOD4BREP_FK FOREIGN KEY
(
  LOD4_BREP_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE SOLITARY_VEGETAT_OBJECT
ADD CONSTRAINT SOL_VEG_OBJ_LOD4IMPL_FK FOREIGN KEY
(
  LOD4_IMPLICIT_REP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE SURFACE_DATA
ADD CONSTRAINT SURFACE_DATA_OBJCLASS_FK FOREIGN KEY
(
  OBJECTCLASS_ID 
)
REFERENCES OBJECTCLASS
(
  ID 
)
ENABLE;

ALTER TABLE SURFACE_DATA
ADD CONSTRAINT SURFACE_DATA_TEX_IMAGE_FK FOREIGN KEY
(
  TEX_IMAGE_ID 
)
REFERENCES TEX_IMAGE
(
  ID 
)
ENABLE;

ALTER TABLE SURFACE_GEOMETRY
ADD CONSTRAINT SURFACE_GEOM_CITYOBJ_FK FOREIGN KEY
(
  CITYOBJECT_ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE SURFACE_GEOMETRY
ADD CONSTRAINT SURFACE_GEOM_PARENT_FK FOREIGN KEY
(
  PARENT_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE SURFACE_GEOMETRY
ADD CONSTRAINT SURFACE_GEOM_ROOT_FK FOREIGN KEY
(
  ROOT_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TEXTUREPARAM
ADD CONSTRAINT TEXPARAM_GEOM_FK FOREIGN KEY
(
  SURFACE_GEOMETRY_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TEXTUREPARAM
ADD CONSTRAINT TEXPARAM_SURFACE_DATA_FK FOREIGN KEY
(
  SURFACE_DATA_ID 
)
REFERENCES SURFACE_DATA
(
  ID 
)
ENABLE;

ALTER TABLE THEMATIC_SURFACE
ADD CONSTRAINT THEM_SURFACE_BLDG_INST_FK FOREIGN KEY
(
  BUILDING_INSTALLATION_ID 
)
REFERENCES BUILDING_INSTALLATION
(
  ID 
)
ENABLE;

ALTER TABLE THEMATIC_SURFACE
ADD CONSTRAINT THEM_SURFACE_BUILDING_FK FOREIGN KEY
(
  BUILDING_ID 
)
REFERENCES BUILDING
(
  ID 
)
ENABLE;

ALTER TABLE THEMATIC_SURFACE
ADD CONSTRAINT THEM_SURFACE_CITYOBJECT_FK FOREIGN KEY
(
  ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE THEMATIC_SURFACE
ADD CONSTRAINT THEM_SURFACE_LOD2MSRF_FK FOREIGN KEY
(
  LOD2_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE THEMATIC_SURFACE
ADD CONSTRAINT THEM_SURFACE_LOD3MSRF_FK FOREIGN KEY
(
  LOD3_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE THEMATIC_SURFACE
ADD CONSTRAINT THEM_SURFACE_LOD4MSRF_FK FOREIGN KEY
(
  LOD4_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE THEMATIC_SURFACE
ADD CONSTRAINT THEM_SURFACE_OBJCLASS_FK FOREIGN KEY
(
  OBJECTCLASS_ID 
)
REFERENCES OBJECTCLASS
(
  ID 
)
ENABLE;

ALTER TABLE THEMATIC_SURFACE
ADD CONSTRAINT THEM_SURFACE_ROOM_FK FOREIGN KEY
(
  ROOM_ID 
)
REFERENCES ROOM
(
  ID 
)
ENABLE;

ALTER TABLE TIN_RELIEF
ADD CONSTRAINT TIN_RELIEF_COMP_FK FOREIGN KEY
(
  ID 
)
REFERENCES RELIEF_COMPONENT
(
  ID 
)
ENABLE;

ALTER TABLE TIN_RELIEF
ADD CONSTRAINT TIN_RELIEF_GEOM_FK FOREIGN KEY
(
  SURFACE_GEOMETRY_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TRAFFIC_AREA
ADD CONSTRAINT TRAFFIC_AREA_CITYOBJECT_FK FOREIGN KEY
(
  ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE TRAFFIC_AREA
ADD CONSTRAINT TRAFFIC_AREA_LOD2MSRF_FK FOREIGN KEY
(
  LOD2_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TRAFFIC_AREA
ADD CONSTRAINT TRAFFIC_AREA_LOD3MSRF_FK FOREIGN KEY
(
  LOD3_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TRAFFIC_AREA
ADD CONSTRAINT TRAFFIC_AREA_LOD4MSRF_FK FOREIGN KEY
(
  LOD4_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TRAFFIC_AREA
ADD CONSTRAINT TRAFFIC_AREA_OBJCLASS_FK FOREIGN KEY
(
  OBJECTCLASS_ID 
)
REFERENCES OBJECTCLASS
(
  ID 
)
ENABLE;

ALTER TABLE TRAFFIC_AREA
ADD CONSTRAINT TRAFFIC_AREA_TRANCMPLX_FK FOREIGN KEY
(
  TRANSPORTATION_COMPLEX_ID 
)
REFERENCES TRANSPORTATION_COMPLEX
(
  ID 
)
ENABLE;

ALTER TABLE TRANSPORTATION_COMPLEX
ADD CONSTRAINT TRAN_COMPLEX_CITYOBJECT_FK FOREIGN KEY
(
  ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE TRANSPORTATION_COMPLEX
ADD CONSTRAINT TRAN_COMPLEX_LOD1MSRF_FK FOREIGN KEY
(
  LOD1_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TRANSPORTATION_COMPLEX
ADD CONSTRAINT TRAN_COMPLEX_LOD2MSRF_FK FOREIGN KEY
(
  LOD2_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TRANSPORTATION_COMPLEX
ADD CONSTRAINT TRAN_COMPLEX_LOD3MSRF_FK FOREIGN KEY
(
  LOD3_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TRANSPORTATION_COMPLEX
ADD CONSTRAINT TRAN_COMPLEX_LOD4MSRF_FK FOREIGN KEY
(
  LOD4_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TRANSPORTATION_COMPLEX
ADD CONSTRAINT TRAN_COMPLEX_OBJCLASS_FK FOREIGN KEY
(
  OBJECTCLASS_ID 
)
REFERENCES OBJECTCLASS
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL
ADD CONSTRAINT TUNNEL_CITYOBJECT_FK FOREIGN KEY
(
  ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL
ADD CONSTRAINT TUNNEL_LOD1MSRF_FK FOREIGN KEY
(
  LOD1_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL
ADD CONSTRAINT TUNNEL_LOD1SOLID_FK FOREIGN KEY
(
  LOD1_SOLID_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL
ADD CONSTRAINT TUNNEL_LOD2MSRF_FK FOREIGN KEY
(
  LOD2_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL
ADD CONSTRAINT TUNNEL_LOD2SOLID_FK FOREIGN KEY
(
  LOD2_SOLID_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL
ADD CONSTRAINT TUNNEL_LOD3MSRF_FK FOREIGN KEY
(
  LOD3_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL
ADD CONSTRAINT TUNNEL_LOD3SOLID_FK FOREIGN KEY
(
  LOD3_SOLID_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL
ADD CONSTRAINT TUNNEL_LOD4MSRF_FK FOREIGN KEY
(
  LOD4_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL
ADD CONSTRAINT TUNNEL_LOD4SOLID_FK FOREIGN KEY
(
  LOD4_SOLID_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL
ADD CONSTRAINT TUNNEL_PARENT_FK FOREIGN KEY
(
  TUNNEL_PARENT_ID 
)
REFERENCES TUNNEL
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL
ADD CONSTRAINT TUNNEL_ROOT_FK FOREIGN KEY
(
  TUNNEL_ROOT_ID 
)
REFERENCES TUNNEL
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL_FURNITURE
ADD CONSTRAINT TUNNEL_FURN_CITYOBJECT_FK FOREIGN KEY
(
  ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL_FURNITURE
ADD CONSTRAINT TUNNEL_FURN_HSPACE_FK FOREIGN KEY
(
  ID 
)
REFERENCES TUNNEL_HOLLOW_SPACE
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL_FURNITURE
ADD CONSTRAINT TUNNEL_FURN_LOD4BREP_FK FOREIGN KEY
(
  LOD4_BREP_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL_FURNITURE
ADD CONSTRAINT TUNNEL_FURN_LOD4IMPL_FK FOREIGN KEY
(
  LOD4_IMPLICIT_REP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL_HOLLOW_SPACE
ADD CONSTRAINT TUN_HSPACE_CITYOBJ_FK FOREIGN KEY
(
  ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL_HOLLOW_SPACE
ADD CONSTRAINT TUN_HSPACE_LOD4MSRF_FK FOREIGN KEY
(
  LOD4_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL_HOLLOW_SPACE
ADD CONSTRAINT TUN_HSPACE_LOD4SOLID_FK FOREIGN KEY
(
  LOD4_SOLID_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL_HOLLOW_SPACE
ADD CONSTRAINT TUN_HSPACE_TUNNEL_FK FOREIGN KEY
(
  TUNNEL_ID 
)
REFERENCES TUNNEL
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL_INSTALLATION
ADD CONSTRAINT TUNNEL_INST_CITYOBJECT_FK FOREIGN KEY
(
  ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL_INSTALLATION
ADD CONSTRAINT TUNNEL_INST_HSPACE_FK FOREIGN KEY
(
  TUNNEL_HOLLOW_SPACE_ID 
)
REFERENCES TUNNEL_HOLLOW_SPACE
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL_INSTALLATION
ADD CONSTRAINT TUNNEL_INST_LOD2BREP_FK FOREIGN KEY
(
  LOD2_BREP_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL_INSTALLATION
ADD CONSTRAINT TUNNEL_INST_LOD2IMPL_FK FOREIGN KEY
(
  LOD2_IMPLICIT_REP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL_INSTALLATION
ADD CONSTRAINT TUNNEL_INST_LOD3BREP_FK FOREIGN KEY
(
  LOD3_BREP_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL_INSTALLATION
ADD CONSTRAINT TUNNEL_INST_LOD3IMPL_FK FOREIGN KEY
(
  LOD3_IMPLICIT_REP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL_INSTALLATION
ADD CONSTRAINT TUNNEL_INST_LOD4BREP_FK FOREIGN KEY
(
  LOD4_BREP_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL_INSTALLATION
ADD CONSTRAINT TUNNEL_INST_LOD4IMPL_FK FOREIGN KEY
(
  LOD4_IMPLICIT_REP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL_INSTALLATION
ADD CONSTRAINT TUNNEL_INST_OBJCLASS_FK FOREIGN KEY
(
  OBJECTCLASS_ID 
)
REFERENCES OBJECTCLASS
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL_INSTALLATION
ADD CONSTRAINT TUNNEL_INST_TUNNEL_FK FOREIGN KEY
(
  TUNNEL_ID 
)
REFERENCES TUNNEL
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL_OPENING
ADD CONSTRAINT TUNNEL_OPEN_CITYOBJECT_FK FOREIGN KEY
(
  ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL_OPENING
ADD CONSTRAINT TUNNEL_OPEN_LOD3IMPL_FK FOREIGN KEY
(
  LOD3_IMPLICIT_REP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL_OPENING
ADD CONSTRAINT TUNNEL_OPEN_LOD3MSRF_FK FOREIGN KEY
(
  LOD3_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL_OPENING
ADD CONSTRAINT TUNNEL_OPEN_LOD4IMPL_FK FOREIGN KEY
(
  LOD4_IMPLICIT_REP_ID 
)
REFERENCES IMPLICIT_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL_OPENING
ADD CONSTRAINT TUNNEL_OPEN_LOD4MSRF_FK FOREIGN KEY
(
  LOD4_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL_OPENING
ADD CONSTRAINT TUNNEL_OPEN_OBJCLASS_FK FOREIGN KEY
(
  OBJECTCLASS_ID 
)
REFERENCES OBJECTCLASS
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL_OPEN_TO_THEM_SRF
ADD CONSTRAINT TUN_OPEN_TO_THEM_SRF_FK FOREIGN KEY
(
  TUNNEL_OPENING_ID 
)
REFERENCES TUNNEL_OPENING
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL_OPEN_TO_THEM_SRF
ADD CONSTRAINT TUN_OPEN_TO_THEM_SRF_FK1 FOREIGN KEY
(
  TUNNEL_OPENING_ID 
)
REFERENCES TUNNEL_THEMATIC_SURFACE
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL_THEMATIC_SURFACE
ADD CONSTRAINT TUN_THEM_SRF_CITYOBJ_FK FOREIGN KEY
(
  ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL_THEMATIC_SURFACE
ADD CONSTRAINT TUN_THEM_SRF_HSPACE_FK FOREIGN KEY
(
  TUNNEL_HOLLOW_SPACE_ID 
)
REFERENCES TUNNEL_HOLLOW_SPACE
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL_THEMATIC_SURFACE
ADD CONSTRAINT TUN_THEM_SRF_LOD2MSRF_FK FOREIGN KEY
(
  LOD2_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL_THEMATIC_SURFACE
ADD CONSTRAINT TUN_THEM_SRF_LOD3MSRF_FK FOREIGN KEY
(
  LOD3_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL_THEMATIC_SURFACE
ADD CONSTRAINT TUN_THEM_SRF_LOD4MSRF_FK FOREIGN KEY
(
  LOD4_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL_THEMATIC_SURFACE
ADD CONSTRAINT TUN_THEM_SRF_OBJCLASS_FK FOREIGN KEY
(
  OBJECTCLASS_ID 
)
REFERENCES OBJECTCLASS
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL_THEMATIC_SURFACE
ADD CONSTRAINT TUN_THEM_SRF_TUNNEL_FK FOREIGN KEY
(
  TUNNEL_ID 
)
REFERENCES TUNNEL
(
  ID 
)
ENABLE;

ALTER TABLE TUNNEL_THEMATIC_SURFACE
ADD CONSTRAINT TUN_THEM_SRF_TUN_INST_FK FOREIGN KEY
(
  TUNNEL_INSTALLATION_ID 
)
REFERENCES TUNNEL_INSTALLATION
(
  ID 
)
ENABLE;

ALTER TABLE WATERBODY
ADD CONSTRAINT WATERBODY_CITYOBJECT_FK FOREIGN KEY
(
  ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE WATERBODY
ADD CONSTRAINT WATERBODY_LOD0MSRF_FK FOREIGN KEY
(
  LOD0_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE WATERBODY
ADD CONSTRAINT WATERBODY_LOD1MSRF_FK FOREIGN KEY
(
  LOD1_MULTI_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE WATERBODY
ADD CONSTRAINT WATERBODY_LOD1SOLID_FK FOREIGN KEY
(
  LOD1_SOLID_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE WATERBODY
ADD CONSTRAINT WATERBODY_LOD2SOLID_FK FOREIGN KEY
(
  LOD2_SOLID_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE WATERBODY
ADD CONSTRAINT WATERBODY_LOD3SOLID_FK FOREIGN KEY
(
  LOD3_SOLID_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE WATERBODY
ADD CONSTRAINT WATERBODY_LOD4SOLID_FK FOREIGN KEY
(
  LOD4_SOLID_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE WATERBOD_TO_WATERBND_SRF
ADD CONSTRAINT WATERBOD_TO_WATERBND_FK FOREIGN KEY
(
  WATERBOUNDARY_SURFACE_ID 
)
REFERENCES WATERBOUNDARY_SURFACE
(
  ID 
)
ENABLE;

ALTER TABLE WATERBOD_TO_WATERBND_SRF
ADD CONSTRAINT WATERBOD_TO_WATERBND_FK1 FOREIGN KEY
(
  WATERBODY_ID 
)
REFERENCES WATERBODY
(
  ID 
)
ENABLE;

ALTER TABLE WATERBOUNDARY_SURFACE
ADD CONSTRAINT WATERBND_SRF_CITYOBJECT_FK FOREIGN KEY
(
  ID 
)
REFERENCES CITYOBJECT
(
  ID 
)
ENABLE;

ALTER TABLE WATERBOUNDARY_SURFACE
ADD CONSTRAINT WATERBND_SRF_LOD2SRF_FK FOREIGN KEY
(
  LOD2_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE WATERBOUNDARY_SURFACE
ADD CONSTRAINT WATERBND_SRF_LOD3SRF_FK FOREIGN KEY
(
  LOD3_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE WATERBOUNDARY_SURFACE
ADD CONSTRAINT WATERBND_SRF_LOD4SRF_FK FOREIGN KEY
(
  LOD4_SURFACE_ID 
)
REFERENCES SURFACE_GEOMETRY
(
  ID 
)
ENABLE;

ALTER TABLE WATERBOUNDARY_SURFACE
ADD CONSTRAINT WATERBND_SRF_OBJCLASS_FK FOREIGN KEY
(
  OBJECTCLASS_ID 
)
REFERENCES OBJECTCLASS
(
  ID 
)
ENABLE;

ALTER TABLE RELIEF_COMPONENT
ADD CONSTRAINT RELIEF_COMP_LOD_CHK CHECK 
(LOD >= 0 AND LOD < 5)
ENABLE;

ALTER TABLE RELIEF_FEATURE
ADD CONSTRAINT RELIEF_FEAT_LOD_CHK CHECK 
(LOD >= 0 AND LOD < 5)
ENABLE;



