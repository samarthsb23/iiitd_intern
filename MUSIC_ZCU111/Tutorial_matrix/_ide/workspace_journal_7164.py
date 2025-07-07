# 2025-05-30T12:43:05.708202400
import vitis

client = vitis.create_client()
client.set_workspace(path="Tutorial_matrix")

comp = client.create_hls_component(name = "matrix_8_unopt",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="matrix_8_unopt")
comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

comp = client.create_hls_component(name = "matrix_8_opt",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="matrix_8_opt")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp = client.get_component(name="matrix_8_unopt")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp = client.get_component(name="matrix_8_opt")
comp.run(operation="C_SIMULATION")

comp = client.get_component(name="matrix_8_unopt")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp = client.get_component(name="matrix_8_opt")
comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="PACKAGE")

comp = client.get_component(name="matrix_8_unopt")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

comp = client.get_component(name="matrix_8_opt")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp = client.get_component(name="matrix_8_unopt")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

comp = client.clone_component(name="matrix_8_opt",new_name="matrix_100_opt")

comp = client.get_component(name="matrix_100_opt")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

vitis.dispose()

