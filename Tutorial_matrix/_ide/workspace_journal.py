# 2025-06-02T11:31:17.480944900
import vitis

client = vitis.create_client()
client.set_workspace(path="Tutorial_matrix")

comp = client.get_component(name="mat_32_opt")
comp.run(operation="C_SIMULATION")

comp = client.get_component(name="matrix_8_opt")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

