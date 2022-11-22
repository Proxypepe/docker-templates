graylog = db.getSiblingDB('graylog');
graylog.createUser(
  {
    user: "graylog",
    pwd: "vWGzncmBe9",
    roles: [
      { role: "dbOwner", db: "graylog" }
    ]
  }
);
