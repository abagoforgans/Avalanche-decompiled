contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getVaultInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.epoch() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0xdf952b39 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0xc43a43e8 with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1 > !ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(arg1)
    staticcall arg1.0xc43a43e8 with:
            gas gas_remaining wei
           args (ext_call.return_data[0] + 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0xee088744 with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1 > !ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(arg1)
    staticcall arg1.0xee088744 with:
            gas gas_remaining wei
           args (ext_call.return_data[0] + 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0xe24f97a3 with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x83cd45f2 with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x8d44c8f3 with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x8232e06e with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0xbaba6a90 with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.expiry() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.START_TIME() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.PERIOD() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 32, ext_call.return_data[0], 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           480,
           0
}

function sub_757d2331(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x203960cc with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xa7f4f6b7 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    if ext_call.return_data[0] <= 0:
        staticcall address(arg1).0xff07cc57 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        if ext_call.return_data[0] <= 0:
            staticcall address(arg1).0x9498be18 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x203960cc with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x624e9dbb with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(arg1))
            staticcall address(arg1).0xa7f4f6b7 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(arg1))
            staticcall address(arg1).0xc3f31bf1 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(arg1))
            staticcall address(arg1).0xff07cc57 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ext_call.return_data[0], 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0]
        staticcall address(arg1).0xff07cc57 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x48478029 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        if ext_call.return_data[0] <= 0:
            staticcall address(arg1).0x9498be18 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x203960cc with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x624e9dbb with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(arg1))
            staticcall address(arg1).0xa7f4f6b7 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(arg1))
            staticcall address(arg1).0xc3f31bf1 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(arg1))
            staticcall address(arg1).0xff07cc57 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ext_call.return_data[0], 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0]
        staticcall address(arg1).0xff07cc57 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        staticcall address(arg1).0xee088744 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        staticcall address(arg1).0xff07cc57 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x48478029 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x624e9dbb with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x9498be18 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x203960cc with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x624e9dbb with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        staticcall address(arg1).0xa7f4f6b7 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        staticcall address(arg1).0xc3f31bf1 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        staticcall address(arg1).0xff07cc57 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0], 
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
    staticcall address(arg1).0xc3f31bf1 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    if ext_call.return_data[0] <= 0:
        staticcall address(arg1).0xa7f4f6b7 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        staticcall address(arg1).epoch() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        staticcall address(arg1).0xbaba6a90 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(address(arg1))
        staticcall address(arg1).0xff07cc57 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        if ext_call.return_data[0] <= 0:
            staticcall address(arg1).0x9498be18 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x203960cc with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x624e9dbb with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(arg1))
            staticcall address(arg1).0xa7f4f6b7 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(arg1))
            staticcall address(arg1).0xc3f31bf1 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(arg1))
            staticcall address(arg1).0xff07cc57 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ext_call.return_data[0], 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0],
                   ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        staticcall address(arg1).0xff07cc57 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x48478029 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        if ext_call.return_data[0] <= 0:
            staticcall address(arg1).0x9498be18 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x203960cc with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x624e9dbb with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(arg1))
            staticcall address(arg1).0xa7f4f6b7 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(arg1))
            staticcall address(arg1).0xc3f31bf1 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(arg1))
            staticcall address(arg1).0xff07cc57 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ext_call.return_data[0], 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0],
                   ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        staticcall address(arg1).0xff07cc57 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        staticcall address(arg1).0xee088744 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        staticcall address(arg1).0xff07cc57 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x48478029 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x624e9dbb with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x9498be18 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x203960cc with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x624e9dbb with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        staticcall address(arg1).0xa7f4f6b7 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        staticcall address(arg1).0xc3f31bf1 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        staticcall address(arg1).0xff07cc57 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0], 
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0],
               0
    staticcall address(arg1).0x9498be18 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xa7f4f6b7 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xc3f31bf1 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 1:
        revert with 0, 17
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xbaba6a90 with:
            gas gas_remaining wei
           args (ext_call.return_data[0] - 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xc3f31bf1 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 1:
        revert with 0, 17
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xbaba6a90 with:
            gas gas_remaining wei
           args (ext_call.return_data[0] - 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).epoch() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xbaba6a90 with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] and ext_call.return_data[0] > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xff07cc57 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    if ext_call.return_data[0] <= 0:
        staticcall address(arg1).0x9498be18 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x203960cc with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x624e9dbb with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        staticcall address(arg1).0xa7f4f6b7 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        staticcall address(arg1).0xc3f31bf1 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        staticcall address(arg1).0xff07cc57 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0], 
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0],
               (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]
    staticcall address(arg1).0xff07cc57 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x48478029 with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    if ext_call.return_data[0] <= 0:
        staticcall address(arg1).0x9498be18 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x203960cc with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x624e9dbb with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        staticcall address(arg1).0xa7f4f6b7 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        staticcall address(arg1).0xc3f31bf1 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        staticcall address(arg1).0xff07cc57 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0], 
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0],
               (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]
    staticcall address(arg1).0xff07cc57 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xee088744 with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xff07cc57 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x48478029 with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x624e9dbb with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x9498be18 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x203960cc with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x624e9dbb with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xa7f4f6b7 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xc3f31bf1 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xff07cc57 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0],
           ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
}



}
