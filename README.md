# Commafy
Rails application with a single endpoint that adds commas to a string


Run the test using ```bundle exec rspec```

```
GET /commafy/1234567/3

Should return:

{

"original": 1234567,

"commafied": "1,234,567"

}
```

