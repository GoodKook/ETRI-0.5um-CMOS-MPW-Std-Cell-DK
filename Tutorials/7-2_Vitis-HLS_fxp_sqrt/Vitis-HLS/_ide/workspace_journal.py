# 2025-03-27T22:43:22.423460
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis-HLS")

comp = client.create_hls_component(name = "hls_component",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="hls_component")
comp.run(operation="SYNTHESIS")

vitis.dispose()

