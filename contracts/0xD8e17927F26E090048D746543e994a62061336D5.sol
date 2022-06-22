contract main {




// =====================  Runtime code  =====================


mapping of address sub_fa3a1f5d;
address OWNER;

function OWNER() payable {
    return OWNER
}

function sub_fa3a1f5d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_fa3a1f5d[arg1]
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == OWNER
    OWNER = arg1
}

function sub_865158a5(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require msg.sender == OWNER
    sub_fa3a1f5d[address(arg1)] = address(arg2)
}

function getVaultInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 96
    if not sub_fa3a1f5d[address(arg1)]:
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
    mem[0] = arg1
    mem[32] = 0
    mem[576] = 0x90229af700000000000000000000000000000000000000000000000000000000
    mem[580] = arg1
    require ext_code.size(sub_fa3a1f5d[address(arg1)])
    staticcall sub_fa3a1f5d[address(arg1)].0x90229af7 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _11 = mem[576 len 4], address(arg1) << 64
    require mem[576 len 4], address(arg1) << 64 <= test266151307()
    require return_data.size - mem[576 len 4], address(arg1) << 64 >= 480
    if not bool(ceil32(return_data.size) + 1056 <= test266151307()):
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + 1056
    mem[ceil32(return_data.size) + 576] = mem[mem[576 len 4], address(arg1) << 64 + 576]
    mem[ceil32(return_data.size) + 608] = mem[_11 + 608]
    mem[ceil32(return_data.size) + 640] = mem[_11 + 640]
    mem[ceil32(return_data.size) + 672] = mem[_11 + 672]
    mem[ceil32(return_data.size) + 704] = mem[_11 + 704]
    mem[ceil32(return_data.size) + 736] = mem[_11 + 736]
    mem[ceil32(return_data.size) + 768] = mem[_11 + 768]
    mem[ceil32(return_data.size) + 800] = mem[_11 + 800]
    mem[ceil32(return_data.size) + 832] = mem[_11 + 832]
    mem[ceil32(return_data.size) + 864] = mem[_11 + 864]
    mem[ceil32(return_data.size) + 896] = mem[_11 + 896]
    mem[ceil32(return_data.size) + 928] = mem[_11 + 928]
    mem[ceil32(return_data.size) + 960] = mem[_11 + 960]
    mem[ceil32(return_data.size) + 992] = mem[_11 + 992]
    _32 = mem[_11 + 1024]
    require mem[_11 + 1024] <= test266151307()
    require _11 + mem[_11 + 1024] + 607 < return_data.size + 576
    _35 = mem[_11 + mem[_11 + 1024] + 576]
    if mem[_11 + mem[_11 + 1024] + 576] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[_11 + mem[_11 + 1024] + 576])) + 481 < 480 or ceil32(return_data.size) + ceil32(ceil32(mem[_11 + mem[_11 + 1024] + 576])) + 1057 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[_11 + mem[_11 + 1024] + 576])) + 1057
    mem[ceil32(return_data.size) + 1056] = mem[_11 + mem[_11 + 1024] + 576]
    require _11 + _32 + _35 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 1088 len ceil32(_35)] = mem[_11 + _32 + 608 len ceil32(_35)]
    if ceil32(_35) <= _35:
        mem[ceil32(return_data.size) + 1024] = ceil32(return_data.size) + 1056
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 576]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 608]
        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 640]
        mem[mem[64] + 128] = mem[ceil32(return_data.size) + 672]
        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 704]
        mem[mem[64] + 192] = mem[ceil32(return_data.size) + 736]
        mem[mem[64] + 224] = mem[ceil32(return_data.size) + 768]
        mem[mem[64] + 256] = mem[ceil32(return_data.size) + 800]
        mem[mem[64] + 288] = mem[ceil32(return_data.size) + 832]
        mem[mem[64] + 320] = mem[ceil32(return_data.size) + 864]
        mem[mem[64] + 352] = mem[ceil32(return_data.size) + 896]
        mem[mem[64] + 384] = mem[ceil32(return_data.size) + 928]
        mem[mem[64] + 416] = mem[ceil32(return_data.size) + 960]
        mem[mem[64] + 448] = mem[ceil32(return_data.size) + 992]
        mem[mem[64] + 480] = 480
        _166 = mem[ceil32(return_data.size) + 1056]
        mem[mem[64] + 512] = mem[ceil32(return_data.size) + 1056]
        mem[mem[64] + 544 len ceil32(_166)] = mem[ceil32(return_data.size) + 1088 len ceil32(_166)]
        if ceil32(_166) > _166:
            mem[mem[64] + _166 + 544] = 0
        return 32, mem[mem[64] + 32 len 448], 480, mem[mem[64] + 512 len ceil32(_166) + 32]
    mem[ceil32(return_data.size) + _35 + 1088] = 0
    mem[ceil32(return_data.size) + 1024] = ceil32(return_data.size) + 1056
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 576]
    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 608]
    mem[mem[64] + 96] = mem[ceil32(return_data.size) + 640]
    mem[mem[64] + 128] = mem[ceil32(return_data.size) + 672]
    mem[mem[64] + 160] = mem[ceil32(return_data.size) + 704]
    mem[mem[64] + 192] = mem[ceil32(return_data.size) + 736]
    mem[mem[64] + 224] = mem[ceil32(return_data.size) + 768]
    mem[mem[64] + 256] = mem[ceil32(return_data.size) + 800]
    mem[mem[64] + 288] = mem[ceil32(return_data.size) + 832]
    mem[mem[64] + 320] = mem[ceil32(return_data.size) + 864]
    mem[mem[64] + 352] = mem[ceil32(return_data.size) + 896]
    mem[mem[64] + 384] = mem[ceil32(return_data.size) + 928]
    mem[mem[64] + 416] = mem[ceil32(return_data.size) + 960]
    mem[mem[64] + 448] = mem[ceil32(return_data.size) + 992]
    mem[mem[64] + 480] = 480
    _182 = mem[ceil32(return_data.size) + 1056]
    mem[mem[64] + 512] = mem[ceil32(return_data.size) + 1056]
    mem[mem[64] + 544 len ceil32(_182)] = mem[ceil32(return_data.size) + 1088 len ceil32(_182)]
    if ceil32(_182) > _182:
        mem[mem[64] + _182 + 544] = 0
    return 32, mem[mem[64] + 32 len 448], 480, mem[mem[64] + 512 len ceil32(_182) + 32]
}

function sub_757d2331(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_fa3a1f5d[address(arg1)]:
        require ext_code.size(sub_fa3a1f5d[address(arg1)])
        staticcall sub_fa3a1f5d[address(arg1)].0x757d2331 with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 256
        return ext_call.return_data[0], 
               ext_call.return_data[32],
               ext_call.return_data[64],
               ext_call.return_data[96],
               ext_call.return_data[128],
               ext_call.return_data[160],
               ext_call.return_data[192],
               ext_call.return_data[224]
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
    staticcall address(arg1).0xff07cc57 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    if ext_call.return_data[0] <= 0:
        if not ext_call.return_data[0]:
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
            if ext_call.return_data[0] > -1:
                revert with 0, 17
            return ext_call.return_data[0], 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0]
        staticcall address(arg1).0xc3f31bf1 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        if ext_call.return_data[0] <= 0:
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
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > -1:
                revert with 0, 17
            return ext_call.return_data[0], 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0],
                   ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        staticcall address(arg1).0x9498be18 with:
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
        if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > -1:
            revert with 0, 17
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
        if not ext_call.return_data[0]:
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
            if ext_call.return_data[0] > -1:
                revert with 0, 17
            return ext_call.return_data[0], 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0]
        staticcall address(arg1).0xc3f31bf1 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        if ext_call.return_data[0] <= 0:
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
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > -1:
                revert with 0, 17
            return ext_call.return_data[0], 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0],
                   ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        staticcall address(arg1).0x9498be18 with:
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
        if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > -1:
            revert with 0, 17
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
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xff07cc57 with:
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
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xff07cc57 with:
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
    if not ext_call.return_data[0]:
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
        if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 17
        return ext_call.return_data[0], 
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0],
               0
    staticcall address(arg1).0xc3f31bf1 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    if ext_call.return_data[0] <= 0:
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
        if 0 and ext_call.return_data[0] > -1 / 0:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
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
        if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 17
        return ext_call.return_data[0], 
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]),
               (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]
    staticcall address(arg1).0x9498be18 with:
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
    if 0 and ext_call.return_data[0] > -1 / 0:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > !ext_call.return_data[0]:
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
    if ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + ext_call.return_data[0] and ext_call.return_data[0] > -1 / ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
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
    if ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
        revert with 0, 17
    return ext_call.return_data[0], 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           (((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]),
           ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]
}



}
