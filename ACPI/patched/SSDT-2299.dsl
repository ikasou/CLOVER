/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLxtkSWX.aml, Sun Apr 15 17:51:19 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000012F1 (4849)
 *     Revision         0x01
 *     Checksum         0xE5
 *     OEM ID           "IKAS"
 *     OEM Table ID     "X299"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20161210 (538317328)
 */
DefinitionBlock ("", "SSDT", 1, "IKAS", "X299", 0x00000000)
{
    External (_SB_.PC02.BR2A, DeviceObj)    // (from opcode)
    External (_SB_.PC02.BR2A.PEGP, DeviceObj)    // (from opcode)
    External (_SB_.PC02.BR2C, DeviceObj)    // (from opcode)
    External (_SB_.PC03.BR3D.PEGP, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.HDEF, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.IMEI, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PMCR, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP01.PXSX, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP07.PXSX, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP09.PXSX, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.SAT1, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XGBE, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_, DeviceObj)    // (from opcode)
    External (XPRW, MethodObj)    // 2 Arguments (from opcode)

    Scope (\_SB.PCI0.HDEF)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            Store (Package (0x16)
                {
                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built In"
                    }, 

                    "model", 
                    Buffer (0x1B)
                    {
                        "Intel X299 Series HD Audio"
                    }, 

                    "name", 
                    Buffer (0x24)
                    {
                        "Realtek ALC S1220A Audio Controller"
                    }, 

                    "hda-gfx", 
                    Buffer (0x0A)
                    {
                        "onboard-1"
                    }, 

                    "device_type", 
                    Buffer (0x14)
                    {
                        "HD Audio Controller"
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0xF0, 0xA2, 0x00, 0x00                         
                    }, 

                    "compatible", 
                    Buffer (0x0D)
                    {
                        "pci8086,0C0C"
                    }, 

                    "MaximumBootBeepVolume", 
                    Buffer (One)
                    {
                         0xEE                                           
                    }, 

                    "MaximumBootBeepVolumeAlt", 
                    Buffer (One)
                    {
                         0xEE                                           
                    }, 

                    "layout-id", 
                    Buffer (0x04)
                    {
                         0x07, 0x00, 0x00, 0x00                         
                    }, 

                    "PinConfigurations", 
                    Buffer (Zero) {}
                }, Local0)
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            Return (Local0)
        }
    }

    Scope (\_SB.PC02.BR2A.PEGP)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            Store (Package (0x14)
                {
                    "built-in", 
                    Buffer (One)
                    {
                         0x00                                           
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0x80, 0x1B, 0x00, 0x00                         
                    }, 

                    "hda-gfx", 
                    Buffer (0x0A)
                    {
                        "onboard-2"
                    }, 

                    "AAPL,slot-name", 
                    Buffer (0x07)
                    {
                        "Slot-1"
                    }, 

                    "@0,connector-type", 
                    Buffer (0x04)
                    {
                         0x00, 0x08, 0x00, 0x00                         
                    }, 

                    "@1,connector-type", 
                    Buffer (0x04)
                    {
                         0x00, 0x08, 0x00, 0x00                         
                    }, 

                    "@2,connector-type", 
                    Buffer (0x04)
                    {
                         0x00, 0x08, 0x00, 0x00                         
                    }, 

                    "@3,connector-type", 
                    Buffer (0x04)
                    {
                         0x00, 0x08, 0x00, 0x00                         
                    }, 

                    "@4,connector-type", 
                    Buffer (0x04)
                    {
                         0x00, 0x08, 0x00, 0x00                         
                    }, 

                    "@5,connector-type", 
                    Buffer (0x04)
                    {
                         0x00, 0x08, 0x00, 0x00                         
                    }
                }, Local0)
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            Return (Local0)
        }
    }

    Scope (\_SB.PC02.BR2A)
    {
        Device (HDAU)
        {
            Name (_ADR, One)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Store (Package (0x0C)
                    {
                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                           
                        }, 

                        "device-id", 
                        Buffer (0x04)
                        {
                             0xEF, 0x10, 0x00, 0x00                         
                        }, 

                        "AAPL,slot-name", 
                        Buffer (0x07)
                        {
                            "Slot-1"
                        }, 

                        "device_type", 
                        Buffer (0x16)
                        {
                            "Multimedia Controller"
                        }, 

                        "name", 
                        Buffer (0x1D)
                        {
                            "NVIDIA High Definition Audio"
                        }, 

                        "hda-gfx", 
                        Buffer (0x0A)
                        {
                            "onboard-2"
                        }
                    }, Local0)
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }
    }

    Scope (\_SB.PC02.BR2C)
    {
        OperationRegion (PEGR, PCI_Config, 0xC0, 0x30)
        Field (PEGR, DWordAcc, NoLock, Preserve)
        {
            Offset (0x02), 
            PSTS,   1, 
            Offset (0x2C), 
            GENG,   1, 
                ,   1, 
            PMEG,   1
        }

        Method (HPME, 0, Serialized)
        {
            Store (One, PSTS)
        }

        Device (PEGP)
        {
            Name (_ADR, Zero)  // _ADR: Address
            OperationRegion (PCIS, PCI_Config, Zero, 0x0100)
            Field (PCIS, AnyAcc, NoLock, Preserve)
            {
                PVID,   16, 
                PDID,   16
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Store (Package (0x14)
                    {
                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                           
                        }, 

                        "device-id", 
                        Buffer (0x04)
                        {
                             0x80, 0x1B, 0x00, 0x00                         
                        }, 

                        "hda-gfx", 
                        Buffer (0x0A)
                        {
                            "onboard-2"
                        }, 

                        "AAPL,slot-name", 
                        Buffer (0x07)
                        {
                            "Slot-2"
                        }, 

                        "@0,connector-type", 
                        Buffer (0x04)
                        {
                             0x00, 0x08, 0x00, 0x00                         
                        }, 

                        "@1,connector-type", 
                        Buffer (0x04)
                        {
                             0x00, 0x08, 0x00, 0x00                         
                        }, 

                        "@2,connector-type", 
                        Buffer (0x04)
                        {
                             0x00, 0x08, 0x00, 0x00                         
                        }, 

                        "@3,connector-type", 
                        Buffer (0x04)
                        {
                             0x00, 0x08, 0x00, 0x00                         
                        }, 

                        "@4,connector-type", 
                        Buffer (0x04)
                        {
                             0x00, 0x08, 0x00, 0x00                         
                        }, 

                        "@5,connector-type", 
                        Buffer (0x04)
                        {
                             0x00, 0x08, 0x00, 0x00                         
                        }
                    }, Local0)
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }

        Device (HDAU)
        {
            Name (_ADR, One)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Store (Package (0x0C)
                    {
                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                           
                        }, 

                        "device-id", 
                        Buffer (0x04)
                        {
                             0xEF, 0x10, 0x00, 0x00                         
                        }, 

                        "AAPL,slot-name", 
                        Buffer (0x07)
                        {
                            "Slot-2"
                        }, 

                        "device_type", 
                        Buffer (0x16)
                        {
                            "Multimedia Controller"
                        }, 

                        "name", 
                        Buffer (0x1D)
                        {
                            "NVIDIA High Definition Audio"
                        }, 

                        "hda-gfx", 
                        Buffer (0x0A)
                        {
                            "onboard-2"
                        }
                    }, Local0)
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }
    }

    Device (_SB.USBX)
    {
        Name (_ADR, Zero)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (LNot (Arg2))
            {
                Return (Buffer (One)
                {
                     0x03                                           
                })
            }

            Return (Package (0x08)
            {
                "kUSBSleepPortCurrentLimit", 
                0x0834, 
                "kUSBSleepPowerSupply", 
                0x13EC, 
                "kUSBWakePortCurrentLimit", 
                0x0834, 
                "kUSBWakePowerSupply", 
                0x13EC
            })
        }
    }

    Scope (\_SB.PCI0.IMEI)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            Store (Package (0x0E)
                {
                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built In"
                    }, 

                    "model", 
                    Buffer (0x16)
                    {
                        "Intel X299 Series MEI"
                    }, 

                    "name", 
                    Buffer (0x22)
                    {
                        "Intel Management Engine Interface"
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0x3A, 0x1E, 0x00, 0x00                         
                    }, 

                    "device_type", 
                    Buffer (0x10)
                    {
                        "IMEI Controller"
                    }, 

                    "built-in", 
                    Buffer (One)
                    {
                         0x00                                           
                    }, 

                    "compatible", 
                    Buffer (0x0D)
                    {
                        "pci8086,1e3a"
                    }
                }, Local0)
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            Return (Local0)
        }
    }

    Scope (\_SB.PCI0.PMCR)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            Store (Package (0x0E)
                {
                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built In"
                    }, 

                    "model", 
                    Buffer (0x16)
                    {
                        "Intel X299 Series PMC"
                    }, 

                    "name", 
                    Buffer (0x0A)
                    {
                        "Intel PMC"
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0xA1, 0xA2, 0x00, 0x00                         
                    }, 

                    "device_type", 
                    Buffer (0x0F)
                    {
                        "PMC Controller"
                    }, 

                    "built-in", 
                    Buffer (One)
                    {
                         0x00                                           
                    }, 

                    "compatible", 
                    Buffer (0x0D)
                    {
                        "pci8086,a121"
                    }
                }, Local0)
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            Return (Local0)
        }
    }

    Device (UIAC)
    {
        Name (_HID, "UIA00000")  // _HID: Hardware ID
        Name (RMCF, Package (0x02)
        {
            "8086_a2af", 
            Package (0x04)
            {
                "port-count", 
                Buffer (0x04)
                {
                     0x1A, 0x00, 0x00, 0x00                         
                }, 

                "ports", 
                Package (0x0E)
                {
                    "HS03", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0x03, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x03, 0x00, 0x00, 0x00                         
                        }
                    }, 

                    "HS04", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0x03, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x04, 0x00, 0x00, 0x00                         
                        }
                    }, 

                    "HS09", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0x03, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x09, 0x00, 0x00, 0x00                         
                        }
                    }, 

                    "HS14", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0xFF, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x0E, 0x00, 0x00, 0x00                         
                        }
                    }, 

                    "SS03", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0x03, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x13, 0x00, 0x00, 0x00                         
                        }
                    }, 

                    "SS04", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0x03, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x14, 0x00, 0x00, 0x00                         
                        }
                    }, 

                    "SS06", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0x03, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x16, 0x00, 0x00, 0x00                         
                        }
                    }
                }
            }
        })
    }

    Scope (\_SB.PCI0.XHC)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            Store (Package (0x1B)
                {
                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built In"
                    }, 

                    "built-in", 
                    Buffer (One)
                    {
                         0x00                                           
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0xAF, 0xA2, 0x00, 0x00                         
                    }, 

                    "name", 
                    Buffer (0x16)
                    {
                        "Intel XHCI Controller"
                    }, 

                    "model", 
                    Buffer (0x1A)
                    {
                        "Intel X299 Series USB 3.0"
                    }, 

                    "AAPL,current-available", 
                    0x0834, 
                    "AAPL,current-extra", 
                    0x0A8C, 
                    "AAPL,current-in-sleep", 
                    0x0A8C, 
                    "AAPL,max-port-current-in-sleep", 
                    0x0834, 
                    "AAPL,device-internal", 
                    Zero, 
                    "AAPL,clock-id", 
                    Buffer (One)
                    {
                         0x01                                           
                    }, 

                    "AAPL,root-hub-depth", 
                    0x1A, 
                    "AAPL,XHC-clock-id", 
                    One, 
                    Buffer (One)
                    {
                         0x00                                           
                    }
                }, Local0)
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            Return (Local0)
        }
    }

    Scope (\_SB.PC03.BR3D.PEGP)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (LEqual (Arg2, Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                           
                })
            }

            Store (Package (0x1B)
                {
                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built In"
                    }, 

                    "built-in", 
                    Buffer (One)
                    {
                         0x00                                           
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0x42, 0x21, 0x00, 0x00                         
                    }, 

                    "name", 
                    Buffer (0x17)
                    {
                        "ASMedia XHC Controller"
                    }, 

                    "model", 
                    Buffer (0x18)
                    {
                        "ASMedia ASM3142 USB 3.1"
                    }, 

                    "AAPL,current-available", 
                    0x0834, 
                    "AAPL,current-extra", 
                    0x0A8C, 
                    "AAPL,current-in-sleep", 
                    0x0A8C, 
                    "AAPL,max-port-current-in-sleep", 
                    0x0834, 
                    "AAPL,device-internal", 
                    Zero, 
                    "AAPL,clock-id", 
                    Buffer (One)
                    {
                         0x01                                           
                    }, 

                    "AAPL,root-hub-depth", 
                    0x1A, 
                    "AAPL,XHC-clock-id", 
                    One, 
                    Buffer (One)
                    {
                         0x00                                           
                    }
                }, Local0)
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            Return (Local0)
        }
    }

    Scope (\_SB.PCI0.RP09.PXSX)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (LEqual (Arg2, Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                           
                })
            }

            Store (Package (0x08)
                {
                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built In"
                    }, 

                    "built-in", 
                    Buffer (One)
                    {
                         0x00                                           
                    }, 

                    "name", 
                    Buffer (0x18)
                    {
                        "Storage NVMe Controller"
                    }, 

                    "model", 
                    Buffer (0x23)
                    {
                        "Samsung NVMe SM951 512GB SSD Drive"
                    }
                }, Local0)
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            Return (Local0)
        }
    }

    Scope (\_SB.PCI0.SAT1)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            Store (Package (0x0C)
                {
                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built In"
                    }, 

                    "built-in", 
                    Buffer (One)
                    {
                         0x00                                           
                    }, 

                    "name", 
                    Buffer (0x16)
                    {
                        "Intel AHCI Controller"
                    }, 

                    "model", 
                    Buffer (0x17)
                    {
                        "Intel X299 Series SATA"
                    }, 

                    "device_type", 
                    Buffer (0x15)
                    {
                        "AHCI SATA Controller"
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0x82, 0xA2, 0x00, 0x00                         
                    }
                }, Local0)
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            Return (Local0)
        }
    }

    Scope (\_SB.PCI0.RP01.PXSX)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            Store (Package (0x0C)
                {
                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built In"
                    }, 

                    "built-in", 
                    Buffer (One)
                    {
                         0x00                                           
                    }, 

                    "name", 
                    Buffer (0x21)
                    {
                        "Intel I211VA Ethernet Controller"
                    }, 

                    "model", 
                    Buffer (0x2A)
                    {
                        "Intel I211VA PCI Express Gigabit Ethernet"
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0x39, 0x15, 0x00, 0x00                         
                    }, 

                    "location", 
                    Buffer (0x02)
                    {
                        "2"
                    }
                }, Local0)
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            Return (Local0)
        }
    }

    Scope (\_SB.PCI0.XGBE)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            Store (Package (0x0C)
                {
                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built In"
                    }, 

                    "built-in", 
                    Buffer (One)
                    {
                         0x00                                           
                    }, 

                    "name", 
                    Buffer (0x21)
                    {
                        "Intel I219V2 Ethernet Controller"
                    }, 

                    "model", 
                    Buffer (0x2A)
                    {
                        "Intel I219V2 PCI Express Gigabit Ethernet"
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0xB8, 0x15, 0x00, 0x00                         
                    }, 

                    "location", 
                    Buffer (0x02)
                    {
                        "1"
                    }
                }, Local0)
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            Return (Local0)
        }
    }

    Scope (_SB.PCI0.RP07.PXSX)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            Store (Package (0x0E)
                {
                    "built-in", 
                    Buffer (One)
                    {
                         0x00                                           
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0xA0, 0x43, 0x00, 0x00                         
                    }, 

                    "AAPL,slot-name", 
                    Buffer (0x07)
                    {
                        "Slot-3"
                    }, 

                    "device_type", 
                    Buffer (0x13)
                    {
                        "AirPort Controller"
                    }, 

                    "model", 
                    Buffer (0x37)
                    {
                        "Broadcom Wireless 802.11 a/b/g/n/ac + BTLE 4.0 M2 card"
                    }, 

                    "compatible", 
                    Buffer (0x0D)
                    {
                        "pci14e4,43a0"
                    }, 

                    "name", 
                    Buffer (0x10)
                    {
                        "AirPort Extreme"
                    }
                }, Local0)
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            Return (Local0)
        }
    }

    Method (DTGP, 5, NotSerialized)
    {
        If (LEqual (Arg0, ToUUID ("a0b5b7c6-1318-441c-b0c9-fe695eaf949b")))
        {
            If (LEqual (Arg1, One))
            {
                If (LEqual (Arg2, Zero))
                {
                    Store (Buffer (One)
                        {
                             0x03                                           
                        }, Arg4)
                    Return (One)
                }

                If (LEqual (Arg2, One))
                {
                    Return (One)
                }
            }
        }

        Store (Buffer (One)
            {
                 0x00                                           
            }, Arg4)
        Return (Zero)
    }

    Method (XOSI, 1, NotSerialized)
    {
        Store (Package (0x08)
            {
                "Windows", 
                "Windows 2001", 
                "Windows 2001 SP2", 
                "Windows 2006", 
                "Windows 2006 SP1", 
                "Windows 2006.1", 
                "Windows 2009", 
                "Windows 2012"
            }, Local0)
        Return (LNotEqual (Ones, Match (Local0, MEQ, Arg0, MTR, Zero, Zero)))
    }

    Method (GPRW, 2, NotSerialized)
    {
        If (LEqual (0x6D, Arg0))
        {
            Return (Package (0x02)
            {
                0x6D, 
                Zero
            })
        }

        If (LEqual (0x0D, Arg0))
        {
            Return (Package (0x02)
            {
                0x0D, 
                Zero
            })
        }

        Return (XPRW (Arg0, Arg1))
    }
}

