contract main {




// =====================  Runtime code  =====================


#
#  - sub_1ff959e3(?)
#  - sub_54996637(?)
#  - harvestAll()
#  - sub_9bc40787(?)
#
uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 168
uint128 stor0; offset 160
address owner;
uint256 stor5;
uint256 stor6;

function isSaleStarted() {
    return bool(uint8(stor0.field_160))
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
    require arg1 == arg1
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
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == arg2
    require msg.sender == owner
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = 3
    stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg2
}

function sub_67ed5587(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == arg2
    require msg.sender == owner
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = 2
    stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg2
}

function sub_dd35ef90(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == arg2
    require msg.sender == owner
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = 1
    stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg2
}

function sub_d15c76bb(?) {
    require msg.sender == owner
    require not uint8(stor0.field_168)
    mem[100] = 32
    mem[132] = 14
    mem[164] = 'metadataSetter'
    require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
    staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
            gas gas_remaining wei
           args Array(len=14, data='metadataSetter')
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
        _28 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _31 = mem[_28]
        require mem[_28] == mem[_28]
        mem[mem[64] + 4] = mem[_28]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x4e4f31ed with:
             gas gas_remaining wei
            args mem[mem[64] + 4], Array(len=7, data='s-level'), 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x4e4f31ed with:
             gas gas_remaining wei
            args _31, Array(len=7, data='m-level'), 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x4e4f31ed with:
             gas gas_remaining wei
            args _31, Array(len=11, data='s-timestamp'), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x4e4f31ed00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _31
        mem[mem[64] + 36] = 96
        mem[mem[64] + 100] = 11
        mem[mem[64] + 132] = 'm-timestamp'
        mem[mem[64] + 68] = block.timestamp
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x4e4f31ed with:
             gas gas_remaining wei
            args _31, Array(len=11, data='m-timestamp'), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _18 = mem[64]
    mem[mem[64]] = 10
    mem[64] = mem[64] + 352
    if 0 >= mem[_18]:
        revert with 'NH{q', 50
    mem[_18 + 32] = 0x7cac43966e94f81db40b8de5659a95c7e0d0c5b5
    if 1 >= mem[_18]:
        revert with 'NH{q', 50
    mem[_18 + 64] = 0x542ed36e85f8d98854a735e7143701ee8e5af1f
    if 2 >= mem[_18]:
        revert with 'NH{q', 50
    mem[_18 + 96] = 0xf16858923a395f425e2b680234a37eed4924b2f2
    if 3 >= mem[_18]:
        revert with 'NH{q', 50
    mem[_18 + 128] = 0xaac9dff40649a485a48096c5351be5bf59e1777f
    if 4 >= mem[_18]:
        revert with 'NH{q', 50
    mem[_18 + 160] = 0x7d9e1603dccc950d2ff73f3eaf79f84dc4b91fb5
    if 5 >= mem[_18]:
        revert with 'NH{q', 50
    mem[_18 + 192] = 0x35b5c80bbb3c9930d0e39cf2969d72e551216a32
    if 6 >= mem[_18]:
        revert with 'NH{q', 50
    mem[_18 + 224] = 0xe4d9dface119253f7c3ceb0ff75f092b5637dad
    if 7 >= mem[_18]:
        revert with 'NH{q', 50
    mem[_18 + 256] = 0x7fb3993a2fbf49ee4b93dbc0a079f2622825e51b
    if 8 >= mem[_18]:
        revert with 'NH{q', 50
    mem[_18 + 288] = 0xea4f70624a37b811100f58658d79d6df2eea6254
    if 9 >= mem[_18]:
        revert with 'NH{q', 50
    mem[_18 + 320] = 0x8c34d3b77a3412e8ce9bd7734ea15cc7c4f53771
    _55 = mem[_18]
    idx = 0
    while idx < _55:
        if idx >= mem[_18]:
            revert with 'NH{q', 50
        _57 = mem[(32 * idx) + _18 + 32]
        mem[mem[64] + 4] = mem[(32 * idx) + _18 + 44 len 20]
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
        require mem[_60] == mem[_60]
        mem[mem[64] + 4] = mem[_60]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x4e4f31ed with:
             gas gas_remaining wei
            args mem[mem[64] + 4], Array(len=7, data='s-level'), 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x4e4f31ed with:
             gas gas_remaining wei
            args _61, Array(len=7, data='m-level'), 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x4e4f31ed with:
             gas gas_remaining wei
            args _61, Array(len=11, data='s-timestamp'), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x4e4f31ed00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _61
        mem[mem[64] + 36] = 96
        mem[mem[64] + 100] = 11
        mem[mem[64] + 132] = 'm-timestamp'
        mem[mem[64] + 68] = block.timestamp
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x4e4f31ed with:
             gas gas_remaining wei
            args _61, Array(len=11, data='m-timestamp'), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        _55 = mem[_18]
        idx = idx + 1
        continue 
    if stor5 > -41:
        revert with 'NH{q', 17
    stor5 += 40
    Mask(88, 0, stor0.field_168) = 1
}

function sub_cf66260d(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args 0, uint32(arg2), 64, 7, 's-level'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args arg2, Array(len=11, data='s-timestamp')
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args arg2, Array(len=7, data='s-cache')
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if block.timestamp < block.timestamp:
                revert with 'NH{q', 17
            if False and ext_call.return_data[0] > 0:
                revert with 'NH{q', 17
            if ext_call.return_data[0] > -1:
                revert with 'NH{q', 17
            return ext_call.return_data[0]
        if block.timestamp < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if block.timestamp - ext_call.return_data[0] and ext_call.return_data[0] > -1 / block.timestamp - ext_call.return_data[0]:
            revert with 'NH{q', 17
        if (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) and 10^15 > -1 / (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]):
            revert with 'NH{q', 17
        if ext_call.return_data[0] > (-1 * 10^15 * block.timestamp * ext_call.return_data[0]) + (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        return (ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]))
    if arg1 == 1:
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args 0, uint32(arg2), 64, 7, 'm-level'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args arg2, Array(len=11, data='m-timestamp')
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args arg2, Array(len=7, data='m-cache')
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if block.timestamp < block.timestamp:
                revert with 'NH{q', 17
            if False and ext_call.return_data[0] > 0:
                revert with 'NH{q', 17
            if ext_call.return_data[0] > -1:
                revert with 'NH{q', 17
            return ext_call.return_data[0]
        if block.timestamp < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if block.timestamp - ext_call.return_data[0] and ext_call.return_data[0] > -1 / block.timestamp - ext_call.return_data[0]:
            revert with 'NH{q', 17
        if (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) and 2 * 10^15 > -1 / (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]):
            revert with 'NH{q', 17
        if ext_call.return_data[0] > (-2 * 10^15 * block.timestamp * ext_call.return_data[0]) + (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        return (ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]))
    if arg1 != 2:
        return 0
    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
            gas gas_remaining wei
           args 0, uint32(arg2), 64, 7, 'c-level'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
            gas gas_remaining wei
           args arg2, Array(len=11, data='c-timestamp')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
            gas gas_remaining wei
           args arg2, Array(len=7, data='c-cache')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        if block.timestamp < block.timestamp:
            revert with 'NH{q', 17
        if False and ext_call.return_data[0] > 0:
            revert with 'NH{q', 17
        if ext_call.return_data[0] > -1:
            revert with 'NH{q', 17
        return ext_call.return_data[0]
    if block.timestamp < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if block.timestamp - ext_call.return_data[0] and ext_call.return_data[0] > -1 / block.timestamp - ext_call.return_data[0]:
        revert with 'NH{q', 17
    if (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) and 10^14 > -1 / (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]):
        revert with 'NH{q', 17
    if ext_call.return_data[0] > (-1 * 10^14 * block.timestamp * ext_call.return_data[0]) + (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    return (ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]))
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
    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x8462151c with:
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
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[224 len 4], address(arg1) << 64 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], address(arg1) << 64 + 224]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], address(arg1) << 64 + 224]) + 225
    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], address(arg1) << 64 + 224]
    require _8 + (32 * _9) + 32 <= return_data.size
    idx = 0
    s = _8 + 256
    t = ceil32(return_data.size) + 256
    while idx < _9:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < _9:
        if idx >= mem[ceil32(return_data.size) + 224]:
            revert with 'NH{q', 50
        _242 = mem[(32 * idx) + ceil32(return_data.size) + 256]
        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 256]
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = 7
        mem[mem[64] + 100] = 's-level'
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args mem[mem[64] + 4], Array(len=7, data='s-level')
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _248 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _249 = mem[_248]
        require mem[_248] == mem[_248]
        mem[mem[64] + 4] = _242
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = 11
        mem[mem[64] + 100] = 's-timestamp'
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args _242, Array(len=11, data='s-timestamp')
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _252 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _253 = mem[_252]
        require mem[_252] == mem[_252]
        mem[mem[64] + 4] = _242
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = 7
        mem[mem[64] + 100] = 's-cache'
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args _242, Array(len=7, data='s-cache')
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not mem[_252]:
            _259 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _261 = mem[_259]
            require mem[_259] == mem[_259]
            if block.timestamp < block.timestamp:
                revert with 'NH{q', 17
            if False and _249 > 0:
                revert with 'NH{q', 17
            if mem[_259] > -1:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = _242
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = 7
            mem[mem[64] + 100] = 'm-level'
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args _242, Array(len=7, data='m-level')
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _267 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _269 = mem[_267]
            require mem[_267] == mem[_267]
            mem[mem[64] + 4] = _242
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = 11
            mem[mem[64] + 100] = 'm-timestamp'
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args _242, Array(len=11, data='m-timestamp')
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _275 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _277 = mem[_275]
            require mem[_275] == mem[_275]
            mem[mem[64] + 4] = _242
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = 7
            mem[mem[64] + 100] = 'm-cache'
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args _242, Array(len=7, data='m-cache')
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not mem[_275]:
                _289 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _293 = mem[_289]
                require mem[_289] == mem[_289]
                if block.timestamp < block.timestamp:
                    revert with 'NH{q', 17
                if False and _269 > 0:
                    revert with 'NH{q', 17
                if mem[_289] > -1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = _242
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 7
                mem[mem[64] + 100] = 'c-level'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _242, Array(len=7, data='c-level')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _307 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _311 = mem[_307]
                require mem[_307] == mem[_307]
                mem[mem[64] + 4] = _242
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 11
                mem[mem[64] + 100] = 'c-timestamp'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _242, Array(len=11, data='c-timestamp')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _323 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _327 = mem[_323]
                require mem[_323] == mem[_323]
                mem[mem[64] + 4] = _242
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 7
                mem[mem[64] + 100] = 'c-cache'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _242, Array(len=7, data='c-cache')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not mem[_323]:
                    _352 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _359 = mem[_352]
                    require mem[_352] == mem[_352]
                    if block.timestamp < block.timestamp:
                        revert with 'NH{q', 17
                    if False and _311 > 0:
                        revert with 'NH{q', 17
                    if mem[_352] > -1:
                        revert with 'NH{q', 17
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[128] > -_261 - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[128] = mem[128] + _261
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[160] > -_293 - 1:
                        revert with 'NH{q', 17
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[160] = mem[160] + _293
                    if 2 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[192] > -_359 - 1:
                        revert with 'NH{q', 17
                    if 2 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[192] = mem[192] + _359
                else:
                    _350 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _358 = mem[_350]
                    require mem[_350] == mem[_350]
                    if block.timestamp < _327:
                        revert with 'NH{q', 17
                    if block.timestamp - _327 and _311 > -1 / block.timestamp - _327:
                        revert with 'NH{q', 17
                    if (block.timestamp * _311) - (_327 * _311) and 10^14 > -1 / (block.timestamp * _311) - (_327 * _311):
                        revert with 'NH{q', 17
                    if mem[_350] > (-1 * 10^14 * block.timestamp * _311) + (10^14 * _327 * _311) - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[128] > -_261 - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[128] = mem[128] + _261
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[160] > -_293 - 1:
                        revert with 'NH{q', 17
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[160] = mem[160] + _293
                    if 2 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[192] > -_358 + (-1 * 10^14 * block.timestamp * _311) + (10^14 * _327 * _311) - 1:
                        revert with 'NH{q', 17
                    if 2 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[192] = mem[192] + _358 + (10^14 * block.timestamp * _311) - (10^14 * _327 * _311)
            else:
                _288 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _292 = mem[_288]
                require mem[_288] == mem[_288]
                if block.timestamp < _277:
                    revert with 'NH{q', 17
                if block.timestamp - _277 and _269 > -1 / block.timestamp - _277:
                    revert with 'NH{q', 17
                if (block.timestamp * _269) - (_277 * _269) and 2 * 10^15 > -1 / (block.timestamp * _269) - (_277 * _269):
                    revert with 'NH{q', 17
                if mem[_288] > (-2 * 10^15 * block.timestamp * _269) + (2 * 10^15 * _277 * _269) - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = _242
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 7
                mem[mem[64] + 100] = 'c-level'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _242, Array(len=7, data='c-level')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _306 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _310 = mem[_306]
                require mem[_306] == mem[_306]
                mem[mem[64] + 4] = _242
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 11
                mem[mem[64] + 100] = 'c-timestamp'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _242, Array(len=11, data='c-timestamp')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _322 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _326 = mem[_322]
                require mem[_322] == mem[_322]
                mem[mem[64] + 4] = _242
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 7
                mem[mem[64] + 100] = 'c-cache'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _242, Array(len=7, data='c-cache')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not mem[_322]:
                    _349 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _357 = mem[_349]
                    require mem[_349] == mem[_349]
                    if block.timestamp < block.timestamp:
                        revert with 'NH{q', 17
                    if False and _310 > 0:
                        revert with 'NH{q', 17
                    if mem[_349] > -1:
                        revert with 'NH{q', 17
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[128] > -_261 - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[128] = mem[128] + _261
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[160] > -_292 + (-2 * 10^15 * block.timestamp * _269) + (2 * 10^15 * _277 * _269) - 1:
                        revert with 'NH{q', 17
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[160] = mem[160] + _292 + (2 * 10^15 * block.timestamp * _269) - (2 * 10^15 * _277 * _269)
                    if 2 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[192] > -_357 - 1:
                        revert with 'NH{q', 17
                    if 2 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[192] = mem[192] + _357
                else:
                    _346 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _355 = mem[_346]
                    require mem[_346] == mem[_346]
                    if block.timestamp < _326:
                        revert with 'NH{q', 17
                    if block.timestamp - _326 and _310 > -1 / block.timestamp - _326:
                        revert with 'NH{q', 17
                    if (block.timestamp * _310) - (_326 * _310) and 10^14 > -1 / (block.timestamp * _310) - (_326 * _310):
                        revert with 'NH{q', 17
                    if mem[_346] > (-1 * 10^14 * block.timestamp * _310) + (10^14 * _326 * _310) - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[128] > -_261 - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[128] = mem[128] + _261
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[160] > -_292 + (-2 * 10^15 * block.timestamp * _269) + (2 * 10^15 * _277 * _269) - 1:
                        revert with 'NH{q', 17
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[160] = mem[160] + _292 + (2 * 10^15 * block.timestamp * _269) - (2 * 10^15 * _277 * _269)
                    if 2 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[192] > -_355 + (-1 * 10^14 * block.timestamp * _310) + (10^14 * _326 * _310) - 1:
                        revert with 'NH{q', 17
                    if 2 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[192] = mem[192] + _355 + (10^14 * block.timestamp * _310) - (10^14 * _326 * _310)
        else:
            _258 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _260 = mem[_258]
            require mem[_258] == mem[_258]
            if block.timestamp < _253:
                revert with 'NH{q', 17
            if block.timestamp - _253 and _249 > -1 / block.timestamp - _253:
                revert with 'NH{q', 17
            if (block.timestamp * _249) - (_253 * _249) and 10^15 > -1 / (block.timestamp * _249) - (_253 * _249):
                revert with 'NH{q', 17
            if mem[_258] > (-1 * 10^15 * block.timestamp * _249) + (10^15 * _253 * _249) - 1:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = _242
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = 7
            mem[mem[64] + 100] = 'm-level'
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args _242, Array(len=7, data='m-level')
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _266 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _268 = mem[_266]
            require mem[_266] == mem[_266]
            mem[mem[64] + 4] = _242
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = 11
            mem[mem[64] + 100] = 'm-timestamp'
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args _242, Array(len=11, data='m-timestamp')
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _274 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _276 = mem[_274]
            require mem[_274] == mem[_274]
            mem[mem[64] + 4] = _242
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = 7
            mem[mem[64] + 100] = 'm-cache'
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args _242, Array(len=7, data='m-cache')
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not mem[_274]:
                _287 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _291 = mem[_287]
                require mem[_287] == mem[_287]
                if block.timestamp < block.timestamp:
                    revert with 'NH{q', 17
                if False and _268 > 0:
                    revert with 'NH{q', 17
                if mem[_287] > -1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = _242
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 7
                mem[mem[64] + 100] = 'c-level'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _242, Array(len=7, data='c-level')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _305 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _309 = mem[_305]
                require mem[_305] == mem[_305]
                mem[mem[64] + 4] = _242
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 11
                mem[mem[64] + 100] = 'c-timestamp'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _242, Array(len=11, data='c-timestamp')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _321 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _325 = mem[_321]
                require mem[_321] == mem[_321]
                mem[mem[64] + 4] = _242
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 7
                mem[mem[64] + 100] = 'c-cache'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _242, Array(len=7, data='c-cache')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not mem[_321]:
                    _348 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _356 = mem[_348]
                    require mem[_348] == mem[_348]
                    if block.timestamp < block.timestamp:
                        revert with 'NH{q', 17
                    if False and _309 > 0:
                        revert with 'NH{q', 17
                    if mem[_348] > -1:
                        revert with 'NH{q', 17
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[128] > -_260 + (-1 * 10^15 * block.timestamp * _249) + (10^15 * _253 * _249) - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[128] = mem[128] + _260 + (10^15 * block.timestamp * _249) - (10^15 * _253 * _249)
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[160] > -_291 - 1:
                        revert with 'NH{q', 17
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[160] = mem[160] + _291
                    if 2 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[192] > -_356 - 1:
                        revert with 'NH{q', 17
                    if 2 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[192] = mem[192] + _356
                else:
                    _345 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _354 = mem[_345]
                    require mem[_345] == mem[_345]
                    if block.timestamp < _325:
                        revert with 'NH{q', 17
                    if block.timestamp - _325 and _309 > -1 / block.timestamp - _325:
                        revert with 'NH{q', 17
                    if (block.timestamp * _309) - (_325 * _309) and 10^14 > -1 / (block.timestamp * _309) - (_325 * _309):
                        revert with 'NH{q', 17
                    if mem[_345] > (-1 * 10^14 * block.timestamp * _309) + (10^14 * _325 * _309) - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[128] > -_260 + (-1 * 10^15 * block.timestamp * _249) + (10^15 * _253 * _249) - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[128] = mem[128] + _260 + (10^15 * block.timestamp * _249) - (10^15 * _253 * _249)
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[160] > -_291 - 1:
                        revert with 'NH{q', 17
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[160] = mem[160] + _291
                    if 2 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[192] > -_354 + (-1 * 10^14 * block.timestamp * _309) + (10^14 * _325 * _309) - 1:
                        revert with 'NH{q', 17
                    if 2 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[192] = mem[192] + _354 + (10^14 * block.timestamp * _309) - (10^14 * _325 * _309)
            else:
                _285 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _290 = mem[_285]
                require mem[_285] == mem[_285]
                if block.timestamp < _276:
                    revert with 'NH{q', 17
                if block.timestamp - _276 and _268 > -1 / block.timestamp - _276:
                    revert with 'NH{q', 17
                if (block.timestamp * _268) - (_276 * _268) and 2 * 10^15 > -1 / (block.timestamp * _268) - (_276 * _268):
                    revert with 'NH{q', 17
                if mem[_285] > (-2 * 10^15 * block.timestamp * _268) + (2 * 10^15 * _276 * _268) - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = _242
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 7
                mem[mem[64] + 100] = 'c-level'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _242, Array(len=7, data='c-level')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _303 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _308 = mem[_303]
                require mem[_303] == mem[_303]
                mem[mem[64] + 4] = _242
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 11
                mem[mem[64] + 100] = 'c-timestamp'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _242, Array(len=11, data='c-timestamp')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _319 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _324 = mem[_319]
                require mem[_319] == mem[_319]
                mem[mem[64] + 4] = _242
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 7
                mem[mem[64] + 100] = 'c-cache'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _242, Array(len=7, data='c-cache')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not mem[_319]:
                    _344 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _353 = mem[_344]
                    require mem[_344] == mem[_344]
                    if block.timestamp < block.timestamp:
                        revert with 'NH{q', 17
                    if False and _308 > 0:
                        revert with 'NH{q', 17
                    if mem[_344] > -1:
                        revert with 'NH{q', 17
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[128] > -_260 + (-1 * 10^15 * block.timestamp * _249) + (10^15 * _253 * _249) - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[128] = mem[128] + _260 + (10^15 * block.timestamp * _249) - (10^15 * _253 * _249)
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[160] > -_290 + (-2 * 10^15 * block.timestamp * _268) + (2 * 10^15 * _276 * _268) - 1:
                        revert with 'NH{q', 17
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[160] = mem[160] + _290 + (2 * 10^15 * block.timestamp * _268) - (2 * 10^15 * _276 * _268)
                    if 2 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[192] > -_353 - 1:
                        revert with 'NH{q', 17
                    if 2 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[192] = mem[192] + _353
                else:
                    _340 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _351 = mem[_340]
                    require mem[_340] == mem[_340]
                    if block.timestamp < _324:
                        revert with 'NH{q', 17
                    if block.timestamp - _324 and _308 > -1 / block.timestamp - _324:
                        revert with 'NH{q', 17
                    if (block.timestamp * _308) - (_324 * _308) and 10^14 > -1 / (block.timestamp * _308) - (_324 * _308):
                        revert with 'NH{q', 17
                    if mem[_340] > (-1 * 10^14 * block.timestamp * _308) + (10^14 * _324 * _308) - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[128] > -_260 + (-1 * 10^15 * block.timestamp * _249) + (10^15 * _253 * _249) - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[128] = mem[128] + _260 + (10^15 * block.timestamp * _249) - (10^15 * _253 * _249)
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[160] > -_290 + (-2 * 10^15 * block.timestamp * _268) + (2 * 10^15 * _276 * _268) - 1:
                        revert with 'NH{q', 17
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[160] = mem[160] + _290 + (2 * 10^15 * block.timestamp * _268) - (2 * 10^15 * _276 * _268)
                    if 2 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[192] > -_351 + (-1 * 10^14 * block.timestamp * _308) + (10^14 * _324 * _308) - 1:
                        revert with 'NH{q', 17
                    if 2 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[192] = mem[192] + _351 + (10^14 * block.timestamp * _308) - (10^14 * _324 * _308)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function sub_92789b02(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(uint8(stor0.field_160)) != 1:
        revert with 0, 'Sale not enabled'
    if stor5 < 1111:
        if arg1 > 0x9392ee8e921d5d073aff322e62439fcf32d7f344649470f90:
            revert with 'NH{q', 17
        if msg.value < 2 * 10^18 * arg1:
            revert with 0, 'Wrong fee'
        if arg1 > -stor5 - 1:
            revert with 'NH{q', 17
        if arg1 + stor5 > 8888:
            revert with 0, 'Not enough planets left'
        if arg1 <= 0:
            revert with 0, 'Amount should be >0'
        if arg1 > 40:
            revert with 0, 'Amount should be <=40'
        mem[100] = 32
        mem[132] = 14
        mem[164] = 'metadataSetter'
        require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
        staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                gas gas_remaining wei
               args Array(len=14, data='metadataSetter')
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
            require mem[_218] == mem[_218]
            mem[mem[64] + 4] = mem[_218]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x4e4f31ed with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], Array(len=7, data='s-level'), 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x4e4f31ed with:
                 gas gas_remaining wei
                args _226, Array(len=7, data='m-level'), 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x4e4f31ed with:
                 gas gas_remaining wei
                args _226, Array(len=11, data='s-timestamp'), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x4e4f31ed00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _226
            mem[mem[64] + 36] = 96
            mem[mem[64] + 100] = 11
            mem[mem[64] + 132] = 'm-timestamp'
            mem[mem[64] + 68] = block.timestamp
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x4e4f31ed with:
                 gas gas_remaining wei
                args _226, Array(len=11, data='m-timestamp'), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if stor5 < 2222:
            if arg1 > 0x760f253edb4ab0d29598f4f1e83619728f13290383a9f3fa7:
                revert with 'NH{q', 17
            if msg.value < 25 * 10^17 * arg1:
                revert with 0, 'Wrong fee'
            if arg1 > -stor5 - 1:
                revert with 'NH{q', 17
            if arg1 + stor5 > 8888:
                revert with 0, 'Not enough planets left'
            if arg1 <= 0:
                revert with 0, 'Amount should be >0'
            if arg1 > 40:
                revert with 0, 'Amount should be <=40'
            mem[100] = 32
            mem[132] = 14
            mem[164] = 'metadataSetter'
            require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
            staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                    gas gas_remaining wei
                   args Array(len=14, data='metadataSetter')
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
                require mem[_217] == mem[_217]
                mem[mem[64] + 4] = mem[_217]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x4e4f31ed with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], Array(len=7, data='s-level'), 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x4e4f31ed with:
                     gas gas_remaining wei
                    args _225, Array(len=7, data='m-level'), 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x4e4f31ed with:
                     gas gas_remaining wei
                    args _225, Array(len=11, data='s-timestamp'), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x4e4f31ed00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _225
                mem[mem[64] + 36] = 96
                mem[mem[64] + 100] = 11
                mem[mem[64] + 132] = 'm-timestamp'
                mem[mem[64] + 68] = block.timestamp
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x4e4f31ed with:
                     gas gas_remaining wei
                    args _225, Array(len=11, data='m-timestamp'), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            if stor5 < 3333:
                if arg1 > 0x6261f45f0c13935a2754cc1eec2d1534cc8ff782edb84b50b:
                    revert with 'NH{q', 17
                if msg.value < 3 * 10^18 * arg1:
                    revert with 0, 'Wrong fee'
                if arg1 > -stor5 - 1:
                    revert with 'NH{q', 17
                if arg1 + stor5 > 8888:
                    revert with 0, 'Not enough planets left'
                if arg1 <= 0:
                    revert with 0, 'Amount should be >0'
                if arg1 > 40:
                    revert with 0, 'Amount should be <=40'
                mem[100] = 32
                mem[132] = 14
                mem[164] = 'metadataSetter'
                require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
                staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                        gas gas_remaining wei
                       args Array(len=14, data='metadataSetter')
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
                    require mem[_216] == mem[_216]
                    mem[mem[64] + 4] = mem[_216]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], Array(len=7, data='s-level'), 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                         gas gas_remaining wei
                        args _224, Array(len=7, data='m-level'), 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                         gas gas_remaining wei
                        args _224, Array(len=11, data='s-timestamp'), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x4e4f31ed00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _224
                    mem[mem[64] + 36] = 96
                    mem[mem[64] + 100] = 11
                    mem[mem[64] + 132] = 'm-timestamp'
                    mem[mem[64] + 68] = block.timestamp
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                         gas gas_remaining wei
                        args _224, Array(len=11, data='m-timestamp'), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                if stor5 < 4444:
                    if arg1 > 0x5453f608537e7e4d4648aef5ef02122d419ff8b95e0bae452:
                        revert with 'NH{q', 17
                    if msg.value < 35 * 10^17 * arg1:
                        revert with 0, 'Wrong fee'
                    if arg1 > -stor5 - 1:
                        revert with 'NH{q', 17
                    if arg1 + stor5 > 8888:
                        revert with 0, 'Not enough planets left'
                    if arg1 <= 0:
                        revert with 0, 'Amount should be >0'
                    if arg1 > 40:
                        revert with 0, 'Amount should be <=40'
                    mem[100] = 32
                    mem[132] = 14
                    mem[164] = 'metadataSetter'
                    require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
                    staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                            gas gas_remaining wei
                           args Array(len=14, data='metadataSetter')
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
                        require mem[_215] == mem[_215]
                        mem[mem[64] + 4] = mem[_215]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], Array(len=7, data='s-level'), 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args _223, Array(len=7, data='m-level'), 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args _223, Array(len=11, data='s-timestamp'), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x4e4f31ed00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _223
                        mem[mem[64] + 36] = 96
                        mem[mem[64] + 100] = 11
                        mem[mem[64] + 132] = 'm-timestamp'
                        mem[mem[64] + 68] = block.timestamp
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args _223, Array(len=11, data='m-timestamp'), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    if stor5 < 5555:
                        if arg1 > 0x49c97747490eae839d7f99173121cfe7996bf9a2324a387c8:
                            revert with 'NH{q', 17
                        if msg.value < 4 * 10^18 * arg1:
                            revert with 0, 'Wrong fee'
                        if arg1 > -stor5 - 1:
                            revert with 'NH{q', 17
                        if arg1 + stor5 > 8888:
                            revert with 0, 'Not enough planets left'
                        if arg1 <= 0:
                            revert with 0, 'Amount should be >0'
                        if arg1 > 40:
                            revert with 0, 'Amount should be <=40'
                        mem[100] = 32
                        mem[132] = 14
                        mem[164] = 'metadataSetter'
                        require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
                        staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                                gas gas_remaining wei
                               args Array(len=14, data='metadataSetter')
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
                            require mem[_214] == mem[_214]
                            mem[mem[64] + 4] = mem[_214]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], Array(len=7, data='s-level'), 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args _222, Array(len=7, data='m-level'), 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args _222, Array(len=11, data='s-timestamp'), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x4e4f31ed00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _222
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 100] = 11
                            mem[mem[64] + 132] = 'm-timestamp'
                            mem[mem[64] + 68] = block.timestamp
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args _222, Array(len=11, data='m-timestamp'), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                    else:
                        if stor5 < 6666:
                            if '>s6(qB' and arg1 > -1 / '>s6(qB':
                                revert with 'NH{q', 17
                            if msg.value < '>s6(qB' * arg1:
                                revert with 0, 'Wrong fee'
                            if arg1 > -stor5 - 1:
                                revert with 'NH{q', 17
                            if arg1 + stor5 > 8888:
                                revert with 0, 'Not enough planets left'
                            if arg1 <= 0:
                                revert with 0, 'Amount should be >0'
                            if arg1 > 40:
                                revert with 0, 'Amount should be <=40'
                            mem[100] = 32
                            mem[132] = 14
                            mem[164] = 'metadataSetter'
                            require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
                            staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                                    gas gas_remaining wei
                                   args Array(len=14, data='metadataSetter')
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
                                require mem[_213] == mem[_213]
                                mem[mem[64] + 4] = mem[_213]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], Array(len=7, data='s-level'), 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args _221, Array(len=7, data='m-level'), 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args _221, Array(len=11, data='s-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x4e4f31ed00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _221
                                mem[mem[64] + 36] = 96
                                mem[mem[64] + 100] = 11
                                mem[mem[64] + 132] = 'm-timestamp'
                                mem[mem[64] + 68] = block.timestamp
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args _221, Array(len=11, data='m-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                        else:
                            if stor5 >= 7777:
                                if arg1 > 0x35a9cb1c92393919e6e86f56af5e68a86f945875f6076ee63:
                                    revert with 'NH{q', 17
                                if msg.value < 55 * 10^17 * arg1:
                                    revert with 0, 'Wrong fee'
                                if arg1 > -stor5 - 1:
                                    revert with 'NH{q', 17
                                if arg1 + stor5 > 8888:
                                    revert with 0, 'Not enough planets left'
                                if arg1 <= 0:
                                    revert with 0, 'Amount should be >0'
                                if arg1 > 40:
                                    revert with 0, 'Amount should be <=40'
                                mem[100] = 32
                                mem[132] = 14
                                mem[164] = 'metadataSetter'
                                require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
                                staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                                        gas gas_remaining wei
                                       args Array(len=14, data='metadataSetter')
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
                                    require mem[_211] == mem[_211]
                                    mem[mem[64] + 4] = mem[_211]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], Array(len=7, data='s-level'), 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args _219, Array(len=7, data='m-level'), 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args _219, Array(len=11, data='s-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x4e4f31ed00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _219
                                    mem[mem[64] + 36] = 96
                                    mem[mem[64] + 100] = 11
                                    mem[mem[64] + 132] = 'm-timestamp'
                                    mem[mem[64] + 68] = block.timestamp
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args _219, Array(len=11, data='m-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if arg1 > 0x3b07929f6da558694acc7a78f41b0cb947899481c1d4f9fd3:
                                    revert with 'NH{q', 17
                                if msg.value < 5 * 10^18 * arg1:
                                    revert with 0, 'Wrong fee'
                                if arg1 > -stor5 - 1:
                                    revert with 'NH{q', 17
                                if arg1 + stor5 > 8888:
                                    revert with 0, 'Not enough planets left'
                                if arg1 <= 0:
                                    revert with 0, 'Amount should be >0'
                                if arg1 > 40:
                                    revert with 0, 'Amount should be <=40'
                                mem[100] = 32
                                mem[132] = 14
                                mem[164] = 'metadataSetter'
                                require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
                                staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                                        gas gas_remaining wei
                                       args Array(len=14, data='metadataSetter')
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
                                    require mem[_212] == mem[_212]
                                    mem[mem[64] + 4] = mem[_212]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], Array(len=7, data='s-level'), 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args _220, Array(len=7, data='m-level'), 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args _220, Array(len=11, data='s-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x4e4f31ed00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _220
                                    mem[mem[64] + 36] = 96
                                    mem[mem[64] + 100] = 11
                                    mem[mem[64] + 132] = 'm-timestamp'
                                    mem[mem[64] + 68] = block.timestamp
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args _220, Array(len=11, data='m-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    continue 
    if stor5 > -arg1 - 1:
        revert with 'NH{q', 17
    stor5 += arg1
}

function sub_b589cae6(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args 0, uint32(arg3), 64, 7, 's-level'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args arg3, Array(len=11, data='s-timestamp')
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args arg3, Array(len=7, data='s-cache')
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if block.timestamp < block.timestamp:
                revert with 'NH{q', 17
            if False and ext_call.return_data[0] > 0:
                revert with 'NH{q', 17
            if ext_call.return_data[0] > -1:
                revert with 'NH{q', 17
            require ext_call.return_data[0] >= arg2
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
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
                   args Array(len=14, data='metadataSetter')
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not arg1:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x4e4f31ed with:
                     gas gas_remaining wei
                    args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] < arg2:
                    revert with 'NH{q', 17
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x4e4f31ed with:
                     gas gas_remaining wei
                    args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] - arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                        gas gas_remaining wei
                       args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
                call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if arg1 == 1:
                    if not arg1:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ext_call.return_data[0] < arg2:
                            revert with 'NH{q', 17
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] - arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                gas gas_remaining wei
                               args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                        call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if arg1 == 1:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0] < arg2:
                                revert with 'NH{q', 17
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] - arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                    gas gas_remaining wei
                                   args arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                            call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if arg1 == 2:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] < arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x40c10f19 with:
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
                                args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0] < arg2:
                                revert with 'NH{q', 17
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] - arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                    gas gas_remaining wei
                                   args arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(0)
                            call 0x0.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if arg1 == 1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] < arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0)
                                call 0x0.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if arg1 == 2:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0)
                                    call 0x0.0x40c10f19 with:
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
                                args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0] < arg2:
                                revert with 'NH{q', 17
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] - arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                    gas gas_remaining wei
                                   args arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                            call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if arg1 == 1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] < arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if arg1 == 2:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                    call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if block.timestamp < ext_call.return_data[0]:
                revert with 'NH{q', 17
            if block.timestamp - ext_call.return_data[0] and ext_call.return_data[0] > -1 / block.timestamp - ext_call.return_data[0]:
                revert with 'NH{q', 17
            if (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) and 10^15 > -1 / (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]):
                revert with 'NH{q', 17
            if ext_call.return_data[0] > (-1 * 10^15 * block.timestamp * ext_call.return_data[0]) + (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            require ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) >= arg2
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
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
                   args Array(len=14, data='metadataSetter')
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not arg1:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x4e4f31ed with:
                     gas gas_remaining wei
                    args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                    revert with 'NH{q', 17
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x4e4f31ed with:
                     gas gas_remaining wei
                    args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                        gas gas_remaining wei
                       args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
                call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if arg1 == 1:
                    if not arg1:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                            revert with 'NH{q', 17
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                gas gas_remaining wei
                               args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                        call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if arg1 == 1:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                revert with 'NH{q', 17
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                    gas gas_remaining wei
                                   args arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                            call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if arg1 == 2:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x40c10f19 with:
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
                                args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                revert with 'NH{q', 17
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                    gas gas_remaining wei
                                   args arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(0)
                            call 0x0.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if arg1 == 1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0)
                                call 0x0.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if arg1 == 2:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0)
                                    call 0x0.0x40c10f19 with:
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
                                args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                revert with 'NH{q', 17
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                    gas gas_remaining wei
                                   args arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                            call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if arg1 == 1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if arg1 == 2:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                    call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if arg1 == 1:
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args 0, uint32(arg3), 64, 7, 'm-level'
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args arg3, Array(len=11, data='m-timestamp')
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args arg3, Array(len=7, data='m-cache')
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                if block.timestamp < block.timestamp:
                    revert with 'NH{q', 17
                if False and ext_call.return_data[0] > 0:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] > -1:
                    revert with 'NH{q', 17
                require ext_call.return_data[0] >= arg2
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
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
                       args Array(len=14, data='metadataSetter')
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not arg1:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                         gas gas_remaining wei
                        args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ext_call.return_data[0] < arg2:
                        revert with 'NH{q', 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                         gas gas_remaining wei
                        args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] - arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                            gas gas_remaining wei
                           args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
                    call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if arg1 == 1:
                        if not arg1:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0] < arg2:
                                revert with 'NH{q', 17
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] - arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                    gas gas_remaining wei
                                   args arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                            call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if arg1 == 1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] < arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if arg1 == 2:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                    call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x40c10f19 with:
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
                                    args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] < arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0)
                                call 0x0.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if arg1 == 1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0)
                                    call 0x0.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if arg1 == 2:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[0] < arg2:
                                            revert with 'NH{q', 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] - arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0)
                                        call 0x0.0x40c10f19 with:
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
                                    args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] < arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if arg1 == 1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                    call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if arg1 == 2:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[0] < arg2:
                                            revert with 'NH{q', 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] - arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                        call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if block.timestamp < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if block.timestamp - ext_call.return_data[0] and ext_call.return_data[0] > -1 / block.timestamp - ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) and 2 * 10^15 > -1 / (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if ext_call.return_data[0] > (-2 * 10^15 * block.timestamp * ext_call.return_data[0]) + (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                require ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) >= arg2
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
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
                       args Array(len=14, data='metadataSetter')
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not arg1:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                         gas gas_remaining wei
                        args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                        revert with 'NH{q', 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                         gas gas_remaining wei
                        args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                            gas gas_remaining wei
                           args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
                    call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if arg1 == 1:
                        if not arg1:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                revert with 'NH{q', 17
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                    gas gas_remaining wei
                                   args arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                            call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if arg1 == 1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if arg1 == 2:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                    call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x40c10f19 with:
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
                                    args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0)
                                call 0x0.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if arg1 == 1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0)
                                    call 0x0.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if arg1 == 2:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                            revert with 'NH{q', 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0)
                                        call 0x0.0x40c10f19 with:
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
                                    args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if arg1 == 1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                    call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if arg1 == 2:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                            revert with 'NH{q', 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                        call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x40c10f19 with:
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
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
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
                       args Array(len=14, data='metadataSetter')
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not arg1:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                         gas gas_remaining wei
                        args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 < arg2:
                        revert with 'NH{q', 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                         gas gas_remaining wei
                        args arg3, Array(len=7, data='s-cache'), -arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                            gas gas_remaining wei
                           args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
                    call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if arg1 == 1:
                        if not arg1:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 < arg2:
                                revert with 'NH{q', 17
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, Array(len=7, data='s-cache'), -arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                    gas gas_remaining wei
                                   args arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                            call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if arg1 == 1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 < arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=7, data='m-cache'), -arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if arg1 == 2:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='c-cache'), -arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                    call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x40c10f19 with:
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
                                    args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 < arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=7, data='s-cache'), -arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0)
                                call 0x0.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if arg1 == 1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='m-cache'), -arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0)
                                    call 0x0.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if arg1 == 2:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if 0 < arg2:
                                            revert with 'NH{q', 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=7, data='c-cache'), -arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0)
                                        call 0x0.0x40c10f19 with:
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
                                    args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 < arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=7, data='s-cache'), -arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if arg1 == 1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='m-cache'), -arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                    call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if arg1 == 2:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if 0 < arg2:
                                            revert with 'NH{q', 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=7, data='c-cache'), -arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                        call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x40c10f19 with:
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
                       args 0, uint32(arg3), 64, 7, 'c-level'
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args arg3, Array(len=11, data='c-timestamp')
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args arg3, Array(len=7, data='c-cache')
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if block.timestamp < block.timestamp:
                        revert with 'NH{q', 17
                    if False and ext_call.return_data[0] > 0:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] > -1:
                        revert with 'NH{q', 17
                    require ext_call.return_data[0] >= arg2
                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
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
                           args Array(len=14, data='metadataSetter')
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if not arg1:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ext_call.return_data[0] < arg2:
                            revert with 'NH{q', 17
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] - arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                gas gas_remaining wei
                               args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
                        call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if arg1 == 1:
                            if not arg1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] < arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if arg1 == 1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                    call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if arg1 == 2:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[0] < arg2:
                                            revert with 'NH{q', 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] - arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                        call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x40c10f19 with:
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
                                        args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0)
                                    call 0x0.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if arg1 == 1:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[0] < arg2:
                                            revert with 'NH{q', 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] - arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0)
                                        call 0x0.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    else:
                                        if arg1 == 2:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                                 gas gas_remaining wei
                                                args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if ext_call.return_data[0] < arg2:
                                                revert with 'NH{q', 17
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                                 gas gas_remaining wei
                                                args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] - arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                                    gas gas_remaining wei
                                                   args arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(0)
                                            call 0x0.0x40c10f19 with:
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
                                        args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                    call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if arg1 == 1:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[0] < arg2:
                                            revert with 'NH{q', 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] - arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                        call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    else:
                                        if arg1 == 2:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                                 gas gas_remaining wei
                                                args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if ext_call.return_data[0] < arg2:
                                                revert with 'NH{q', 17
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                                 gas gas_remaining wei
                                                args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] - arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                                    gas gas_remaining wei
                                                   args arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                            call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if block.timestamp < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if block.timestamp - ext_call.return_data[0] and ext_call.return_data[0] > -1 / block.timestamp - ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) and 10^14 > -1 / (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] > (-1 * 10^14 * block.timestamp * ext_call.return_data[0]) + (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    require ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) >= arg2
                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
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
                           args Array(len=14, data='metadataSetter')
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if not arg1:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                            revert with 'NH{q', 17
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                gas gas_remaining wei
                               args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
                        call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if arg1 == 1:
                            if not arg1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if arg1 == 1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                    call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if arg1 == 2:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                            revert with 'NH{q', 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                        call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x40c10f19 with:
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
                                        args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0)
                                    call 0x0.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if arg1 == 1:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                            revert with 'NH{q', 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0)
                                        call 0x0.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    else:
                                        if arg1 == 2:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                                 gas gas_remaining wei
                                                args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                                revert with 'NH{q', 17
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                                 gas gas_remaining wei
                                                args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                                    gas gas_remaining wei
                                                   args arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(0)
                                            call 0x0.0x40c10f19 with:
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
                                        args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                    call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if arg1 == 1:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                            revert with 'NH{q', 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                        call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    else:
                                        if arg1 == 2:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                                 gas gas_remaining wei
                                                args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                                revert with 'NH{q', 17
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                                 gas gas_remaining wei
                                                args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                                    gas gas_remaining wei
                                                   args arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                            call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}



}
