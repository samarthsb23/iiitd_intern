# 2025-05-22T14:53:24.849944100
import vitis

client = vitis.create_client()
client.set_workspace(path="matrix_vitis")

comp = client.get_component(name="mat")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

status = client.add_platform_repos(platform=["c:\Xilinx\Vivado\2024.2\data\boards"])

status = client.add_platform_repos(platform=["c:\Xilinx2\Vivado\2019.1\data\boards\board_files\pynq-z2"])

comp = client.create_hls_component(name = "hls_component",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="hls_component")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp = client.create_hls_component(name = "hls_component2",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="hls_component2")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

