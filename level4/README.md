# Level 4: Let's talk about job offers

Parse the file job_offers.json. We have here 10 job_offers, each one has a title, a description, and a work_type.

We want a class (called here SearchService), that will write into the file output.json, the job_offers matching the search params. The only strict search param will be the worktype, the other two will be a simple including search.

SearchService will be called like that:

```
	SearchService.new(dataset: 'data.json', title: 'foo', description: 'bar', work_type: 'fizz').call
