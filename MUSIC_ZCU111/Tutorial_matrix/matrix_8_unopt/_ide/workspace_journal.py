# 2025-05-31T22:50:32.896911600
import vitis

client = vitis.create_client()
client.set_workspace(path="matrix_8_unopt")

vitis.dispose()

