#
# Real-Time Logic Analyzer
#
#
import matplotlib.pyplot as plt
import numpy as np
import matplotlib.animation as animation

HEIGHT = 3

def generate_wave(frame, tick, data, Signal, Mask, PosY, line_Signal) -> None:
    for i in np.arange(0, 80, 2):
        if (not(data[int(i/2)] & Mask)) and (not(data[int(i/2)+1] & Mask)):   # Zero
            Signal[i]   = PosY
            Signal[i+1] = PosY
        elif (not(data[int(i/2)] & Mask)) and (data[int(i/2)+1] & Mask):      # Rising edge
            Signal[i]   = PosY
            Signal[i+1] = PosY+HEIGHT
        elif (data[int(i/2)] & Mask) and (not(data[int(i/2)+1] & Mask)):      # Falling edge
            Signal[i]   = PosY+HEIGHT
            Signal[i+1] = PosY
        else:                                                                 # One
            Signal[i]   = PosY+HEIGHT
            Signal[i+1] = PosY+HEIGHT

    Signal[80] = Signal[79]

    line_Signal.set_xdata(tick[:frame])
    line_Signal.set_ydata(Signal[:frame])
#--------------------------------------------------------------------------------------------------
def update(frame, fp_fifo, data, tick,
            line_Clk, line_Rdy, line_Vld, line_Yout0, line_Yout1, line_Yout2, line_Yout3,
            Clk, Rdy, Vld, Yout0, Yout1, Yout2, Yout3) -> None:

    for i in range(0, 40):
        data[i] = data[i+1]
    data[40] = int.from_bytes(fp_fifo.read(1), "big")

    generate_wave(frame, tick, data, Yout0, 0x10,  0, line_Yout0)
    generate_wave(frame, tick, data, Yout1, 0x20,  5, line_Yout1)
    generate_wave(frame, tick, data, Yout2, 0x40, 10, line_Yout2)
    generate_wave(frame, tick, data, Yout3, 0x80, 15, line_Yout3)
    generate_wave(frame, tick, data,   Vld, 0x01, 20, line_Vld)
    generate_wave(frame, tick, data,   Rdy, 0x04, 25, line_Rdy)
    generate_wave(frame, tick, data,   Clk, 0x02, 30, line_Clk)
#--------------------------------------------------------------------------------------------------
def run():
    data  = [0] * 41
    tick  = [0] * 81

    Clk   = [0] * 81
    Rdy   = [0] * 81
    Vld   = [0] * 81
    Yout0 = [0] * 81
    Yout1 = [0] * 81
    Yout2 = [0] * 81
    Yout3 = [0] * 81

    fp_fifo = open("./la_fifo", "rb")
    for i in range(0, 40):
        data[i] = int.from_bytes(fp_fifo.read(1), "big")

    fig, ax    = plt.subplots()

    line_Clk   = ax.plot(tick[0],   Clk[0], label="Clk")[0]
    line_Rdy   = ax.plot(tick[0],   Rdy[0], label="Rdy")[0]
    line_Vld   = ax.plot(tick[0],   Vld[0], label="Vld")[0]
    line_Yout0 = ax.plot(tick[0], Yout0[0], label="Yout[0]")[0]
    line_Yout1 = ax.plot(tick[0], Yout1[0], label="Yout[1]")[0]
    line_Yout2 = ax.plot(tick[0], Yout2[0], label="Yout[2]")[0]
    line_Yout3 = ax.plot(tick[0], Yout3[0], label="Yout[3]")[0]

    ax.set(xlim=[0, 800], ylim=[-1, 35])
    ax.legend(loc='upper left', fancybox=True, shadow=True)

    for i in np.arange(0, 80, 2):
        tick[i] = tick[i+1] = i * 10
    tick[80] = tick[79]

    ani = animation.FuncAnimation(fig=fig,
                            func =update, 
                            fargs= (fp_fifo, data, tick,
                                    line_Clk, line_Rdy, line_Vld, line_Yout0, line_Yout1, line_Yout2, line_Yout3,
                                    Clk, Rdy, Vld, Yout0, Yout1, Yout2, Yout3),
                            interval=10, cache_frame_data=False)
    plt.show()
#--------------------------------------------------------------------------------------------------

run()


