# 2025-03-28T08:48:55.970060
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis-HLS")

comp = client.create_hls_component(name = "hls_component",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="hls_component")
comp.run(operation="SYNTHESIS")

