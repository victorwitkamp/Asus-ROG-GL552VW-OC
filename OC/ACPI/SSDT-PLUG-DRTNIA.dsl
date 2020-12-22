/*
 * Adds plugin-type property to the furst thread of your CPU, this is just a mirror
 * from OpenCorePkg 
 */
DefinitionBlock ("", "SSDT", 2, "DRTNIA", "CpuPlug", 0x00003000)
{
    External (_SB_.CPU0, ProcessorObj)
    External (_PR_.CPU0, ProcessorObj)
    External (_PR_.CP00, ProcessorObj)
    External (_PR_.C000, ProcessorObj)
    External (_PR_.P000, ProcessorObj)
    External (_SB_.PR00, ProcessorObj)
    External (_PR_.PR00, ProcessorObj)
    External (_SB_.SCK0.CP00, ProcessorObj)
    External (_SB_.SCK0.PR00, ProcessorObj)
    Method (PMPM, 4, NotSerialized)
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x02)
        {
            "plugin-type", 
            One
        })
    }

    If (CondRefOf (\_SB.CPU0))
    {
        If ((ObjectType (\_SB.CPU0) == 0x0C))
        {
            Scope (\_SB.CPU0)
            {
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Return (PMPM (Arg0, Arg1, Arg2, Arg3))
                }
            }
        }
    }

    If (CondRefOf (\_PR.CPU0))
    {
        If ((ObjectType (\_PR.CPU0) == 0x0C))
        {
            Scope (\_PR.CPU0)
            {
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Return (PMPM (Arg0, Arg1, Arg2, Arg3))
                }
            }
        }
    }

    If (CondRefOf (\_SB.PR00))
    {
        If ((ObjectType (\_SB.PR00) == 0x0C))
        {
            Scope (\_SB.PR00)
            {
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Return (PMPM (Arg0, Arg1, Arg2, Arg3))
                }
            }
        }
    }

    If (CondRefOf (\_PR.C000))
    {
        If ((ObjectType (\_PR.C000) == 0x0C))
        {
            Scope (\_PR.C000)
            {
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Return (PMPM (Arg0, Arg1, Arg2, Arg3))
                }
            }
        }
    }

    If (CondRefOf (\_PR.P000))
    {
        If ((ObjectType (\_PR.P000) == 0x0C))
        {
            Scope (\_PR.P000)
            {
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Return (PMPM (Arg0, Arg1, Arg2, Arg3))
                }
            }
        }
    }

    If (CondRefOf (\_PR.PR00))
    {
        If ((ObjectType (\_PR.PR00) == 0x0C))
        {
            Scope (\_PR.PR00)
            {
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Return (PMPM (Arg0, Arg1, Arg2, Arg3))
                }
            }
        }
    }

    If (CondRefOf (\_SB.SCK0.CP00))
    {
        If ((ObjectType (\_SB.SCK0.CP00) == 0x0C))
        {
            Scope (\_SB.SCK0.CP00)
            {
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Return (PMPM (Arg0, Arg1, Arg2, Arg3))
                }
            }
        }
    }

    If (CondRefOf (\_SB.SCK0.PR00))
    {
        If ((ObjectType (\_SB.SCK0.PR00) == 0x0C))
        {
            Scope (\_SB.SCK0.PR00)
            {
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Return (PMPM (Arg0, Arg1, Arg2, Arg3))
                }
            }
        }
    }
}
