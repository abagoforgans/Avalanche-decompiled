contract main {




// =====================  Runtime code  =====================


#
#  - sub_1ff959e3(?)
#  - sub_54996637(?)
#  - harvestAll()
#  - sub_9bc40787(?)
#
uint8 isSaleStarted; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 160
address owner;
uint256 stor5;
uint256 stor6;

function isSaleStarted() {
    return bool(isSaleStarted)
}

function getOwner() {
    return owner
}

function _fallback() payable {
    revert
}

function getStats() {
    return 32, 3, stor5, stor6, 0
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    owner = arg1
}

function startSale(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 <= eth.balance(this.address)
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_6220f0f3(?) {
    if stor5 < 1111:
        return 2 * 10^18
    if stor5 < 2222:
        return 25 * 10^17
    if stor5 < 3333:
        return 3 * 10^18
    if stor5 < 4444:
        return 35 * 10^17
    if stor5 < 5555:
        return 4 * 10^18
    if stor5 < 6666:
        return '>s6(qB'
    if stor5 >= 7777:
        return 55 * 10^17
    return 5 * 10^18
}

function sub_4b80cd1f(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require msg.sender == owner
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 3
    stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg2
}

function sub_67ed5587(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require msg.sender == owner
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 2
    stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg2
}

function sub_dd35ef90(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require msg.sender == owner
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 1
    stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg2
}

function sub_cf66260d(?) {
    require calldata.size - 4 >= 64
    if not arg1:
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args 0, arg2, 64, 7, 0x732d6c6576656c00000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args arg2, 64, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args arg2, 's-cache'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if block.timestamp < block.timestamp:
                revert with 0, 17
            if False and ext_call.return_data[0] > 0:
                revert with 0, 17
            if ext_call.return_data[0] > -1:
                revert with 0, 17
            return ext_call.return_data[0]
        if block.timestamp < ext_call.return_data[0]:
            revert with 0, 17
        if block.timestamp - ext_call.return_data[0] and ext_call.return_data[0] > -1 / block.timestamp - ext_call.return_data[0]:
            revert with 0, 17
        if (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) > 0x480ebe7b9d58566c87ce9b80a5fb05082bd371c8651c7b299b30:
            revert with 0, 17
        if ext_call.return_data[0] > !((10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0])):
            revert with 0, 17
        return (ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]))
    if 1 == arg1:
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args 0, arg2, 64, 7, 0x6d2d6c6576656c00000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args arg2, 64, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args arg2, 'm-cache'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if block.timestamp < block.timestamp:
                revert with 0, 17
            if False and ext_call.return_data[0] > 0:
                revert with 0, 17
            if ext_call.return_data[0] > -1:
                revert with 0, 17
            return ext_call.return_data[0]
        if block.timestamp < ext_call.return_data[0]:
            revert with 0, 17
        if block.timestamp - ext_call.return_data[0] and ext_call.return_data[0] > -1 / block.timestamp - ext_call.return_data[0]:
            revert with 0, 17
        if (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) > 0x24075f3dceac2b3643e74dc052fd828415e9b8e4328e3d94cd98:
            revert with 0, 17
        if ext_call.return_data[0] > !((2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0])):
            revert with 0, 17
        return (ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]))
    if arg1 != 2:
        return 0
    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
            gas gas_remaining wei
           args 0, arg2, 64, 7, 0x632d6c6576656c00000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
            gas gas_remaining wei
           args arg2, 64, 11, 0x632d74696d657374616d70000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
            gas gas_remaining wei
           args arg2, 'c-cache'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if block.timestamp < block.timestamp:
            revert with 0, 17
        if False and ext_call.return_data[0] > 0:
            revert with 0, 17
        if ext_call.return_data[0] > -1:
            revert with 0, 17
        return ext_call.return_data[0]
    if block.timestamp < ext_call.return_data[0]:
        revert with 0, 17
    if block.timestamp - ext_call.return_data[0] and ext_call.return_data[0] > -1 / block.timestamp - ext_call.return_data[0]:
        revert with 0, 17
    if (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) > 0x2d09370d42573603d4e1213067bce3251b64271d3f31ccfa00fe0:
        revert with 0, 17
    if ext_call.return_data[0] > !((10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0])):
        revert with 0, 17
    return (ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]))
}

function sub_d15c76bb(?) {
    require msg.sender == owner
    require not uint8(stor0.field_168)
    mem[100] = 32
    mem[132] = 14
    mem[164] = 0x6d65746164617461536574746572000000000000000000000000000000000000
    require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
    staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
            gas gas_remaining wei
           args 'metadataSetter'
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    idx = 0
    while idx < 30:
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        call 0x0c3b29321611736341609022c23e981ac56e7f96.0x3db12d03 with:
             gas gas_remaining wei
            args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _23 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _26 = mem[_23]
        mem[mem[64] + 4] = mem[_23]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x4e4f31ed with:
             gas gas_remaining wei
            args mem[mem[64] + 4], 96, 1, 7, 0x732d6c6576656c00000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x4e4f31ed with:
             gas gas_remaining wei
            args _26, 96, 1, 7, 0x6d2d6c6576656c00000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x4e4f31ed with:
             gas gas_remaining wei
            args _26, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x4e4f31ed00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _26
        mem[mem[64] + 36] = 96
        mem[mem[64] + 100] = 11
        mem[mem[64] + 132] = 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
        mem[mem[64] + 68] = block.timestamp
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x4e4f31ed with:
             gas gas_remaining wei
            args _26, 96, block.timestamp, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _17 = mem[64]
    mem[mem[64]] = 10
    mem[64] = mem[64] + 352
    if 0 >= mem[_17]:
        revert with 0, 50
    mem[_17 + 32] = 0x7cac43966e94f81db40b8de5659a95c7e0d0c5b5
    if 1 >= mem[_17]:
        revert with 0, 50
    mem[_17 + 64] = 0x542ed36e85f8d98854a735e7143701ee8e5af1f
    if 2 >= mem[_17]:
        revert with 0, 50
    mem[_17 + 96] = 0xf16858923a395f425e2b680234a37eed4924b2f2
    if 3 >= mem[_17]:
        revert with 0, 50
    mem[_17 + 128] = 0xaac9dff40649a485a48096c5351be5bf59e1777f
    if 4 >= mem[_17]:
        revert with 0, 50
    mem[_17 + 160] = 0x7d9e1603dccc950d2ff73f3eaf79f84dc4b91fb5
    if 5 >= mem[_17]:
        revert with 0, 50
    mem[_17 + 192] = 0x35b5c80bbb3c9930d0e39cf2969d72e551216a32
    if 6 >= mem[_17]:
        revert with 0, 50
    mem[_17 + 224] = 0xe4d9dface119253f7c3ceb0ff75f092b5637dad
    if 7 >= mem[_17]:
        revert with 0, 50
    mem[_17 + 256] = 0x7fb3993a2fbf49ee4b93dbc0a079f2622825e51b
    if 8 >= mem[_17]:
        revert with 0, 50
    mem[_17 + 288] = 0xea4f70624a37b811100f58658d79d6df2eea6254
    if 9 >= mem[_17]:
        revert with 0, 50
    mem[_17 + 320] = 0x8c34d3b77a3412e8ce9bd7734ea15cc7c4f53771
    _55 = mem[_17]
    idx = 0
    while idx < _55:
        if idx >= mem[_17]:
            revert with 0, 50
        _57 = mem[(32 * idx) + _17 + 32]
        mem[mem[64] + 4] = mem[(32 * idx) + _17 + 44 len 20]
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        call 0x0c3b29321611736341609022c23e981ac56e7f96.0x3db12d03 with:
             gas gas_remaining wei
            args address(_57)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _60 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _61 = mem[_60]
        mem[mem[64] + 4] = mem[_60]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x4e4f31ed with:
             gas gas_remaining wei
            args mem[mem[64] + 4], 96, 1, 7, 0x732d6c6576656c00000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x4e4f31ed with:
             gas gas_remaining wei
            args _61, 96, 1, 7, 0x6d2d6c6576656c00000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x4e4f31ed with:
             gas gas_remaining wei
            args _61, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x4e4f31ed00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _61
        mem[mem[64] + 36] = 96
        mem[mem[64] + 100] = 11
        mem[mem[64] + 132] = 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
        mem[mem[64] + 68] = block.timestamp
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x4e4f31ed with:
             gas gas_remaining wei
            args _61, 96, block.timestamp, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        _55 = mem[_17]
        idx = idx + 1
        continue 
    if stor5 > -41:
        revert with 0, 17
    stor5 += 40
    uint8(stor0.field_168) = 1
}

function sub_f0394d6a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 3
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0x8462151c00000000000000000000000000000000000000000000000000000000
    mem[228] = address(arg1)
    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.tokensOfOwner(address rg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 224
    require return_data.size >= 32
    _8 = mem[224 len 4], address(arg1) << 64
    require mem[224 len 4], address(arg1) << 64 <= test266151307()
    require mem[224 len 4], address(arg1) << 64 + 255 < return_data.size + 224
    _9 = mem[mem[224 len 4], address(arg1) << 64 + 224]
    if mem[mem[224 len 4], address(arg1) << 64 + 224] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[224 len 4], address(arg1) << 64 + 224]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], address(arg1) << 64 + 224]) + 225 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], address(arg1) << 64 + 224]) + 225
    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], address(arg1) << 64 + 224]
    require return_data.size >= _8 + (32 * _9) + 32
    mem[ceil32(return_data.size) + 256 len 32 * _9] = mem[_8 + 256 len 32 * _9]
    idx = 0
    while idx < _9:
        if idx >= mem[ceil32(return_data.size) + 224]:
            revert with 0, 50
        _398 = mem[(32 * idx) + ceil32(return_data.size) + 256]
        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 256]
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = 7
        mem[mem[64] + 100] = 0x732d6c6576656c00000000000000000000000000000000000000000000000000
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args mem[mem[64] + 4], 64, 7, 0x732d6c6576656c00000000000000000000000000000000000000000000000000
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _404 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _405 = mem[_404]
        mem[mem[64] + 4] = _398
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = 11
        mem[mem[64] + 100] = 0x732d74696d657374616d70000000000000000000000000000000000000000000
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args _398, 64, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _408 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _409 = mem[_408]
        mem[mem[64] + 4] = _398
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = 7
        mem[mem[64] + 100] = 's-cache' << 200
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args _398, 's-cache'
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not mem[_408]:
            _415 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _417 = mem[_415]
            if block.timestamp < block.timestamp:
                revert with 0, 17
            if False and _405 > 0:
                revert with 0, 17
            if mem[_415] > -1:
                revert with 0, 17
            mem[mem[64] + 4] = _398
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = 7
            mem[mem[64] + 100] = 0x6d2d6c6576656c00000000000000000000000000000000000000000000000000
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args _398, 64, 7, 0x6d2d6c6576656c00000000000000000000000000000000000000000000000000
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _423 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _426 = mem[_423]
            mem[mem[64] + 4] = _398
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = 11
            mem[mem[64] + 100] = 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args _398, 64, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _431 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _433 = mem[_431]
            mem[mem[64] + 4] = _398
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = 7
            mem[mem[64] + 100] = 'm-cache' << 200
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args _398, 'm-cache'
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not mem[_431]:
                _446 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _449 = mem[_446]
                if block.timestamp < block.timestamp:
                    revert with 0, 17
                if False and _426 > 0:
                    revert with 0, 17
                if mem[_446] > -1:
                    revert with 0, 17
                mem[mem[64] + 4] = _398
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 7
                mem[mem[64] + 100] = 0x632d6c6576656c00000000000000000000000000000000000000000000000000
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _398, 64, 7, 0x632d6c6576656c00000000000000000000000000000000000000000000000000
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _462 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _468 = mem[_462]
                mem[mem[64] + 4] = _398
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 11
                mem[mem[64] + 100] = 0x632d74696d657374616d70000000000000000000000000000000000000000000
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _398, 64, 11, 0x632d74696d657374616d70000000000000000000000000000000000000000000
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _478 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _482 = mem[_478]
                mem[mem[64] + 4] = _398
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 7
                mem[mem[64] + 100] = 'c-cache' << 200
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _398, 'c-cache'
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not mem[_478]:
                    _509 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _513 = mem[_509]
                    if block.timestamp < block.timestamp:
                        revert with 0, 17
                    if False and _468 > 0:
                        revert with 0, 17
                    if mem[_509] > -1:
                        revert with 0, 17
                    if 0 >= mem[96]:
                        revert with 0, 50
                    if mem[128] > !_417:
                        revert with 0, 17
                    if 0 >= mem[96]:
                        revert with 0, 50
                    mem[128] = mem[128] + _417
                    if 1 >= mem[96]:
                        revert with 0, 50
                    if mem[160] > !_449:
                        revert with 0, 17
                    if 1 >= mem[96]:
                        revert with 0, 50
                    mem[160] = mem[160] + _449
                    if 2 >= mem[96]:
                        revert with 0, 50
                    if mem[192] > !_513:
                        revert with 0, 17
                    if 2 >= mem[96]:
                        revert with 0, 50
                    mem[192] = mem[192] + _513
                else:
                    _505 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _512 = mem[_505]
                    if block.timestamp < _482:
                        revert with 0, 17
                    if block.timestamp - _482 and _468 > -1 / block.timestamp - _482:
                        revert with 0, 17
                    if (block.timestamp * _468) - (_482 * _468) > 0x2d09370d42573603d4e1213067bce3251b64271d3f31ccfa00fe0:
                        revert with 0, 17
                    if mem[_505] > !((10^14 * block.timestamp * _468) - (10^14 * _482 * _468)):
                        revert with 0, 17
                    if 0 >= mem[96]:
                        revert with 0, 50
                    if mem[128] > !_417:
                        revert with 0, 17
                    if 0 >= mem[96]:
                        revert with 0, 50
                    mem[128] = mem[128] + _417
                    if 1 >= mem[96]:
                        revert with 0, 50
                    if mem[160] > !_449:
                        revert with 0, 17
                    if 1 >= mem[96]:
                        revert with 0, 50
                    mem[160] = mem[160] + _449
                    if 2 >= mem[96]:
                        revert with 0, 50
                    if mem[192] > !(_512 + (10^14 * block.timestamp * _468) - (10^14 * _482 * _468)):
                        revert with 0, 17
                    if 2 >= mem[96]:
                        revert with 0, 50
                    mem[192] = mem[192] + _512 + (10^14 * block.timestamp * _468) - (10^14 * _482 * _468)
            else:
                _444 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _448 = mem[_444]
                if block.timestamp < _433:
                    revert with 0, 17
                if block.timestamp - _433 and _426 > -1 / block.timestamp - _433:
                    revert with 0, 17
                if (block.timestamp * _426) - (_433 * _426) > 0x24075f3dceac2b3643e74dc052fd828415e9b8e4328e3d94cd98:
                    revert with 0, 17
                if mem[_444] > !((2 * 10^15 * block.timestamp * _426) - (2 * 10^15 * _433 * _426)):
                    revert with 0, 17
                mem[mem[64] + 4] = _398
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 7
                mem[mem[64] + 100] = 0x632d6c6576656c00000000000000000000000000000000000000000000000000
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _398, 64, 7, 0x632d6c6576656c00000000000000000000000000000000000000000000000000
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _460 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _465 = mem[_460]
                mem[mem[64] + 4] = _398
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 11
                mem[mem[64] + 100] = 0x632d74696d657374616d70000000000000000000000000000000000000000000
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _398, 64, 11, 0x632d74696d657374616d70000000000000000000000000000000000000000000
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _476 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _480 = mem[_476]
                mem[mem[64] + 4] = _398
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 7
                mem[mem[64] + 100] = 'c-cache' << 200
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _398, 'c-cache'
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not mem[_476]:
                    _504 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _511 = mem[_504]
                    if block.timestamp < block.timestamp:
                        revert with 0, 17
                    if False and _465 > 0:
                        revert with 0, 17
                    if mem[_504] > -1:
                        revert with 0, 17
                    if 0 >= mem[96]:
                        revert with 0, 50
                    if mem[128] > !_417:
                        revert with 0, 17
                    if 0 >= mem[96]:
                        revert with 0, 50
                    mem[128] = mem[128] + _417
                    if 1 >= mem[96]:
                        revert with 0, 50
                    if mem[160] > !(_448 + (2 * 10^15 * block.timestamp * _426) - (2 * 10^15 * _433 * _426)):
                        revert with 0, 17
                    if 1 >= mem[96]:
                        revert with 0, 50
                    mem[160] = mem[160] + _448 + (2 * 10^15 * block.timestamp * _426) - (2 * 10^15 * _433 * _426)
                    if 2 >= mem[96]:
                        revert with 0, 50
                    if mem[192] > !_511:
                        revert with 0, 17
                    if 2 >= mem[96]:
                        revert with 0, 50
                    mem[192] = mem[192] + _511
                else:
                    _500 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _508 = mem[_500]
                    if block.timestamp < _480:
                        revert with 0, 17
                    if block.timestamp - _480 and _465 > -1 / block.timestamp - _480:
                        revert with 0, 17
                    if (block.timestamp * _465) - (_480 * _465) > 0x2d09370d42573603d4e1213067bce3251b64271d3f31ccfa00fe0:
                        revert with 0, 17
                    if mem[_500] > !((10^14 * block.timestamp * _465) - (10^14 * _480 * _465)):
                        revert with 0, 17
                    if 0 >= mem[96]:
                        revert with 0, 50
                    if mem[128] > !_417:
                        revert with 0, 17
                    if 0 >= mem[96]:
                        revert with 0, 50
                    mem[128] = mem[128] + _417
                    if 1 >= mem[96]:
                        revert with 0, 50
                    if mem[160] > !(_448 + (2 * 10^15 * block.timestamp * _426) - (2 * 10^15 * _433 * _426)):
                        revert with 0, 17
                    if 1 >= mem[96]:
                        revert with 0, 50
                    mem[160] = mem[160] + _448 + (2 * 10^15 * block.timestamp * _426) - (2 * 10^15 * _433 * _426)
                    if 2 >= mem[96]:
                        revert with 0, 50
                    if mem[192] > !(_508 + (10^14 * block.timestamp * _465) - (10^14 * _480 * _465)):
                        revert with 0, 17
                    if 2 >= mem[96]:
                        revert with 0, 50
                    mem[192] = mem[192] + _508 + (10^14 * block.timestamp * _465) - (10^14 * _480 * _465)
        else:
            _414 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _416 = mem[_414]
            if block.timestamp < _409:
                revert with 0, 17
            if block.timestamp - _409 and _405 > -1 / block.timestamp - _409:
                revert with 0, 17
            if (block.timestamp * _405) - (_409 * _405) > 0x480ebe7b9d58566c87ce9b80a5fb05082bd371c8651c7b299b30:
                revert with 0, 17
            if mem[_414] > !((10^15 * block.timestamp * _405) - (10^15 * _409 * _405)):
                revert with 0, 17
            mem[mem[64] + 4] = _398
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = 7
            mem[mem[64] + 100] = 0x6d2d6c6576656c00000000000000000000000000000000000000000000000000
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args _398, 64, 7, 0x6d2d6c6576656c00000000000000000000000000000000000000000000000000
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _422 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _424 = mem[_422]
            mem[mem[64] + 4] = _398
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = 11
            mem[mem[64] + 100] = 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args _398, 64, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _430 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _432 = mem[_430]
            mem[mem[64] + 4] = _398
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = 7
            mem[mem[64] + 100] = 'm-cache' << 200
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args _398, 'm-cache'
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not mem[_430]:
                _443 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _447 = mem[_443]
                if block.timestamp < block.timestamp:
                    revert with 0, 17
                if False and _424 > 0:
                    revert with 0, 17
                if mem[_443] > -1:
                    revert with 0, 17
                mem[mem[64] + 4] = _398
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 7
                mem[mem[64] + 100] = 0x632d6c6576656c00000000000000000000000000000000000000000000000000
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _398, 64, 7, 0x632d6c6576656c00000000000000000000000000000000000000000000000000
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _459 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _464 = mem[_459]
                mem[mem[64] + 4] = _398
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 11
                mem[mem[64] + 100] = 0x632d74696d657374616d70000000000000000000000000000000000000000000
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _398, 64, 11, 0x632d74696d657374616d70000000000000000000000000000000000000000000
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _475 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _479 = mem[_475]
                mem[mem[64] + 4] = _398
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 7
                mem[mem[64] + 100] = 'c-cache' << 200
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _398, 'c-cache'
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not mem[_475]:
                    _503 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _510 = mem[_503]
                    if block.timestamp < block.timestamp:
                        revert with 0, 17
                    if False and _464 > 0:
                        revert with 0, 17
                    if mem[_503] > -1:
                        revert with 0, 17
                    if 0 >= mem[96]:
                        revert with 0, 50
                    if mem[128] > !(_416 + (10^15 * block.timestamp * _405) - (10^15 * _409 * _405)):
                        revert with 0, 17
                    if 0 >= mem[96]:
                        revert with 0, 50
                    mem[128] = mem[128] + _416 + (10^15 * block.timestamp * _405) - (10^15 * _409 * _405)
                    if 1 >= mem[96]:
                        revert with 0, 50
                    if mem[160] > !_447:
                        revert with 0, 17
                    if 1 >= mem[96]:
                        revert with 0, 50
                    mem[160] = mem[160] + _447
                    if 2 >= mem[96]:
                        revert with 0, 50
                    if mem[192] > !_510:
                        revert with 0, 17
                    if 2 >= mem[96]:
                        revert with 0, 50
                    mem[192] = mem[192] + _510
                else:
                    _499 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _507 = mem[_499]
                    if block.timestamp < _479:
                        revert with 0, 17
                    if block.timestamp - _479 and _464 > -1 / block.timestamp - _479:
                        revert with 0, 17
                    if (block.timestamp * _464) - (_479 * _464) > 0x2d09370d42573603d4e1213067bce3251b64271d3f31ccfa00fe0:
                        revert with 0, 17
                    if mem[_499] > !((10^14 * block.timestamp * _464) - (10^14 * _479 * _464)):
                        revert with 0, 17
                    if 0 >= mem[96]:
                        revert with 0, 50
                    if mem[128] > !(_416 + (10^15 * block.timestamp * _405) - (10^15 * _409 * _405)):
                        revert with 0, 17
                    if 0 >= mem[96]:
                        revert with 0, 50
                    mem[128] = mem[128] + _416 + (10^15 * block.timestamp * _405) - (10^15 * _409 * _405)
                    if 1 >= mem[96]:
                        revert with 0, 50
                    if mem[160] > !_447:
                        revert with 0, 17
                    if 1 >= mem[96]:
                        revert with 0, 50
                    mem[160] = mem[160] + _447
                    if 2 >= mem[96]:
                        revert with 0, 50
                    if mem[192] > !(_507 + (10^14 * block.timestamp * _464) - (10^14 * _479 * _464)):
                        revert with 0, 17
                    if 2 >= mem[96]:
                        revert with 0, 50
                    mem[192] = mem[192] + _507 + (10^14 * block.timestamp * _464) - (10^14 * _479 * _464)
            else:
                _441 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _445 = mem[_441]
                if block.timestamp < _432:
                    revert with 0, 17
                if block.timestamp - _432 and _424 > -1 / block.timestamp - _432:
                    revert with 0, 17
                if (block.timestamp * _424) - (_432 * _424) > 0x24075f3dceac2b3643e74dc052fd828415e9b8e4328e3d94cd98:
                    revert with 0, 17
                if mem[_441] > !((2 * 10^15 * block.timestamp * _424) - (2 * 10^15 * _432 * _424)):
                    revert with 0, 17
                mem[mem[64] + 4] = _398
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 7
                mem[mem[64] + 100] = 0x632d6c6576656c00000000000000000000000000000000000000000000000000
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _398, 64, 7, 0x632d6c6576656c00000000000000000000000000000000000000000000000000
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _456 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _461 = mem[_456]
                mem[mem[64] + 4] = _398
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 11
                mem[mem[64] + 100] = 0x632d74696d657374616d70000000000000000000000000000000000000000000
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _398, 64, 11, 0x632d74696d657374616d70000000000000000000000000000000000000000000
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _473 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _477 = mem[_473]
                mem[mem[64] + 4] = _398
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 7
                mem[mem[64] + 100] = 'c-cache' << 200
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _398, 'c-cache'
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not mem[_473]:
                    _498 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _506 = mem[_498]
                    if block.timestamp < block.timestamp:
                        revert with 0, 17
                    if False and _461 > 0:
                        revert with 0, 17
                    if mem[_498] > -1:
                        revert with 0, 17
                    if 0 >= mem[96]:
                        revert with 0, 50
                    if mem[128] > !(_416 + (10^15 * block.timestamp * _405) - (10^15 * _409 * _405)):
                        revert with 0, 17
                    if 0 >= mem[96]:
                        revert with 0, 50
                    mem[128] = mem[128] + _416 + (10^15 * block.timestamp * _405) - (10^15 * _409 * _405)
                    if 1 >= mem[96]:
                        revert with 0, 50
                    if mem[160] > !(_445 + (2 * 10^15 * block.timestamp * _424) - (2 * 10^15 * _432 * _424)):
                        revert with 0, 17
                    if 1 >= mem[96]:
                        revert with 0, 50
                    mem[160] = mem[160] + _445 + (2 * 10^15 * block.timestamp * _424) - (2 * 10^15 * _432 * _424)
                    if 2 >= mem[96]:
                        revert with 0, 50
                    if mem[192] > !_506:
                        revert with 0, 17
                    if 2 >= mem[96]:
                        revert with 0, 50
                    mem[192] = mem[192] + _506
                else:
                    _494 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _502 = mem[_494]
                    if block.timestamp < _477:
                        revert with 0, 17
                    if block.timestamp - _477 and _461 > -1 / block.timestamp - _477:
                        revert with 0, 17
                    if (block.timestamp * _461) - (_477 * _461) > 0x2d09370d42573603d4e1213067bce3251b64271d3f31ccfa00fe0:
                        revert with 0, 17
                    if mem[_494] > !((10^14 * block.timestamp * _461) - (10^14 * _477 * _461)):
                        revert with 0, 17
                    if 0 >= mem[96]:
                        revert with 0, 50
                    if mem[128] > !(_416 + (10^15 * block.timestamp * _405) - (10^15 * _409 * _405)):
                        revert with 0, 17
                    if 0 >= mem[96]:
                        revert with 0, 50
                    mem[128] = mem[128] + _416 + (10^15 * block.timestamp * _405) - (10^15 * _409 * _405)
                    if 1 >= mem[96]:
                        revert with 0, 50
                    if mem[160] > !(_445 + (2 * 10^15 * block.timestamp * _424) - (2 * 10^15 * _432 * _424)):
                        revert with 0, 17
                    if 1 >= mem[96]:
                        revert with 0, 50
                    mem[160] = mem[160] + _445 + (2 * 10^15 * block.timestamp * _424) - (2 * 10^15 * _432 * _424)
                    if 2 >= mem[96]:
                        revert with 0, 50
                    if mem[192] > !(_502 + (10^14 * block.timestamp * _461) - (10^14 * _477 * _461)):
                        revert with 0, 17
                    if 2 >= mem[96]:
                        revert with 0, 50
                    mem[192] = mem[192] + _502 + (10^14 * block.timestamp * _461) - (10^14 * _477 * _461)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function sub_92789b02(?) payable {
    require calldata.size - 4 >= 32
    if bool(isSaleStarted) != 1:
        revert with 0, 'Sale not enabled'
    if stor5 < 1111:
        if arg1 > 0x9392ee8e921d5d073aff322e62439fcf32d7f344649470f90:
            revert with 0, 17
        if msg.value < 2 * 10^18 * arg1:
            revert with 0, 'Wrong fee'
        if arg1 > !stor5:
            revert with 0, 17
        if arg1 + stor5 > 8888:
            revert with 0, 'Not enough planets left'
        if arg1 <= 0:
            revert with 0, 'Amount should be >0'
        if arg1 > 40:
            revert with 0, 'Amount should be <=40'
        mem[100] = 32
        mem[132] = 14
        mem[164] = 0x6d65746164617461536574746572000000000000000000000000000000000000
        require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
        staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                gas gas_remaining wei
               args 'metadataSetter'
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        idx = 0
        while idx < arg1:
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            call 0x0c3b29321611736341609022c23e981ac56e7f96.0x3db12d03 with:
                 gas gas_remaining wei
                args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _218 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _226 = mem[_218]
            mem[mem[64] + 4] = mem[_218]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x4e4f31ed with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], 96, 1, 7, 0x732d6c6576656c00000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x4e4f31ed with:
                 gas gas_remaining wei
                args _226, 96, 1, 7, 0x6d2d6c6576656c00000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x4e4f31ed with:
                 gas gas_remaining wei
                args _226, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x4e4f31ed00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _226
            mem[mem[64] + 36] = 96
            mem[mem[64] + 100] = 11
            mem[mem[64] + 132] = 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
            mem[mem[64] + 68] = block.timestamp
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x4e4f31ed with:
                 gas gas_remaining wei
                args _226, 96, block.timestamp, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if stor5 < 2222:
            if arg1 > 0x760f253edb4ab0d29598f4f1e83619728f13290383a9f3fa7:
                revert with 0, 17
            if msg.value < 25 * 10^17 * arg1:
                revert with 0, 'Wrong fee'
            if arg1 > !stor5:
                revert with 0, 17
            if arg1 + stor5 > 8888:
                revert with 0, 'Not enough planets left'
            if arg1 <= 0:
                revert with 0, 'Amount should be >0'
            if arg1 > 40:
                revert with 0, 'Amount should be <=40'
            mem[100] = 32
            mem[132] = 14
            mem[164] = 0x6d65746164617461536574746572000000000000000000000000000000000000
            require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
            staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                    gas gas_remaining wei
                   args 'metadataSetter'
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            idx = 0
            while idx < arg1:
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                call 0x0c3b29321611736341609022c23e981ac56e7f96.0x3db12d03 with:
                     gas gas_remaining wei
                    args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _217 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _225 = mem[_217]
                mem[mem[64] + 4] = mem[_217]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x4e4f31ed with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], 96, 1, 7, 0x732d6c6576656c00000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x4e4f31ed with:
                     gas gas_remaining wei
                    args _225, 96, 1, 7, 0x6d2d6c6576656c00000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x4e4f31ed with:
                     gas gas_remaining wei
                    args _225, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x4e4f31ed00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _225
                mem[mem[64] + 36] = 96
                mem[mem[64] + 100] = 11
                mem[mem[64] + 132] = 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                mem[mem[64] + 68] = block.timestamp
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x4e4f31ed with:
                     gas gas_remaining wei
                    args _225, 96, block.timestamp, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if stor5 < 3333:
                if arg1 > 0x6261f45f0c13935a2754cc1eec2d1534cc8ff782edb84b50b:
                    revert with 0, 17
                if msg.value < 3 * 10^18 * arg1:
                    revert with 0, 'Wrong fee'
                if arg1 > !stor5:
                    revert with 0, 17
                if arg1 + stor5 > 8888:
                    revert with 0, 'Not enough planets left'
                if arg1 <= 0:
                    revert with 0, 'Amount should be >0'
                if arg1 > 40:
                    revert with 0, 'Amount should be <=40'
                mem[100] = 32
                mem[132] = 14
                mem[164] = 0x6d65746164617461536574746572000000000000000000000000000000000000
                require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
                staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                        gas gas_remaining wei
                       args 'metadataSetter'
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                idx = 0
                while idx < arg1:
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                    call 0x0c3b29321611736341609022c23e981ac56e7f96.0x3db12d03 with:
                         gas gas_remaining wei
                        args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _216 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _224 = mem[_216]
                    mem[mem[64] + 4] = mem[_216]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], 96, 1, 7, 0x732d6c6576656c00000000000000000000000000000000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                         gas gas_remaining wei
                        args _224, 96, 1, 7, 0x6d2d6c6576656c00000000000000000000000000000000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                         gas gas_remaining wei
                        args _224, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x4e4f31ed00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _224
                    mem[mem[64] + 36] = 96
                    mem[mem[64] + 100] = 11
                    mem[mem[64] + 132] = 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                    mem[mem[64] + 68] = block.timestamp
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                         gas gas_remaining wei
                        args _224, 96, block.timestamp, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if stor5 < 4444:
                    if arg1 > 0x5453f608537e7e4d4648aef5ef02122d419ff8b95e0bae452:
                        revert with 0, 17
                    if msg.value < 35 * 10^17 * arg1:
                        revert with 0, 'Wrong fee'
                    if arg1 > !stor5:
                        revert with 0, 17
                    if arg1 + stor5 > 8888:
                        revert with 0, 'Not enough planets left'
                    if arg1 <= 0:
                        revert with 0, 'Amount should be >0'
                    if arg1 > 40:
                        revert with 0, 'Amount should be <=40'
                    mem[100] = 32
                    mem[132] = 14
                    mem[164] = 0x6d65746164617461536574746572000000000000000000000000000000000000
                    require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
                    staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                            gas gas_remaining wei
                           args 'metadataSetter'
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    idx = 0
                    while idx < arg1:
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                        call 0x0c3b29321611736341609022c23e981ac56e7f96.0x3db12d03 with:
                             gas gas_remaining wei
                            args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _215 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _223 = mem[_215]
                        mem[mem[64] + 4] = mem[_215]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 96, 1, 7, 0x732d6c6576656c00000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args _223, 96, 1, 7, 0x6d2d6c6576656c00000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args _223, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x4e4f31ed00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _223
                        mem[mem[64] + 36] = 96
                        mem[mem[64] + 100] = 11
                        mem[mem[64] + 132] = 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                        mem[mem[64] + 68] = block.timestamp
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args _223, 96, block.timestamp, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if stor5 < 5555:
                        if arg1 > 0x49c97747490eae839d7f99173121cfe7996bf9a2324a387c8:
                            revert with 0, 17
                        if msg.value < 4 * 10^18 * arg1:
                            revert with 0, 'Wrong fee'
                        if arg1 > !stor5:
                            revert with 0, 17
                        if arg1 + stor5 > 8888:
                            revert with 0, 'Not enough planets left'
                        if arg1 <= 0:
                            revert with 0, 'Amount should be >0'
                        if arg1 > 40:
                            revert with 0, 'Amount should be <=40'
                        mem[100] = 32
                        mem[132] = 14
                        mem[164] = 0x6d65746164617461536574746572000000000000000000000000000000000000
                        require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
                        staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                                gas gas_remaining wei
                               args 'metadataSetter'
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        idx = 0
                        while idx < arg1:
                            mem[mem[64] + 4] = msg.sender
                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                            call 0x0c3b29321611736341609022c23e981ac56e7f96.0x3db12d03 with:
                                 gas gas_remaining wei
                                args msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _214 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _222 = mem[_214]
                            mem[mem[64] + 4] = mem[_214]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], 96, 1, 7, 0x732d6c6576656c00000000000000000000000000000000000000000000000000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args _222, 96, 1, 7, 0x6d2d6c6576656c00000000000000000000000000000000000000000000000000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args _222, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x4e4f31ed00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _222
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 100] = 11
                            mem[mem[64] + 132] = 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                            mem[mem[64] + 68] = block.timestamp
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args _222, 96, block.timestamp, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if stor5 < 6666:
                            if '>s6(qB' and arg1 > -1 / '>s6(qB':
                                revert with 0, 17
                            if msg.value < '>s6(qB' * arg1:
                                revert with 0, 'Wrong fee'
                            if arg1 > !stor5:
                                revert with 0, 17
                            if arg1 + stor5 > 8888:
                                revert with 0, 'Not enough planets left'
                            if arg1 <= 0:
                                revert with 0, 'Amount should be >0'
                            if arg1 > 40:
                                revert with 0, 'Amount should be <=40'
                            mem[100] = 32
                            mem[132] = 14
                            mem[164] = 0x6d65746164617461536574746572000000000000000000000000000000000000
                            require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
                            staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                                    gas gas_remaining wei
                                   args 'metadataSetter'
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            idx = 0
                            while idx < arg1:
                                mem[mem[64] + 4] = msg.sender
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                call 0x0c3b29321611736341609022c23e981ac56e7f96.0x3db12d03 with:
                                     gas gas_remaining wei
                                    args msg.sender
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _213 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _221 = mem[_213]
                                mem[mem[64] + 4] = mem[_213]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], 96, 1, 7, 0x732d6c6576656c00000000000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args _221, 96, 1, 7, 0x6d2d6c6576656c00000000000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args _221, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x4e4f31ed00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _221
                                mem[mem[64] + 36] = 96
                                mem[mem[64] + 100] = 11
                                mem[mem[64] + 132] = 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                                mem[mem[64] + 68] = block.timestamp
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args _221, 96, block.timestamp, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if stor5 >= 7777:
                                if arg1 > 0x35a9cb1c92393919e6e86f56af5e68a86f945875f6076ee63:
                                    revert with 0, 17
                                if msg.value < 55 * 10^17 * arg1:
                                    revert with 0, 'Wrong fee'
                                if arg1 > !stor5:
                                    revert with 0, 17
                                if arg1 + stor5 > 8888:
                                    revert with 0, 'Not enough planets left'
                                if arg1 <= 0:
                                    revert with 0, 'Amount should be >0'
                                if arg1 > 40:
                                    revert with 0, 'Amount should be <=40'
                                mem[100] = 32
                                mem[132] = 14
                                mem[164] = 0x6d65746164617461536574746572000000000000000000000000000000000000
                                require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
                                staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                                        gas gas_remaining wei
                                       args 'metadataSetter'
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                idx = 0
                                while idx < arg1:
                                    mem[mem[64] + 4] = msg.sender
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    call 0x0c3b29321611736341609022c23e981ac56e7f96.0x3db12d03 with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _211 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _219 = mem[_211]
                                    mem[mem[64] + 4] = mem[_211]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 96, 1, 7, 0x732d6c6576656c00000000000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args _219, 96, 1, 7, 0x6d2d6c6576656c00000000000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args _219, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x4e4f31ed00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _219
                                    mem[mem[64] + 36] = 96
                                    mem[mem[64] + 100] = 11
                                    mem[mem[64] + 132] = 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                                    mem[mem[64] + 68] = block.timestamp
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args _219, 96, block.timestamp, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if arg1 > 0x3b07929f6da558694acc7a78f41b0cb947899481c1d4f9fd3:
                                    revert with 0, 17
                                if msg.value < 5 * 10^18 * arg1:
                                    revert with 0, 'Wrong fee'
                                if arg1 > !stor5:
                                    revert with 0, 17
                                if arg1 + stor5 > 8888:
                                    revert with 0, 'Not enough planets left'
                                if arg1 <= 0:
                                    revert with 0, 'Amount should be >0'
                                if arg1 > 40:
                                    revert with 0, 'Amount should be <=40'
                                mem[100] = 32
                                mem[132] = 14
                                mem[164] = 0x6d65746164617461536574746572000000000000000000000000000000000000
                                require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
                                staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                                        gas gas_remaining wei
                                       args 'metadataSetter'
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                idx = 0
                                while idx < arg1:
                                    mem[mem[64] + 4] = msg.sender
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    call 0x0c3b29321611736341609022c23e981ac56e7f96.0x3db12d03 with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _212 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _220 = mem[_212]
                                    mem[mem[64] + 4] = mem[_212]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], 96, 1, 7, 0x732d6c6576656c00000000000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args _220, 96, 1, 7, 0x6d2d6c6576656c00000000000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args _220, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x4e4f31ed00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _220
                                    mem[mem[64] + 36] = 96
                                    mem[mem[64] + 100] = 11
                                    mem[mem[64] + 132] = 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                                    mem[mem[64] + 68] = block.timestamp
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args _220, 96, block.timestamp, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
    if stor5 > !arg1:
        revert with 0, 17
    stor5 += arg1
}

function sub_b589cae6(?) {
    require calldata.size - 4 >= 96
    if not arg1:
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args 0, uint32(arg3), 64, 7, 0x732d6c6576656c00000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args arg3, 64, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args arg3, 's-cache'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if block.timestamp < block.timestamp:
                revert with 0, 17
            if False and ext_call.return_data[0] > 0:
                revert with 0, 17
            if ext_call.return_data[0] > -1:
                revert with 0, 17
            require ext_call.return_data[0] >= arg2
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                    gas gas_remaining wei
                   args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require msg.sender == ext_call.return_data[12 len 20]
            require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
            staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                    gas gas_remaining wei
                   args 'metadataSetter'
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not arg1:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x4e4f31ed with:
                     gas gas_remaining wei
                    args arg3, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] < arg2:
                    revert with 0, 17
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x4e4f31ed with:
                     gas gas_remaining wei
                    args arg3, 's-cache', ext_call.return_data[0] - arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                        gas gas_remaining wei
                       args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
                call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if 1 == arg1:
                    if not arg1:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args arg3, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ext_call.return_data[0] < arg2:
                            revert with 0, 17
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args arg3, 's-cache', ext_call.return_data[0] - arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                gas gas_remaining wei
                               args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                        call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if 1 == arg1:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, 96, block.timestamp, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0] < arg2:
                                revert with 0, 17
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, 'm-cache', ext_call.return_data[0] - arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                            call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if 2 == arg1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, 96, block.timestamp, 11, 0x632d74696d657374616d70000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] < arg2:
                                    revert with 0, 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, 'c-cache', ext_call.return_data[0] - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if arg1 != 2:
                        if not arg1:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0] < arg2:
                                revert with 0, 17
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, 's-cache', ext_call.return_data[0] - arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(0)
                            call 0x0.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if 1 == arg1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, 96, block.timestamp, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] < arg2:
                                    revert with 0, 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, 'm-cache', ext_call.return_data[0] - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0)
                                call 0x0.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if 2 == arg1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 96, block.timestamp, 11, 0x632d74696d657374616d70000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < arg2:
                                        revert with 0, 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 'c-cache', ext_call.return_data[0] - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0)
                                    call 0x0.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if not arg1:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0] < arg2:
                                revert with 0, 17
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, 's-cache', ext_call.return_data[0] - arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                            call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if 1 == arg1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, 96, block.timestamp, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] < arg2:
                                    revert with 0, 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, 'm-cache', ext_call.return_data[0] - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if 2 == arg1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 96, block.timestamp, 11, 0x632d74696d657374616d70000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < arg2:
                                        revert with 0, 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 'c-cache', ext_call.return_data[0] - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                    call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if block.timestamp < ext_call.return_data[0]:
                revert with 0, 17
            if block.timestamp - ext_call.return_data[0] and ext_call.return_data[0] > -1 / block.timestamp - ext_call.return_data[0]:
                revert with 0, 17
            if (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) > 0x480ebe7b9d58566c87ce9b80a5fb05082bd371c8651c7b299b30:
                revert with 0, 17
            if ext_call.return_data[0] > !((10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0])):
                revert with 0, 17
            require ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) >= arg2
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                    gas gas_remaining wei
                   args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require msg.sender == ext_call.return_data[12 len 20]
            require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
            staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                    gas gas_remaining wei
                   args 'metadataSetter'
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not arg1:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x4e4f31ed with:
                     gas gas_remaining wei
                    args arg3, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                    revert with 0, 17
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x4e4f31ed with:
                     gas gas_remaining wei
                    args arg3, 's-cache', ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                        gas gas_remaining wei
                       args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
                call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if 1 == arg1:
                    if not arg1:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args arg3, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                            revert with 0, 17
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args arg3, 's-cache', ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                gas gas_remaining wei
                               args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                        call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if 1 == arg1:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, 96, block.timestamp, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                revert with 0, 17
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, 'm-cache', ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                            call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if 2 == arg1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, 96, block.timestamp, 11, 0x632d74696d657374616d70000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                    revert with 0, 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, 'c-cache', ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if arg1 != 2:
                        if not arg1:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                revert with 0, 17
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, 's-cache', ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(0)
                            call 0x0.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if 1 == arg1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, 96, block.timestamp, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                    revert with 0, 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, 'm-cache', ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0)
                                call 0x0.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if 2 == arg1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 96, block.timestamp, 11, 0x632d74696d657374616d70000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                        revert with 0, 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 'c-cache', ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0)
                                    call 0x0.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if not arg1:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                revert with 0, 17
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, 's-cache', ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                            call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if 1 == arg1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, 96, block.timestamp, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                    revert with 0, 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, 'm-cache', ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if 2 == arg1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 96, block.timestamp, 11, 0x632d74696d657374616d70000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                        revert with 0, 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 'c-cache', ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                    call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if 1 == arg1:
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args 0, uint32(arg3), 64, 7, 0x6d2d6c6576656c00000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args arg3, 64, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args arg3, 'm-cache'
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if block.timestamp < block.timestamp:
                    revert with 0, 17
                if False and ext_call.return_data[0] > 0:
                    revert with 0, 17
                if ext_call.return_data[0] > -1:
                    revert with 0, 17
                require ext_call.return_data[0] >= arg2
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                        gas gas_remaining wei
                       args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require msg.sender == ext_call.return_data[12 len 20]
                require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
                staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                        gas gas_remaining wei
                       args 'metadataSetter'
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not arg1:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                         gas gas_remaining wei
                        args arg3, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ext_call.return_data[0] < arg2:
                        revert with 0, 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                         gas gas_remaining wei
                        args arg3, 's-cache', ext_call.return_data[0] - arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                            gas gas_remaining wei
                           args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
                    call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if 1 == arg1:
                        if not arg1:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0] < arg2:
                                revert with 0, 17
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, 's-cache', ext_call.return_data[0] - arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                            call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if 1 == arg1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, 96, block.timestamp, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] < arg2:
                                    revert with 0, 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, 'm-cache', ext_call.return_data[0] - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if 2 == arg1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 96, block.timestamp, 11, 0x632d74696d657374616d70000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < arg2:
                                        revert with 0, 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 'c-cache', ext_call.return_data[0] - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                    call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if arg1 != 2:
                            if not arg1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] < arg2:
                                    revert with 0, 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, 's-cache', ext_call.return_data[0] - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0)
                                call 0x0.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if 1 == arg1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 96, block.timestamp, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < arg2:
                                        revert with 0, 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 'm-cache', ext_call.return_data[0] - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0)
                                    call 0x0.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if 2 == arg1:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, 96, block.timestamp, 11, 0x632d74696d657374616d70000000000000000000000000000000000000000000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[0] < arg2:
                                            revert with 0, 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, 'c-cache', ext_call.return_data[0] - arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0)
                                        call 0x0.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if not arg1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] < arg2:
                                    revert with 0, 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, 's-cache', ext_call.return_data[0] - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if 1 == arg1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 96, block.timestamp, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < arg2:
                                        revert with 0, 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 'm-cache', ext_call.return_data[0] - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                    call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if 2 == arg1:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, 96, block.timestamp, 11, 0x632d74696d657374616d70000000000000000000000000000000000000000000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[0] < arg2:
                                            revert with 0, 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, 'c-cache', ext_call.return_data[0] - arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                        call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if block.timestamp < ext_call.return_data[0]:
                    revert with 0, 17
                if block.timestamp - ext_call.return_data[0] and ext_call.return_data[0] > -1 / block.timestamp - ext_call.return_data[0]:
                    revert with 0, 17
                if (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) > 0x24075f3dceac2b3643e74dc052fd828415e9b8e4328e3d94cd98:
                    revert with 0, 17
                if ext_call.return_data[0] > !((2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0])):
                    revert with 0, 17
                require ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) >= arg2
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                        gas gas_remaining wei
                       args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require msg.sender == ext_call.return_data[12 len 20]
                require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
                staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                        gas gas_remaining wei
                       args 'metadataSetter'
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not arg1:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                         gas gas_remaining wei
                        args arg3, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                        revert with 0, 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                         gas gas_remaining wei
                        args arg3, 's-cache', ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                            gas gas_remaining wei
                           args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
                    call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if 1 == arg1:
                        if not arg1:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                revert with 0, 17
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, 's-cache', ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                            call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if 1 == arg1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, 96, block.timestamp, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                    revert with 0, 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, 'm-cache', ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if 2 == arg1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 96, block.timestamp, 11, 0x632d74696d657374616d70000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                        revert with 0, 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 'c-cache', ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                    call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if arg1 != 2:
                            if not arg1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                    revert with 0, 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, 's-cache', ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0)
                                call 0x0.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if 1 == arg1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 96, block.timestamp, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                        revert with 0, 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 'm-cache', ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0)
                                    call 0x0.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if 2 == arg1:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, 96, block.timestamp, 11, 0x632d74696d657374616d70000000000000000000000000000000000000000000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                            revert with 0, 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, 'c-cache', ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0)
                                        call 0x0.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if not arg1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                    revert with 0, 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, 's-cache', ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if 1 == arg1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 96, block.timestamp, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                        revert with 0, 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 'm-cache', ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                    call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if 2 == arg1:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, 96, block.timestamp, 11, 0x632d74696d657374616d70000000000000000000000000000000000000000000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                            revert with 0, 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, 'c-cache', ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                        call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if arg1 != 2:
                require 0 >= arg2
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                        gas gas_remaining wei
                       args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require msg.sender == ext_call.return_data[12 len 20]
                require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
                staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                        gas gas_remaining wei
                       args 'metadataSetter'
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not arg1:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                         gas gas_remaining wei
                        args arg3, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 < arg2:
                        revert with 0, 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                         gas gas_remaining wei
                        args arg3, 's-cache', -arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                            gas gas_remaining wei
                           args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
                    call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if 1 == arg1:
                        if not arg1:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 < arg2:
                                revert with 0, 17
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, 's-cache', -arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                            call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if 1 == arg1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, 96, block.timestamp, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 < arg2:
                                    revert with 0, 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, 'm-cache', -arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if 2 == arg1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 96, block.timestamp, 11, 0x632d74696d657374616d70000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 < arg2:
                                        revert with 0, 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 'c-cache', -arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                    call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if arg1 != 2:
                            if not arg1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 < arg2:
                                    revert with 0, 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, 's-cache', -arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0)
                                call 0x0.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if 1 == arg1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 96, block.timestamp, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 < arg2:
                                        revert with 0, 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 'm-cache', -arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0)
                                    call 0x0.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if 2 == arg1:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, 96, block.timestamp, 11, 0x632d74696d657374616d70000000000000000000000000000000000000000000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if 0 < arg2:
                                            revert with 0, 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, 'c-cache', -arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0)
                                        call 0x0.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if not arg1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 < arg2:
                                    revert with 0, 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, 's-cache', -arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if 1 == arg1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 96, block.timestamp, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 < arg2:
                                        revert with 0, 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 'm-cache', -arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                    call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if 2 == arg1:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, 96, block.timestamp, 11, 0x632d74696d657374616d70000000000000000000000000000000000000000000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if 0 < arg2:
                                            revert with 0, 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, 'c-cache', -arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                        call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args 0, uint32(arg3), 64, 7, 0x632d6c6576656c00000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args arg3, 64, 11, 0x632d74696d657374616d70000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args arg3, 'c-cache'
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if block.timestamp < block.timestamp:
                        revert with 0, 17
                    if False and ext_call.return_data[0] > 0:
                        revert with 0, 17
                    if ext_call.return_data[0] > -1:
                        revert with 0, 17
                    require ext_call.return_data[0] >= arg2
                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                            gas gas_remaining wei
                           args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require msg.sender == ext_call.return_data[12 len 20]
                    require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
                    staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                            gas gas_remaining wei
                           args 'metadataSetter'
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if not arg1:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args arg3, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ext_call.return_data[0] < arg2:
                            revert with 0, 17
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args arg3, 's-cache', ext_call.return_data[0] - arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                gas gas_remaining wei
                               args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
                        call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if 1 == arg1:
                            if not arg1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] < arg2:
                                    revert with 0, 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, 's-cache', ext_call.return_data[0] - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if 1 == arg1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 96, block.timestamp, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < arg2:
                                        revert with 0, 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 'm-cache', ext_call.return_data[0] - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                    call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if 2 == arg1:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, 96, block.timestamp, 11, 0x632d74696d657374616d70000000000000000000000000000000000000000000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[0] < arg2:
                                            revert with 0, 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, 'c-cache', ext_call.return_data[0] - arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                        call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if arg1 != 2:
                                if not arg1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < arg2:
                                        revert with 0, 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 's-cache', ext_call.return_data[0] - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0)
                                    call 0x0.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if 1 == arg1:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, 96, block.timestamp, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[0] < arg2:
                                            revert with 0, 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, 'm-cache', ext_call.return_data[0] - arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0)
                                        call 0x0.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    else:
                                        if 2 == arg1:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                                 gas gas_remaining wei
                                                args arg3, 96, block.timestamp, 11, 0x632d74696d657374616d70000000000000000000000000000000000000000000
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if ext_call.return_data[0] < arg2:
                                                revert with 0, 17
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                                 gas gas_remaining wei
                                                args arg3, 'c-cache', ext_call.return_data[0] - arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(0)
                                            call 0x0.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if not arg1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < arg2:
                                        revert with 0, 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 's-cache', ext_call.return_data[0] - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                    call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if 1 == arg1:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, 96, block.timestamp, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[0] < arg2:
                                            revert with 0, 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, 'm-cache', ext_call.return_data[0] - arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                        call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    else:
                                        if 2 == arg1:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                                 gas gas_remaining wei
                                                args arg3, 96, block.timestamp, 11, 0x632d74696d657374616d70000000000000000000000000000000000000000000
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if ext_call.return_data[0] < arg2:
                                                revert with 0, 17
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                                 gas gas_remaining wei
                                                args arg3, 'c-cache', ext_call.return_data[0] - arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                            call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if block.timestamp < ext_call.return_data[0]:
                        revert with 0, 17
                    if block.timestamp - ext_call.return_data[0] and ext_call.return_data[0] > -1 / block.timestamp - ext_call.return_data[0]:
                        revert with 0, 17
                    if (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) > 0x2d09370d42573603d4e1213067bce3251b64271d3f31ccfa00fe0:
                        revert with 0, 17
                    if ext_call.return_data[0] > !((10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0])):
                        revert with 0, 17
                    require ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) >= arg2
                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                            gas gas_remaining wei
                           args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require msg.sender == ext_call.return_data[12 len 20]
                    require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
                    staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                            gas gas_remaining wei
                           args 'metadataSetter'
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if not arg1:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args arg3, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                            revert with 0, 17
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args arg3, 's-cache', ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                gas gas_remaining wei
                               args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
                        call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if 1 == arg1:
                            if not arg1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                    revert with 0, 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, 's-cache', ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if 1 == arg1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 96, block.timestamp, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                        revert with 0, 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 'm-cache', ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                    call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if 2 == arg1:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, 96, block.timestamp, 11, 0x632d74696d657374616d70000000000000000000000000000000000000000000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                            revert with 0, 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, 'c-cache', ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                        call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if arg1 != 2:
                                if not arg1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                        revert with 0, 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 's-cache', ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0)
                                    call 0x0.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if 1 == arg1:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, 96, block.timestamp, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                            revert with 0, 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, 'm-cache', ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0)
                                        call 0x0.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    else:
                                        if 2 == arg1:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                                 gas gas_remaining wei
                                                args arg3, 96, block.timestamp, 11, 0x632d74696d657374616d70000000000000000000000000000000000000000000
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                                revert with 0, 17
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                                 gas gas_remaining wei
                                                args arg3, 'c-cache', ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(0)
                                            call 0x0.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if not arg1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 96, block.timestamp, 11, 0x732d74696d657374616d70000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                        revert with 0, 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, 's-cache', ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                    call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if 1 == arg1:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, 96, block.timestamp, 11, 0x6d2d74696d657374616d70000000000000000000000000000000000000000000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                            revert with 0, 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, 'm-cache', ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                        call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    else:
                                        if 2 == arg1:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                                 gas gas_remaining wei
                                                args arg3, 96, block.timestamp, 11, 0x632d74696d657374616d70000000000000000000000000000000000000000000
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                                revert with 0, 17
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                                 gas gas_remaining wei
                                                args arg3, 'c-cache', ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.ownerOf(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                            call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}



}
