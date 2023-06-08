"""Unit tests for example."""

from python_boilerplate.example import Example


class TestExample:
    def test_msg(self):
        example = Example('foo')
        assert example.msg == 'foo'
