Feature:

Background:
* def id = 0
* def m = {}

Scenario: methodIs('post')
* def c = request
* def id = ~~(id + 1)
* set c.id = id
* eval m[id + ''] = c
* def response = c

Scenario: pathMatches('/cats/{id}')
* def response = m[pathParams.id]

Scenario:
* def response = $m.*