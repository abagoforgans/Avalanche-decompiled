contract main {




// =====================  Runtime code  =====================


address owner;
address stor2;
mapping of uint256 givenRewards;
uint256 sub_6d0c689e;
uint8 isFrozen;

function isFrozen() {
    return bool(isFrozen)
}

function sub_6d0c689e(?) {
    return sub_6d0c689e
}

function owner() {
    return owner
}

function givenRewards(uint256 arg1) {
    require calldata.size - 4 >= 32
    return givenRewards[arg1]
}

function _fallback() payable {
    revert
}

function freeze() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    isFrozen = 1
}

function unfreeze() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    isFrozen = 0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function emergencyWithdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deposit() payable {
    if isFrozen:
        revert with 0, 'Distributor is frozen.'
    if msg.value > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if sub_6d0c689e > !(10000 * msg.value / 10000 / 10000):
        revert with 0, 17
    sub_6d0c689e += 10000 * msg.value / 10000 / 10000
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_61c0b87a(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if cd[((32 * idx) + cd[4] + 36)] >= 10000:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 3
        if sub_6d0c689e < givenRewards[cd[((32 * idx) + cd[4] + 36)]]:
            revert with 0, 17
        if s > !(sub_6d0c689e - givenRewards[cd[((32 * idx) + cd[4] + 36)]]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + sub_6d0c689e - givenRewards[cd[((32 * idx) + cd[4] + 36)]]
        continue 
    return s
}

function sub_d4092454(?) {
    require calldata.size - 4 >= 64
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 <= 10000:
        if arg2 > test266151307():
            revert with 0, 65
        if arg2:
            mem[128 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
        idx = 0
        while idx < arg2:
            mem[0] = idx
            mem[32] = 3
            if idx >= arg2:
                revert with 0, 50
            mem[(32 * idx) + 128] = givenRewards[idx]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        return Array(len=arg2, data=mem[128 len 32 * arg2])
    if 10000 < arg1:
        revert with 0, 17
    if -arg1 + 10000 > test266151307():
        revert with 0, 65
    mem[96] = -arg1 + 10000
    if -arg1 + 10000:
        mem[128 len 32 * -arg1 + 10000] = call.data[calldata.size len 32 * -arg1 + 10000]
    idx = 0
    while idx < -arg1 + 10000:
        mem[0] = idx
        mem[32] = 3
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = givenRewards[idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(32 * -arg1 + 10000) + 128] = 32
    mem[(32 * -arg1 + 10000) + 160] = mem[96]
    mem[(32 * -arg1 + 10000) + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[(32 * -arg1 + 10000) + 160 len (32 * mem[96]) + 32]
}

function sub_99e3b18d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = address(arg1)
    require ext_code.size(stor2)
    staticcall stor2.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = idx
        require ext_code.size(stor2)
        staticcall stor2.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg1), idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_16] >= 10000:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = mem[_16]
        mem[32] = 3
        if sub_6d0c689e < givenRewards[mem[0]]:
            revert with 0, 17
        if s > !(sub_6d0c689e - givenRewards[mem[0]]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + sub_6d0c689e - givenRewards[mem[0]]
        continue 
    return s
}

function claimRewards() {
    if isFrozen:
        revert with 0, 'Distributor is frozen.'
    mem[100] = msg.sender
    require ext_code.size(stor2)
    staticcall stor2.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(stor2)
        staticcall stor2.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _17 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _18 = mem[_17]
        if mem[_17] >= 10000:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = mem[_17]
        _19 = sha3(mem[0], 3)
        if sub_6d0c689e < givenRewards[mem[0]]:
            revert with 0, 17
        if s > !(sub_6d0c689e - givenRewards[mem[0]]):
            revert with 0, 17
        mem[0] = _18
        mem[32] = 3
        givenRewards[_18] = sub_6d0c689e
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + sub_6d0c689e - stor[_19]
        continue 
    call msg.sender with:
       value s wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b3eacee1(?) {
    require calldata.size - 4 >= 64
    if isFrozen:
        revert with 0, 'Distributor is frozen.'
    mem[100] = msg.sender
    require ext_code.size(stor2)
    staticcall stor2.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > ext_call.return_data[0]:
        revert with 0, 'Out of index'
    idx = 0
    s = 0
    while idx < arg2:
        if idx > !arg1:
            revert with 0, 17
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx + arg1
        require ext_code.size(stor2)
        staticcall stor2.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, idx + arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _19 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _20 = mem[_19]
        if mem[_19] >= 10000:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = mem[_19]
        _21 = sha3(mem[0], 3)
        if sub_6d0c689e < givenRewards[mem[0]]:
            revert with 0, 17
        if s > !(sub_6d0c689e - givenRewards[mem[0]]):
            revert with 0, 17
        mem[0] = _20
        mem[32] = 3
        givenRewards[_20] = sub_6d0c689e
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + sub_6d0c689e - stor[_21]
        continue 
    call msg.sender with:
       value s wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
