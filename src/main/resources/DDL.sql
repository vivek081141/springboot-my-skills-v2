drop table comment_tbl if exists;
drop table feed_tbl if exists;
drop table relationship_tbl if exists;
drop table user_tbl if exists;
drop sequence if exists hibernate_sequence;

create sequence hibernate_sequence start with 1 increment by 1;

create table comment_tbl (
       id bigint not null,
        message varchar(255),
        posted_date timestamp,
        commented_by_id bigint,
        feeds_entity_id bigint,
        primary key (id)
    );

create table feed_tbl (
       id bigint not null,
        feed_detail varchar(255),
        likes integer,
        posted_on timestamp,
        user_id bigint,
        primary key (id)
);

create table relationship_tbl (
       id bigint not null,
        user_0 bigint not null,
        user_1 bigint not null,
        primary key (id)
);


create table user_tbl (
       id bigint not null,
        age bigint,
        display_picture varchar(255),
        username varchar(255),
        primary key (id)
);


alter table comment_tbl
       add constraint FK2pr2648ugf69qcbwnamtutjh5
       foreign key (commented_by_id)
       references user_tbl;


alter table comment_tbl
       add constraint FKgqm1rxt89726bwlsyybp3jl4f
       foreign key (feeds_entity_id)
       references feed_tbl;


alter table feed_tbl
       add constraint FKohu890sfxvyokip9tmwtaopfn
       foreign key (user_id)
       references user_tbl;