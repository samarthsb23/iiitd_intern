# 2025-05-31T22:46:25.877524700
import vitis

client = vitis.create_client()
client.set_workspace(path="Tutorial_matrix")

comp = client.get_component(name="matrix_8_unopt")
comp.run(operation="C_SIMULATION")

comp.run(operation="PACKAGE")

vitis.dispose()

