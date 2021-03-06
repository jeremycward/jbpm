create table TaskVariableImpl (
    id bigint not null auto_increment,
    modificationDate datetime,
    name varchar(255),
    processId varchar(255),
    processInstanceId bigint,
    taskId bigint,
    type integer,
    value varchar(4000),
    primary key (id)
);

create table QueryDefinitionStore (
    id bigint not null auto_increment,
    qExpression longtext,
    qName varchar(255),
    qSource varchar(255),
    qTarget varchar(255),
    primary key (id)
);

alter table QueryDefinitionStore 
        add constraint UK_4ry5gt77jvq0orfttsoghta2j unique (qName);