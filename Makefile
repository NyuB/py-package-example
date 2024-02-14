# Use PY=py on windows
PY=python3
LOCAL_REPOSITORY_ROOT=packages
LOCAL_REPOSITORY_PORT=7777

# Note on '-' vs '_' in package/folder naming
# Using my-learning-package instead of my_learning_package as directory name to ease serving it via http
# Indeed, pip executes a GET /my-learning-package request when running pip install my_learning_package
# But it is easier to use my_learning_package as actual package name to ease importing in python file
package:
	$(PY) -m build --outdir $(LOCAL_REPOSITORY_ROOT)/my-learning-package my_learning_package

# Serve a pseudo pypi server from local directory
serve:
	$(PY) -m http.server -d $(LOCAL_REPOSITORY_ROOT) $(LOCAL_REPOSITORY_PORT)

setup:
	$(PY) -m pip install --upgrade build
