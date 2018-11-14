
## 測試tensorflow有抓到哪幾個 GPU device

```
from tensorflow.python.client import device_lib
print(device_lib.list_local_devices())
```
