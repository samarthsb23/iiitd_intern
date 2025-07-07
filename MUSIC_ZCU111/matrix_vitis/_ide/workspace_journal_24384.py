# 2025-05-22T14:49:46.122394500
import vitis

client = vitis.create_client()
client.set_workspace(path="matrix_vitis")

comp = client.create_hls_component(name = "mat",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="mat")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

