# 2025-05-13T14:39:07.860878200
import vitis

client = vitis.create_client()
client.set_workspace(path="pynq")

vitis.dispose()

