contract main {




// =====================  Runtime code  =====================


#
#  - transfer(address arg1, address arg2, uint256 arg3)
#  - sub_d9c8287a(?)
#  - sub_faeb0403(?)
#
address WETHAddress;
address owner;
mapping of uint8 stor2;
array of struct whitelist;

function operators(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function whitelist(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < whitelist.length
    return whitelist[arg1].field_0, bool(whitelist[arg1].field_160)
}

function owner() {
    return owner
}

function WETH() {
    return WETHAddress
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    owner = arg1
}

function addOperator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    stor2[address(arg1)] = 1
}

function removeOperator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    stor2[address(arg1)] = 0
}

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < whitelist.length:
        mem[0] = 3
        if whitelist[idx].field_0 == arg1:
            if idx >= whitelist.length:
                revert with 'NH{q', 50
            if bool(whitelist[idx].field_160) == 1:
                return 1, idx
            if idx >= whitelist.length:
                revert with 'NH{q', 50
            mem[0] = 3
            if not whitelist[idx].field_160:
                return 0, idx
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0, -1
}

function getWhitelistAddresses() {
    if whitelist.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = whitelist.length
    mem[64] = (32 * whitelist.length) + 128
    if whitelist.length:
        mem[128 len 32 * whitelist.length] = call.data[calldata.size len 32 * whitelist.length]
    idx = 0
    s = 0
    while idx < whitelist.length:
        mem[0] = 3
        if not whitelist[idx].field_160:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= whitelist.length:
            revert with 'NH{q', 50
        mem[0] = 3
        if s >= whitelist.length:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = whitelist[idx].field_0
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * whitelist.length) + 128] = 32
    mem[(32 * whitelist.length) + 160] = whitelist.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < whitelist.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * whitelist.length) + -mem[64] + 192
}

function removeWhitelistAddresses(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg1.length) + 97
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        _32 = mem[(32 * idx) + 128]
        s = 0
        while s < whitelist.length:
            mem[0] = 3
            if whitelist[s].field_0 != address(_32):
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            if s >= whitelist.length:
                revert with 'NH{q', 50
            mem[0] = 3
            if bool(whitelist[s].field_160) != 1:
                if s >= whitelist.length:
                    revert with 'NH{q', 50
                mem[0] = 3
                if not whitelist[s].field_160:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            _45 = mem[64]
            mem[64] = mem[64] + 64
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[_45] = mem[(32 * idx) + 140 len 20]
            mem[_45 + 32] = 0
            if s >= whitelist.length:
                revert with 'NH{q', 50
            mem[0] = 3
            whitelist[s].field_0 = mem[_45 + 12 len 20]
            whitelist[s].field_160 = 0
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function sub_99b85104(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 > test266151307() or ceil32(ceil32(arg4.length)) + 98 < 97:
        revert with 'NH{q', 65
    mem[ceil32(ceil32(arg2.length)) + 97] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg2.length)) + 129 len arg4.length] = arg4[all]
    mem[ceil32(ceil32(arg2.length)) + arg4.length + 129] = 0
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + arg2.length + 98] = 0
    call address(arg1).mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 len 4] with:
       value arg3 wei
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 102 len arg2.length - 4]
    if not return_data.size:
        if ext_call.success:
            return Array(len=arg2.length, data=arg2[all])
        if arg2.length > 0:
            revert with arg2[all]
        revert with 0, 
                    32,
                    arg4.length,
                    arg4[all],
                    Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256, 32) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256
    if ext_call.success:
        return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    if return_data.size > 0:
        revert with ext_call.return_data[0 len return_data.size]
    revert with 0, 
                32,
                arg4.length,
                arg4[all],
                Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, return_data.size) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
}

function addWhitelistAddresses(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg1.length) + 97
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _44 = mem[(32 * idx) + 128]
        s = 0
        while s < whitelist.length:
            mem[0] = 3
            if whitelist[s].field_0 != address(_44):
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            if s >= whitelist.length:
                revert with 'NH{q', 50
            if bool(whitelist[s].field_160) == 1:
            if s >= whitelist.length:
                revert with 'NH{q', 50
            mem[0] = 3
            if whitelist[s].field_160:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            if s != -1:
                _69 = mem[64]
                mem[64] = mem[64] + 64
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[_69] = mem[(32 * idx) + 140 len 20]
                mem[_69 + 32] = 1
                if s >= whitelist.length:
                    revert with 'NH{q', 50
                mem[0] = 3
                whitelist[s].field_0 = mem[_69 + 12 len 20]
                whitelist[s].field_160 = 1
            else:
                _71 = mem[64]
                mem[64] = mem[64] + 64
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[_71] = mem[(32 * idx) + 140 len 20]
                mem[_71 + 32] = 1
                whitelist.length++
                mem[0] = 3
                whitelist[whitelist.length].field_0 = mem[_71 + 12 len 20]
                whitelist[whitelist.length].field_160 = 1
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _62 = mem[64]
        mem[64] = mem[64] + 64
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[_62] = mem[(32 * idx) + 140 len 20]
        mem[_62 + 32] = 1
        whitelist.length++
        mem[0] = 3
        whitelist[whitelist.length].field_0 = mem[_62 + 12 len 20]
        whitelist[whitelist.length].field_160 = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
