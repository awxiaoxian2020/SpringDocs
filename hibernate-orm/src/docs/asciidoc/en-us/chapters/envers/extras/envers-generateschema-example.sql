create table Address (
    id bigint not null,
    city varchar(255),
    street varchar(255),
    streetNumber varchar(255),
    country_id bigint,
    primary key (id)
)

create table Address_AUD (
    id bigint not null,
    REV integer not null,
    REVTYPE tinyint,
    REVEND integer,
    city varchar(255),
    street varchar(255),
    streetNumber varchar(255),
    country_id bigint,
    primary key (id, REV)
)

create table Country (
    id bigint not null,
    name varchar(255),
    primary key (id)
)

create table Country_AUD (
    id bigint not null,
    REV integer not null,
    REVTYPE tinyint,
    REVEND integer,
    name varchar(255),
    primary key (id, REV)
)

create table Customer (
    id bigint not null,
    created_on timestamp,
    firstName varchar(255),
    lastName varchar(255),
    address_id bigint,
    primary key (id)
)

create table Customer_AUD (
    id bigint not null,
    REV integer not null,
    REVTYPE tinyint,
    REVEND integer,
    created_on timestamp,
    firstName varchar(255),
    lastName varchar(255),
    address_id bigint,
    primary key (id, REV)
)

create table REVINFO (
    REV integer generated by default as identity,
    REVTSTMP bigint,
    primary key (REV)
)

alter table Address
add constraint FKpr4rl83u5fv832kdihl6w3kii
foreign key (country_id)
references Country

alter table Address_AUD
add constraint FKgwp5sek4pjb4awy66sp184hrv
foreign key (REV)
references REVINFO

alter table Address_AUD
add constraint FK52pqkpismfxg2b9tmwtncnk0d
foreign key (REVEND)
references REVINFO

alter table Country_AUD
add constraint FKrix4g8hm9ui6sut5sy86ujggr
foreign key (REV)
references REVINFO

alter table Country_AUD
add constraint FKpjeqmdccv22y1lbtswjb84ghi
foreign key (REVEND)
references REVINFO

alter table Customer
add constraint FKfok4ytcqy7lovuiilldbebpd9
foreign key (address_id)
references Address

alter table Customer_AUD
add constraint FK5ecvi1a0ykunrriib7j28vpdj
foreign key (REV)
references REVINFO

alter table Customer_AUD
add constraint FKqd4fy7ww1yy95wi4wtaonre3f
foreign key (REVEND)
references REVINFO