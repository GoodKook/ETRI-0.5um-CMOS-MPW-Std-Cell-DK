# 2025-03-27T20:54:25.239949
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis-HLS")

status = client.add_platform_repos(platform=["/home/goodkook/ETRI050_DesignKit/devel/Tutorials/7-1_Vitis-HLS_basic_loop/Vitis-HLS/hls_component"])

comp = client.get_component(name="hls_component")
comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

vitis.dispose()

