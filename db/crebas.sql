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
'������';

comment on column sy_car.car_id is
'��������';

comment on column sy_car.cars_id is
'��������';

comment on column sy_car.car_company is
'����������˾����';

comment on column sy_car."car_ positions" is
'������λ��';

comment on column sy_car.car_firm is
'����ʡ��˾';

comment on column sy_car.car_pump is
'�Ƿ����';

comment on column sy_car.car_length is
'��ܳ���';

comment on column sy_car.car_band is
'����Ʒ��';

comment on column sy_car.car_encoded is
'��Ʒ����';

comment on column sy_car.car_plate is
'���ƺ�';

comment on column sy_car.car_euid is
'�������';

comment on column sy_car.car_vehicle is
'�����ͺ�';

comment on column sy_car.car_type is
'��������';

comment on column sy_car.car_oil is
'�ٹ����ͺ�';

comment on column sy_car.car_start_time is
'��ʼ����ʱ��';

comment on column sy_car.car_driver is
'����ʻ';

comment on column sy_car.car_engine is
'�������ͺ�';

comment on column sy_car.car_gde is
'��������';

comment on column sy_car.car_chassis is
'���̺�';

comment on column sy_car.car_fuel is
'ȼ������';

comment on column sy_car.car_mlkw is
'��������';

comment on column sy_car.car_manufactory is
'���쳧����';

comment on column sy_car.car_gauge is
'ǰ�־�';

comment on column sy_car.car_tyre is
'�ŵ���̥��';

comment on column sy_car.car_backup is
'��̥��';

comment on column sy_car.car_norms is
'��̥���';

comment on column sy_car.car_plant is
'�ְ嵯��Ƭ��';

comment on column sy_car.car_base is
'���';

comment on column sy_car.car_axles is
'����';

comment on column sy_car.car_size is
'���ֳߴ�';

comment on column sy_car.car_mass is
'������';

comment on column sy_car.car_capacity is
'�˶�������';

comment on column sy_car.car_admittance is
'�Ƿ�׼����';

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
'���ӱ�';

comment on column sy_cars.cars_id is
'��������';

comment on column sy_cars.cars_name is
'����';

comment on column sy_cars.cars_company is
'������˾';

comment on column sy_cars.cars_fax is
'����';

comment on column sy_cars.cars_phone is
'�绰';

comment on column sy_cars.cars_address is
'��ַ';

comment on column sy_cars.cars_remark is
'��ע';

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
'��ʻԱ��Ϣ��';

comment on column sy_driver.driver_id is
'��ʻԱ����';

comment on column sy_driver.car_id is
'��������';

comment on column sy_driver.driver_card is
'��ʻԱ���';

comment on column sy_driver.driver_name is
'��ʻԱ����';

comment on column sy_driver.driver_picture is
'��Ƭ';

comment on column sy_driver.driver_sex is
'�Ա�';

comment on column sy_driver.driver_type is
'��ְ״̬';

comment on column sy_driver.driver_license is
'��ʻ֤��';

comment on column sy_driver.driver_industrial is
'�����ȼ�';

comment on column sy_driver.driver_address is
'��ͥסַ';

comment on column sy_driver.driver_birthplace is
'����';

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
'�����¼��';

comment on column sy_inspection.inspection_id is
'���������';

comment on column sy_inspection.driver_id is
'��ʻԱ����';

comment on column sy_inspection.inspection_org_name is
'�����������';

comment on column sy_inspection.inspection_time is
'����ʱ��';

comment on column sy_inspection.inspection_money is
'�������';

comment on column sy_inspection.inspection_adress is
'����ص�';

comment on column sy_inspection.inspection_contnet is
'��������';

comment on column sy_inspection.inspection_rectify is
'�������';

comment on column sy_inspection.inspection_points is
'�۷����';

comment on column sy_inspection.inspection_result is
'������';

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
'��Ա��';

comment on column sy_person.person_id is
'��Ա����';

comment on column sy_person.cars_id is
'��������';

comment on column sy_person.person_position is
'ְλ';

comment on column sy_person.person_name is
'����';

comment on column sy_person.person_address is
'��ַ';

comment on column sy_person.person_phone is
'�绰';

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
'��ѵ��¼��';

comment on column sy_train.train_id is
'��ѵ������';

comment on column sy_train.driver_id is
'��ʻԱ����';

comment on column sy_train.train_org_name is
'��ѵ��������';

comment on column sy_train.train_content_name is
'��ѵ��������';

comment on column sy_train.train_address is
'�ص�';

comment on column sy_train.train_start_time is
'��ѵ��ʼʱ��';

comment on column sy_train.train_end_time is
'����ʱ��';

comment on column sy_train.train_type is
'����';

comment on column sy_train.train_teacher is
'��ʦ';

comment on column sy_train.train_content is
'����';

comment on column sy_train.train_result is
'���';

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

