import unittest


class TestExample(unittest.TestCase):
    def test_example_one(self):
        self.assertEqual(2 + 2, 4)
        self.assertEqual(2 - 1, 1)


if __name__ == "__main__":
    unittest.main()
