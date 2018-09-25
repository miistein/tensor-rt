TensorRT
========

The core of NVIDIA TensorRT is a C++ library that facilitates high performance
inference on NVIDIA graphics processing units (GPUs). TensorRT takes a trained
network, which consists of a network definition and a set of trained
parameters, and produces a highly optimized runtime engine which performs
inference for that network.

You can describe a TensorRT network using a C++ or Python API, or you can
import an existing Caffe, ONNX, or TensorFlow model using one of the provided
parsers.

The TensorRT API includes import methods to help you express your trained deep
learning models for TensorRT to optimize and run. TensorRT applies graph
optimizations, layer fusion, and finds the fastest implementation of that model
leveraging a diverse collection of highly optimized kernels, and a runtime that
you can use to execute this network in an inference context.

TensorRT includes an infrastructure that allows you to leverage the high speed
mixed precision capabilities of Pascal and Volta GPUs as an optional
optimization.

## Contents of the TensorRT image

This container has the TensorRT C++ library installed and ready to
use. The container also includes a python interface for TensorRT.

`/opt/tensorrt` contains the TensorRT C++ library, python interface,
samples and documentation.

`/workspace/tensorrt` contains copies of the TensorRT samples that can
be modified, compiled and executed.

## Running TensorRT Samples

You can build and run the TensorRT C++ samples from within the
image. For details on how to run each sample see the [TensorRT Developer
Guide](https://docs.nvidia.com/deeplearning/sdk/tensorrt-developer-guide/index.html).

```
$ cd /workspace/tensorrt/samples
$ make -j4
$ cd /workspace/tensorrt/bin
$ ./sample_mnist
```

You can also execute the TensorRT python examples.

```
$ cd /workspace/tensorrt/python/examples
$ python mnist_api.py ../data
```

Some of the dependencies of the Python examples have not been pre-installed
in the container in order to save space. To install these dependencies, run
the following command before you run these samples.

```
$ /opt/tensorrt/python/python_setup.sh
```

## Customizing TensorRT

You can customize the TensorRT image in one of two ways:

(1) Add to or modify the source code in this container and run your
customized version or (2) use `docker build` to add your
customizations on top of this container if you want to add additional
packages.

NVIDIA recommends option 2 for ease of migration to later versions of the
TensorRT container image.

For more information, see https://docs.docker.com/engine/reference/builder for
a syntax reference. Several example Dockerfiles are provided in the container
image in `/workspace/docker-examples`.

## Suggested Reading

For the latest Release Notes, Developer and Installation Guides, see
the [TensorRT Documentation](
http://docs.nvidia.com/deeplearning/dgx/tensorrt-release-notes/index.html) website.
