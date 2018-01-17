# Xiaomi Mijia 4K

#Xiaomi Mijia 4K camera General Info

##General info
 - **OS:** Linux 3.10.71 / RTOS
 - **CPU:** ARMv7 Ambarella A12S@792MHz
 - **BogoMIPS:** 291.22
 - **Memory:** 44MB
 - **Flash:** Toshiba TC58NVG1S3H 256MB
 - **WIFI/Bluetooth:** Ampak AP6212A1 (BCM43430, 802.11n 1T/1R+BT4.0)


#Partition Layout

```shell
mtd0: 00020000 00020000 "Bootstrap"
mtd1: 00040000 00020000 "Partition Table"
mtd2: 00040000 00020000 "Bootloader"
mtd3: 00200000 00020000 "SD Firmware Update Code"
mtd4: 02000000 00020000 "System Software"
mtd5: 00500000 00020000 "DSP uCode"
mtd6: 00e00000 00020000 "System ROM Data"
mtd7: 00a00000 00020000 "Linux Kernel"
mtd8: 03c00000 00020000 "Linux Root FS"
mtd9: 01e00000 00020000 "Linux Hibernation Image"
```
The root filesystem is `rootfs`, which is stored in memory and therefore wiped on reboot. The Micro SD card is mounted at `/tmp/SD0/`.

#Bootlog

```shell
[    0.000000] Booting Linux on physical CPU 0x0
[    0.000000] Linux version 3.10.71 (gaoxuedong@compile) (gcc version 4.9.2 20140904 (prerelease) (crosstool-NG linaro-1.13.1-4.9-2014.09 - Linaro GC                                                           C 4.9-2014.09) ) #1 PREEMPT Mon Oct 9 10:15:16 CST 2017
[    0.000000] CPU: ARMv7 Processor [414fc091] revision 1 (ARMv7), cr=10c5387d
[    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache
[    0.000000] Machine: Ambarella S2L (Flattened Device Tree), model: Ambarella A12 Dragonfly Board
[    0.000000] boss: bd350000 [1d350000]
[    0.000000] aipc_spin_lock_setup done
[    0.000000] Memory policy: ECC disabled, Data cache writeback
[    0.000000] Ambarella:      AHB = 0xe0000000[0xe0000000],0x08000000 0
[    0.000000] Ambarella:      APB = 0xe8000000[0xe8000000],0x01000000 0
[    0.000000] Ambarella:      PPM = 0x1ce00000[0xbce00000],0x00600000 9
[    0.000000] Ambarella:     PPM2 = 0x00001000[0xa0001000],0x1cdff000 9
[    0.000000] Ambarella:      AXI = 0xf0000000[0xf0000000],0x00100000 0
[    0.000000] aipc: smem: 0xbce00000 [0x1ce00000], 0x1d400000
[    0.000000] On node 0 totalpages: 11264
[    0.000000] free_area_init_node: node 0, pgdat 40590bf0, node_mem_map 405bd000
[    0.000000]   Normal zone: 88 pages used for memmap
[    0.000000]   Normal zone: 0 pages reserved
[    0.000000]   Normal zone: 11264 pages, LIFO batch:1
[    0.000000] CPU: All CPU(s) started in SVC mode.
[    0.000000] pcpu-alloc: s0 r0 d32768 u32768 alloc=1*32768
[    0.000000] pcpu-alloc: [0] 0
[    0.000000] Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 11176
[    0.000000] Kernel command line: ubi.mtd=8 root=ubi0:linux rootfstype=ubifs nr_cpus=1 maxcpus=0 boss=0xbd350000
[    0.000000] PID hash table entries: 256 (order: -2, 1024 bytes)
[    0.000000] Dentry cache hash table entries: 8192 (order: 3, 32768 bytes)
[    0.000000] Inode-cache hash table entries: 4096 (order: 2, 16384 bytes)
[    0.000000] Memory: 44MB = 44MB total
[    0.000000] Memory: 38728k/38728k available, 6328k reserved, 0K highmem
[    0.000000] Virtual kernel memory layout:
[    0.000000]     vector  : 0xffff0000 - 0xffff1000   (   4 kB)
[    0.000000]     fixmap  : 0xfff00000 - 0xfffe0000   ( 896 kB)
[    0.000000]     vmalloc : 0x43000000 - 0xa0000000   (1488 MB)
[    0.000000]     lowmem  : 0x40000000 - 0x42c00000   (  44 MB)
[    0.000000]     modules : 0x3f000000 - 0x40000000   (  16 MB)
[    0.000000]       .text : 0x40008000 - 0x40539d40   (5320 kB)
[    0.000000]       .init : 0x4053a000 - 0x4055df04   ( 144 kB)
[    0.000000]       .data : 0x4055e000 - 0x4059ce20   ( 252 kB)
[    0.000000]        .bss : 0x4059ce20 - 0x405bc44c   ( 126 kB)
[    0.000000] Preemptible hierarchical RCU implementation.
[    0.000000] NR_IRQS:288
[    0.000000] sched_clock: 32 bits at 108MHz, resolution 9ns, wraps every 39768ms
[    0.000000] Console: colour dummy device 80x30
[    0.000000] console [tty0] enabled
[    0.003151] Calibrating delay loop... 291.22 BogoMIPS (lpj=1456128)
[    0.096710] pid_max: default: 32768 minimum: 301
[    0.097512] Mount-cache hash table entries: 512
[    0.105835] CPU: Testing write buffer coherency: ok
[    0.106354] Setting up static identity map for 0x404130a0 - 0x404130f8
[    0.112052] devtmpfs: initialized
[    0.115806] pinctrl core: initialized pinctrl subsystem
[    0.117511] NET: Registered protocol family 16
[    0.118111] DMA: preallocated 256 KiB pool for atomic coherent allocations
[    0.121351] L310 cache controller enabled
[    0.121395] l2x0: 8 ways, CACHE_ID 0x410000c8, AUX_CTRL 0x22020000, Cache size: 131072 B
[    0.131035] ambarella-pinctrl e8009000.pinctrl: Ambarella pinctrl driver registered
[    0.133506] ambarella-gpio gpio.0: Ambarella GPIO driver registered
[    0.155496] aipc_mutex_init done
[    0.234352] bio: create slab <bio-0> at 0
[    0.242386]  remoteproc0: c0_and_c1 is available
[    0.242428]  remoteproc0: Note: remoteproc is still under development and considered experimental.
[    0.242456]  remoteproc0: THE BINARY FORMAT IS NOT YET FINALIZED, and backward compatibility isn't yet guaranteed.
[    0.243302]  remoteproc0: registered virtio0 (type 7)
[    0.244334]  remoteproc0: powering up c0_and_c1
[    0.244379]  remoteproc0: Booting fw image dummy, size 0
[    0.246117] virtio_rpmsg_bus virtio0: rpmsg host is online
[    0.247065] NS announcement: 41 6d 62 61 52 70 64 65 76 5f 43 4c 4b 00 ef ef  AmbaRpdev_CLK...
[    0.247092] NS announcement: ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef  ................
[    0.247105] NS announcement: 00 04 00 00 00 00 00 00                          ........
[    0.247127] virtio_rpmsg_bus virtio0: creating channel AmbaRpdev_CLK addr 0x400
[    0.249040] Bluetooth: Core ver 2.16
[    0.249435] NET: Registered protocol family 31
[    0.249468] Bluetooth: HCI device and connection manager initialized
[    0.249510] Bluetooth: HCI socket layer initialized
[    0.249544] Bluetooth: L2CAP socket layer initialized
[    0.249625] Bluetooth: SCO socket layer initialized
[    0.252458] NS announcement: 61 69 70 63 5f 72 70 63 00 35 35 35 35 35 35 35  aipc_rpc.5555555
[    0.252483] NS announcement: 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35  5555555555555555
[    0.252497] NS announcement: 01 04 00 00 00 00 00 00                          ........
[    0.252518] virtio_rpmsg_bus virtio0: creating channel aipc_rpc addr 0x401
[    0.253123] Switching to clocksource ambarella-cs-timer
[    0.299941] NET: Registered protocol family 2
[    0.301221] TCP established hash table entries: 512 (order: 0, 4096 bytes)
[    0.301273] TCP bind hash table entries: 512 (order: -1, 2048 bytes)
[    0.301302] TCP: Hash tables configured (established 512 bind 512)
[    0.301418] TCP: reno registered
[    0.301448] UDP hash table entries: 256 (order: 0, 4096 bytes)
[    0.301481] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
[    0.301786] NET: Registered protocol family 1
[    0.302615] RPC: Registered named UNIX socket transport module.
[    0.302653] RPC: Registered udp transport module.
[    0.302671] RPC: Registered tcp transport module.
[    0.302688] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    0.306775] ambarella-sd e000c000.sdmmc1: Slot0 use bounce buffer[0x425c0000<->0x1f9c0000]
[    0.306827] ambarella-sd e000c000.sdmmc1: Slot0 req_size=0x00020000, segs=32, seg_size=0x00020000
[    0.306912] ambarella-sd e000c000.sdmmc1: Slot0 use ADMA
[    0.384296] ambarella-sd e000c000.sdmmc1: 1 slots @ 48000000Hz
[    0.386613] NS announcement: 61 69 70 63 5f 76 66 73 00 80 80 80 80 80 80 80  aipc_vfs........
[    0.386642] NS announcement: 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80  ................
[    0.386656] NS announcement: 02 04 00 00 00 00 00 00                          ........
[    0.386678] virtio_rpmsg_bus virtio0: creating channel aipc_vfs addr 0x402
[    0.394406] msgmni has been set to 75
[    0.398600] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 253)
[    0.398651] io scheduler noop registered
[    0.398671] io scheduler deadline registered
[    0.398734] io scheduler cfq registered (default)
[    0.399720] e0032000.uart: ttyS1 at MMIO 0xe0032000 (irq = 25) is a ambuart
[    0.402763] brd: module loaded
[    0.417421] loop: module loaded
[    0.418302] Probe amba_heapmem successfully
[    0.419350] mmc0: queuing unknown CIS tuple 0x80 (2 bytes)
[    0.420010] Probe amba_dspmem successfully
[    0.421372] mmc0: queuing unknown CIS tuple 0x80 (3 bytes)
[    0.426101] mmc0: queuing unknown CIS tuple 0x80 (3 bytes)
[    0.426790] ambarella-nand e0001000.nand: in ecc-[8]bit mode
[    0.426957] ambarella_nand: Use On Flash BBT
[    0.427197] NAND device: Manufacturer ID: 0x98, Chip ID: 0xda (Toshiba TC58NVG1S3H 2G 3.3V 8-bit), 256MiB, page size: 2048, OOB size: 128
[    0.427725] Bad block table found at page 131008, version 0xFF
[    0.428289] Bad block table found at page 130944, version 0xFF
[    0.428644] nand_read_bbt: bad block at 0x00000c000000
[    0.428741] nand_read_bbt: bad block at 0x00000c020000
[    0.429668] 10 ofpart partitions found on MTD device amba_nand
[    0.429704] Creating 10 MTD partitions on "amba_nand":
[    0.429734] 0x000000000000-0x000000020000 : "Bootstrap"
[    0.429959] mmc0: queuing unknown CIS tuple 0x80 (7 bytes)
[    0.433095] 0x000000020000-0x000000060000 : "Partition Table"
[    0.436085] mmc0: queuing unknown CIS tuple 0x81 (9 bytes)
[    0.437067] 0x000000060000-0x0000000a0000 : "Bootloader"
[    0.440214] 0x0000000a0000-0x0000002a0000 : "SD Firmware Update Code"
[    0.443778] 0x0000002a0000-0x0000022a0000 : "System Software"
[    0.447044] 0x0000022a0000-0x0000027a0000 : "DSP uCode"
[    0.450121] 0x0000027a0000-0x0000035a0000 : "System ROM Data"
[    0.453799] 0x0000035a0000-0x000003fa0000 : "Linux Kernel"
[    0.458592] 0x000003fa0000-0x000007ba0000 : "Linux Root FS"
[    0.462187] 0x000007ba0000-0x0000099a0000 : "Linux Hibernation Image"
[    0.468764] ambarella-eth e000e000.ethernet: Not enabled, check HW config!
[    0.468831] ambarella-eth: probe of e000e000.ethernet failed with error -1
[    0.470794] mousedev: PS/2 mouse device common for all mice
[    0.471098] ambarella-rtc e8015000.rtc: =====RTC ever lost power=====
[    0.471133] ambarella-rtc e8015000.rtc: ambrtc_set_alarm_or_time is not supported in dual-OSes!
[    0.472043] ambarella-rtc e8015000.rtc: rtc core: registered rtc-ambarella as rtc0
[    0.472593] Bluetooth: HCI UART driver ver 2.2
[    0.472667] Bluetooth: HCI H4 protocol initialized
[    0.472689] Bluetooth: HCI BCSP protocol initialized
[    0.472707] Bluetooth: HCILL protocol initialized
[    0.472724] Bluetooth: HCIATH3K protocol initialized
[    0.472742] Bluetooth: HCI Three-wire UART (H5) protocol initialized
[    0.472761] Bluetooth: MSM Sleep Mode Driver Ver 1.1
[    0.475159] hidraw: raw HID events driver (C) Jiri Kosina
[    0.481036] ip_tables: (C) 2000-2006 Netfilter Core Team
[    0.481164] TCP: cubic registered
[    0.481186] Initializing XFRM netlink socket
[    0.481263] NET: Registered protocol family 17
[    0.481339] NET: Registered protocol family 15
[    0.481461] Bridge firewalling registered
[    0.481811] Bluetooth: RFCOMM TTY layer initialized
[    0.481991] Bluetooth: RFCOMM socket layer initialized
[    0.482023] Bluetooth: RFCOMM ver 1.11
[    0.482043] Bluetooth: HIDP (Human Interface Emulation) ver 1.2
[    0.482077] Bluetooth: HIDP socket layer initialized
[    0.482157] VFP support v0.3: implementor 41 architecture 3 part 30 variant 9 rev 4
[    0.482201] ThumbEE CPU extension supported.
[    0.482245] Registering SWP/SWPB emulation handler
[    0.487329] UBI: default fastmap pool size: 20
[    0.487405] UBI: default fastmap WL pool size: 25
[    0.487427] UBI: attaching mtd8 to ubi0
[    0.565781] mmc0: new high speed SDIO card at address 0001
[    0.706407] UBI: scanning is finished
[    0.717445] UBI: attached mtd8 (name "Linux Root FS", size 60 MiB) to ubi0
[    0.717488] UBI: PEB size: 131072 bytes (128 KiB), LEB size: 126976 bytes
[    0.717511] UBI: min./max. I/O unit sizes: 2048/2048, sub-page size 2048
[    0.717531] UBI: VID header offset: 2048 (aligned 2048), data offset: 4096
[    0.717550] UBI: good PEBs: 480, bad PEBs: 0, corrupted PEBs: 0
[    0.717568] UBI: user volume: 1, internal volumes: 1, max. volumes count: 128
[    0.717590] UBI: max/mean erase counter: 0/0, WL threshold: 4096, image sequence number: 109488112
[    0.717614] UBI: available PEBs: 45, total reserved PEBs: 435, PEBs reserved for bad PEB handling: 40
[    0.717691] ambarella-rtc e8015000.rtc: setting system clock to 2017-12-26 17:26:23 UTC (1514309183)
[    0.718651] UBI: background thread "ubi_bgt0d" started, PID 404
[    0.847005] UBIFS: mounted UBI device 0, volume 0, name "linux", R/O mode
[    0.847049] UBIFS: LEB size: 126976 bytes (124 KiB), min./max. I/O unit sizes: 2048 bytes/2048 bytes
[    0.847080] UBIFS: FS size: 47996928 bytes (45 MiB, 378 LEBs), journal size 9023488 bytes (8 MiB, 72 LEBs)
[    0.847105] UBIFS: reserved for root: 0 bytes (0 KiB)
[    0.847129] UBIFS: media format: w4/r0 (latest is w4/r0), UUID D43050CD-123D-4BE8-8687-1E433ED9ECFC, small LPT model
[    0.848606] VFS: Mounted root (ubifs filesystem) readonly on device 0:12.
[    0.849983] devtmpfs: mounted
[    0.850327] Freeing unused kernel memory: 140K (4053a000 - 4055d000)
[    2.809125] NS announcement: 61 69 70 63 5f 72 66 73 00 80 80 80 80 80 80 80  aipc_rfs........
[    2.809155] NS announcement: 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80  ................
[    2.809168] NS announcement: 03 04 00 00 00 00 00 00                          ........
[    2.809190] virtio_rpmsg_bus virtio0: creating channel aipc_rfs addr 0x403
[    2.815357] NS announcement: 41 6d 62 61 52 70 64 65 76 5f 4c 69 6e 6b 43 74  AmbaRpdev_LinkCt
[    2.815392] NS announcement: 72 6c 00 80 80 80 80 80 80 80 80 80 80 80 80 80  rl..............
[    2.815406] NS announcement: 04 04 00 00 00 00 00 00                          ........
[    2.815433] virtio_rpmsg_bus virtio0: creating channel AmbaRpdev_LinkCtrl addr 0x404
[    2.834270] NS announcement: 65 63 68 6f 5f 63 6f 72 74 65 78 00 00 00 00 00  echo_cortex.....
[    2.834300] NS announcement: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
[    2.834314] NS announcement: 05 04 00 00 00 00 00 00                          ........
[    2.834339] virtio_rpmsg_bus virtio0: creating channel echo_cortex addr 0x405
[    3.136555] cfg80211: Calling CRDA to update world regulatory domain
[    3.531753] PM: Syncing filesystems ... done.
[    3.532102] Freezing user space processes ... (elapsed 0.03 seconds) done.
[    3.563404] rpmsg_linkctrl_cmd_hiber_prepare: 0x1d99d2e0
[    3.563651] PM: Preallocating image memory... done (allocated 3168 pages)
[    3.580382] PM: Allocated 12672 kbytes in 0.01 seconds (1267.20 MB/s)
[    3.580404] Freezing remaining freezable tasks ... (elapsed 0.01 seconds) done.
[    3.593598] Suspending console(s) (use no_console_suspend to debug)
[    3.616244] PM: freeze of devices complete after 22.589 msecs
[    3.616913] PM: late freeze of devices complete after 0.652 msecs
[    3.618274] PM: noirq freeze of devices complete after 1.347 msecs
[    3.618376] PM: Creating hibernation image:
[    3.618376] PM: Need to copy 3165 pages
[    3.618376] pm_abaoss_entry returned 0x1
[    7.237126] PM: noirq restore of devices complete after 0.140 msecs
[    7.237516] PM: early restore of devices complete after 0.097 msecs
[    7.353593] mmc0: queuing unknown CIS tuple 0x80 (2 bytes)
[    7.355352] mmc0: queuing unknown CIS tuple 0x80 (3 bytes)
[    7.359662] mmc0: queuing unknown CIS tuple 0x80 (3 bytes)
[    7.364083] mmc0: queuing unknown CIS tuple 0x80 (7 bytes)
[    7.368036] mmc0: queuing unknown CIS tuple 0x81 (9 bytes)
[    7.473868] PM: restore of devices complete after 225.215 msecs
[    7.474173] rpmsg_linkctrl_cmd_hiber_exit:
[    7.475295] Restarting tasks ... done.
[    8.194000] mmc0: card 0001 removed
[    8.478282] mmc0: new high speed SDIO card at address 0001
[    8.602970] dhd_module_init in
[    8.603073] no wifi platform data, skip
[    8.672221] DHD: dongle ram size is set to 524288(orig 524288) at 0x0
[    8.672594] wifi_platform_get_mac_addr
[    8.693341] CFG80211-ERROR) wl_event_handler : tsk Enter, tsk = 0x41c4135c
[    8.711999] dhd_deferred_work_init: work queue initialized
[    9.039404] dhd_bus_init: enable 0x06, ready 0x06 (waited 0us)
[    9.041297] wifi_platform_get_mac_addr
[    9.043923] Firmware up: op_mode=0x0002, MAC=b0:f1:ec:00:00:00
[    9.057472] Firmware version = wl0: May 16 2017 12:55:47 version 7.46.57.5.o13.r232 FWID 01-8394305b es6.c5.n4.a3
[    9.061082] dhd_wlfc_init(): successfully enabled bdcv2 tlv signaling, 79
[    9.062013] dhd_wlfc_init: query wlfc_mode succeed, fw_caps=0x1c
[    9.064184] dhd_wlfc_init(): wlfc_mode=0x1c, ret=0
[    9.066307] dhd_interworking_enable: failed to set WNM info, ret=-23
[    9.066369]
[    9.066369] Dongle Host Driver, version 1.201.60.5 (r556033)
[    9.066369] Compiled from
[    9.072381] Register interface [wlan0]  MAC: b0:f1:ec:00:00:00
[    9.072381]
[    9.082318] dhd_module_init out
[   10.987743] CFG80211-ERROR) wl_cfg80211_del_station : Disconnect STA : ff:ff:ff:ff:ff:ff scb_val.val 3
[   11.054053] CFG80211-ERROR) wl_cfg80211_set_channel : netdev_ifidx(2), chan_type(1) target channel(1)
[   11.093866] _dhd_wlfc_mac_entry_update():1701, entry(32)
[   11.374923] CFG80211-ERROR) wl_cfg80211_del_station : Disconnect STA : ff:ff:ff:ff:ff:ff scb_val.val 3
[   11.402004] _dhd_wlfc_mac_entry_update():1701, entry(32)
[   11.407974] CFG80211-ERROR) wl_cfg80211_sdo_deinit : Wl 41c402e0 or cfg->p2p   (null) is null
[   11.642863] dhd_wlfc_deinit():3355, maintain HOST RXRERODER flag in tvl
[   11.643865] dhd_wlfc_deinit():3369 successfully disabled bdcv2 tlv signaling, 64
[   11.729074] CFG80211-ERROR) wl_event_handler : was terminated
[   12.282233] mmc0: card 0001 removed
[   18.777821] sdio_read_cis: 5 callbacks suppressed
[   18.777897] mmc0: queuing unknown CIS tuple 0x80 (2 bytes)
[   18.779761] mmc0: queuing unknown CIS tuple 0x80 (3 bytes)
[   18.782000] mmc0: queuing unknown CIS tuple 0x80 (3 bytes)
[   18.785398] mmc0: queuing unknown CIS tuple 0x80 (7 bytes)
[   18.789292] mmc0: queuing unknown CIS tuple 0x81 (9 bytes)
[   18.930605] mmc0: new high speed SDIO card at address 0001
[   19.195003] dhd_module_init in
[   19.195105] no wifi platform data, skip
[   19.225924] DHD: dongle ram size is set to 524288(orig 524288) at 0x0
[   19.226314] wifi_platform_get_mac_addr
```

#WiFi AP
 - **SSID:** MiCam_[last 7 digits of SN]
 - **Default pass:** `1234567890`
 - **Securtiy:** WPA2-Personal
 - **Camera IP:** `192.168.42.1`



#Nmap scan:
```json
Opened ports on 192.168.42.1
PORT      STATE SERVICE         VERSION
*23/tcp   open  telnet          telnetd
53/tcp    open  domaind         nsmasq 2.72
80/tcp    open  http            Cherokee/1.2.101b171028
111/tcp   open  rpcbind         2-4 (RPC #100000)
554/tcp   open  rtsp
7877/udp  open  unknown
7878/tcp  open  owms
8787/tcp  open  msgsrvr
9888/tcp  open  cyborg-systems
12080/tcp open  unknown

*closed by default
```

#Shell access
Telnet Access is closed by default. A empty file must to be created in SD Card root, called: `telnet.txt`.

Default User: root
