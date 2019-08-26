/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2019/8/26 14:20:21                           */
/*==============================================================*/


alter table sy_car
   drop constraint FK_SY_CAR_REFERENCE_SY_CARS;

alter table sy_driver
   drop constraint FK_SY_DRIVE_REFERENCE_SY_CAR;

alter table sy_inspection
   drop constraint FK_SY_INSPE_REFERENCE_SY_DRIVE;

alter table sy_person
   drop constraint FK_SY_PERSO_REFERENCE_SY_CARS;

alter table sy_train
   drop constraint FK_SY_TRAIN_REFERENCE_SY_DRIVE;

drop table sy_car cascade constraints;

drop table sy_cars cascade constraints;

drop table sy_driver cascade constraints;

drop table sy_inspection cascade constraints;

drop table sy_person cascade constraints;

drop table sy_train cascade constraints;

/*==============================================================*/
/* Table: sy_car                                                */
/*==============================================================*/
create table sy_car 
(
   car_id               VARCHAR2(32)         not null,
   cars_id              VARCHAR2(32),
   car_company          VARCHAR2(60),
   "car_ positions"     NUMBER,
   car_firm             VARCHAR2(60),
   car_pump             NUMBER,
   car_length           VARCHAR2(20),
   car_band             VARCHAR2(60),
   car_encoded          VARCHAR2(60),
   car_plate            VARCHAR2(60),
   car_euid             VARCHAR2(60),
   car_vehicle          VARCHAR2(60),
   car_type             VARCHAR2(40),
   car_oil              NUMBER,
   car_start_time       DATE,
   car_driver           NUMBER,
   car_engine           VARCHAR2(60),
   car_gde              VARCHAR2(60),
   car_chassis          VARCHAR2(60),
   car_fuel             VARCHAR2(60),
   car_mlkw             NUMBER,
   car_manufactory      VARCHAR2(60),
   car_gauge            NUMBER,
   car_tyre             VARCHAR2(20),
   car_backup           NUMBER,
   car_norms            VARCHAR2(40),
   car_plant            NUMBER,
   car_base             VARCHAR2(40),
   car_axles            NUMBER,
   car_size             VARCHAR2(40),
   car_mass             VARCHAR2(40),
   car_capacity         VARCHAR2(40),
   car_admittance       NUMBER,
   constraint PK_SY_CAR primary key (car_id)
);

comment on table sy_car is
'车辆表';

comment on column sy_car.car_id is
'车辆主键';

comment on column sy_car.cars_id is
'车队主键';

comment on column sy_car.car_company is
'所属大区公司名称';

comment on column sy_car."car_ positions" is
'车辆仓位数';

comment on column sy_car.car_firm is
'所属省公司';

comment on column sy_car.car_pump is
'是否带泵';

comment on column sy_car.car_length is
'软管长度';

comment on column sy_car.car_band is
'车辆品牌';

comment on column sy_car.car_encoded is
'油品编码';

comment on column sy_car.car_plate is
'车牌号';

comment on column sy_car.car_euid is
'车辆编号';

comment on column sy_car.car_vehicle is
'车辆型号';

comment on column sy_car.car_type is
'车辆类型';

comment on column sy_car.car_oil is
'百公里油耗';

comment on column sy_car.car_start_time is
'开始工作时间';

comment on column sy_car.car_driver is
'主驾驶';

comment on column sy_car.car_engine is
'发动机型号';

comment on column sy_car.car_gde is
'发动机号';

comment on column sy_car.car_chassis is
'底盘号';

comment on column sy_car.car_fuel is
'燃油种类';

comment on column sy_car.car_mlkw is
'排量功率';

comment on column sy_car.car_manufactory is
'制造厂名称';

comment on column sy_car.car_gauge is
'前轮距';

comment on column sy_car.car_tyre is
'着地轮胎数';

comment on column sy_car.car_backup is
'备胎数';

comment on column sy_car.car_norms is
'轮胎规格';

comment on column sy_car.car_plant is
'钢板弹簧片数';

comment on column sy_car.car_base is
'轴距';

comment on column sy_car.car_axles is
'轴数';

comment on column sy_car.car_size is
'外轮尺寸';

comment on column sy_car.car_mass is
'总质量';

comment on column sy_car.car_capacity is
'核定载质量';

comment on column sy_car.car_admittance is
'是否准入标记';

/*==============================================================*/
/* Table: sy_cars                                               */
/*==============================================================*/
create table sy_cars 
(
   cars_id              VARCHAR2(32)         not null,
   cars_name            VARCHAR2(50),
   cars_company         VARCHAR2(60),
   cars_fax             VARCHAR2(40),
   cars_phone           VARCHAR2(15),
   cars_address         VARCHAR2(60),
   cars_remark          CLOB,
   constraint PK_SY_CARS primary key (cars_id)
);

comment on table sy_cars is
'车队表';

comment on column sy_cars.cars_id is
'车队主键';

comment on column sy_cars.cars_name is
'名称';

comment on column sy_cars.cars_company is
'所属公司';

comment on column sy_cars.cars_fax is
'传真';

comment on column sy_cars.cars_phone is
'电话';

comment on column sy_cars.cars_address is
'地址';

comment on column sy_cars.cars_remark is
'备注';

/*==============================================================*/
/* Table: sy_driver                                             */
/*==============================================================*/
create table sy_driver 
(
   driver_id            VARCHAR2(32)         not null,
   car_id               VARCHAR2(32),
   driver_card          VARCHAR2(60),
   driver_name          VARCHAR2(60),
   driver_picture       BLOB,
   driver_sex           VARCHAR2(40),
   driver_type          VARCHAR2(40),
   driver_license       VARCHAR2(40),
   driver_industrial    VARCHAR2(40),
   driver_address       VARCHAR2(60),
   driver_birthplace    VARCHAR2(60),
   constraint PK_SY_DRIVER primary key (driver_id)
);

comment on table sy_driver is
'驾驶员信息表';

comment on column sy_driver.driver_id is
'驾驶员主键';

comment on column sy_driver.car_id is
'车辆主键';

comment on column sy_driver.driver_card is
'驾驶员编号';

comment on column sy_driver.driver_name is
'驾驶员姓名';

comment on column sy_driver.driver_picture is
'照片';

comment on column sy_driver.driver_sex is
'性别';

comment on column sy_driver.driver_type is
'在职状态';

comment on column sy_driver.driver_license is
'驾驶证号';

comment on column sy_driver.driver_industrial is
'技术等级';

comment on column sy_driver.driver_address is
'家庭住址';

comment on column sy_driver.driver_birthplace is
'籍贯';

/*==============================================================*/
/* Table: sy_inspection                                         */
/*==============================================================*/
create table sy_inspection 
(
   inspection_id        VARCHAR2(32)         not null,
   driver_id            VARCHAR2(32),
   inspection_org_name  VARCHAR2(60),
   inspection_time      DATE,
   inspection_money     VARCHAR2(60),
   inspection_adress    VARCHAR2(60),
   inspection_contnet   VARCHAR2(60),
   inspection_rectify   VARCHAR2(60),
   inspection_points    VARCHAR2(60),
   inspection_result    VARCHAR2(60),
   constraint PK_SY_INSPECTION primary key (inspection_id)
);

comment on table sy_inspection is
'稽查记录表';

comment on column sy_inspection.inspection_id is
'稽查表主键';

comment on column sy_inspection.driver_id is
'驾驶员主键';

comment on column sy_inspection.inspection_org_name is
'稽查机构名称';

comment on column sy_inspection.inspection_time is
'稽查时间';

comment on column sy_inspection.inspection_money is
'处罚金额';

comment on column sy_inspection.inspection_adress is
'稽查地点';

comment on column sy_inspection.inspection_contnet is
'稽查内容';

comment on column sy_inspection.inspection_rectify is
'整改情况';

comment on column sy_inspection.inspection_points is
'扣分情况';

comment on column sy_inspection.inspection_result is
'稽查结果';

/*==============================================================*/
/* Table: sy_person                                             */
/*==============================================================*/
create table sy_person 
(
   person_id            VARCHAR2(32)         not null,
   cars_id              VARCHAR2(32),
   person_position      VARCHAR2(60),
   person_name          VARCHAR2(50),
   person_address       VARCHAR2(60),
   person_phone         VARCHAR2(15),
   constraint PK_SY_PERSON primary key (person_id)
);

comment on table sy_person is
'人员表';

comment on column sy_person.person_id is
'人员主键';

comment on column sy_person.cars_id is
'车队主键';

comment on column sy_person.person_position is
'职位';

comment on column sy_person.person_name is
'姓名';

comment on column sy_person.person_address is
'地址';

comment on column sy_person.person_phone is
'电话';

/*==============================================================*/
/* Table: sy_train                                              */
/*==============================================================*/
create table sy_train 
(
   train_id             VARCHAR2(32)         not null,
   driver_id            VARCHAR2(32),
   train_org_name       VARCHAR2(60),
   train_content_name   VARCHAR2(60),
   train_address        VARCHAR2(60),
   train_start_time     DATE,
   train_end_time       DATE,
   train_type           VARCHAR2(40),
   train_teacher        VARCHAR2(40),
   train_content        CLOB,
   train_result         NUMBER,
   constraint PK_SY_TRAIN primary key (train_id)
);

comment on table sy_train is
'培训记录表';

comment on column sy_train.train_id is
'培训表主键';

comment on column sy_train.driver_id is
'驾驶员主键';

comment on column sy_train.train_org_name is
'培训机构名称';

comment on column sy_train.train_content_name is
'培训机构名称';

comment on column sy_train.train_address is
'地点';

comment on column sy_train.train_start_time is
'培训开始时间';

comment on column sy_train.train_end_time is
'结束时间';

comment on column sy_train.train_type is
'类型';

comment on column sy_train.train_teacher is
'讲师';

comment on column sy_train.train_content is
'内容';

comment on column sy_train.train_result is
'结果';

alter table sy_car
   add constraint FK_SY_CAR_REFERENCE_SY_CARS foreign key (cars_id)
      references sy_cars (cars_id);

alter table sy_driver
   add constraint FK_SY_DRIVE_REFERENCE_SY_CAR foreign key (car_id)
      references sy_car (car_id);

alter table sy_inspection
   add constraint FK_SY_INSPE_REFERENCE_SY_DRIVE foreign key (driver_id)
      references sy_driver (driver_id);

alter table sy_person
   add constraint FK_SY_PERSO_REFERENCE_SY_CARS foreign key (cars_id)
      references sy_cars (cars_id);

alter table sy_train
   add constraint FK_SY_TRAIN_REFERENCE_SY_DRIVE foreign key (driver_id)
      references sy_driver (driver_id);

