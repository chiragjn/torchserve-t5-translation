Example T5 deployment with torchserve

---

`run.sh` file contains the commands to be run one after another

Once served, hit it with curl

```shell
curl -v -X POST -H 'Content-Type: application/json' -d '{"text": "this is a test sentence", "from": "en", "to": "es"}' http://0.0.0.0:8080/predictions/t5smalltranslation/1.0
```

Todo/Issues

---

- [ ] Boot takes too much time! Can we lazy load?
- [ ] Benchmark time and mem against fastAPI and `rust-bert`
- [ ] How to support mini-batch in a single request?
- [ ] How to automatically load a new version when available?
- [ ] Explore management APIs

References

---

1. https://github.com/pytorch/serve/tree/master/examples/Huggingface_Transformers
