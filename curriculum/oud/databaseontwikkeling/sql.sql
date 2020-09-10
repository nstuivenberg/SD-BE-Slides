create TABLE dogWalkGroup (
    dogid int,
    walkgroupname varchar(20),
    PRIMARY KEY (dogid, walkgroupname),
    FOREIGN KEY (dogid) REFERENCES dog(dogid) ON DELETE CASCADE,
    FOREIGN KEY (walkgroupname) REFERENCES walkgroup(name) ON DELETE CASCADE
);