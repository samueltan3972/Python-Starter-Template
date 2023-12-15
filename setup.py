import setuptools

setuptools.setup(
    name="python-starter-template",  # name of pypi package
    version="0.1.0",  # version of pypi package
    python_requires=">=3.10",
    description="desc",
    long_description="long desc",
    packages=setuptools.find_packages(exclude=["tests"]),  # required
)
