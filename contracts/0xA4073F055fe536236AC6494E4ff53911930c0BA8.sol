contract main {




// =====================  Runtime code  =====================


#
#  - sub_41d36894(?)
#  - cancelTrade(bytes32 arg1)
#  - sub_8ebdbe17(?)
#  - sub_b0d03d2e(?)
#  - rescueTokens(address arg1, address arg2, uint256 arg3)
#
address owner;
address commissionAddress;
uint256 defaultFee;
uint256 sub_b4b5b65f;
uint8 contractEnabled;
mapping of struct pairFee;
mapping of struct stor6;
mapping of struct sub_eb8a3b70;

function contractEnabled() {
    return bool(contractEnabled)
}

function defaultFee() {
    return defaultFee
}

function owner() {
    return owner
}

function commissionAddress() {
    return commissionAddress
}

function sub_b4b5b65f(?) {
    return sub_b4b5b65f
}

function sub_eb8a3b70(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[322 len 96] = arg1, '||', arg2, mem[322 len 30]
    return bool(sub_eb8a3b70[mem[322 len 66]].field_0), 
           sub_eb8a3b70[mem[322 len 66]].field_0,
           sub_eb8a3b70[mem[322 len 66]].field_256,
           sub_eb8a3b70[mem[322 len 66]].field_512
}

function getPairFee(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[234 len 64] = arg1, '||', address(arg2), mem[246 len 10]
    return bool(pairFee[mem[234 len 42]].field_0), pairFee[mem[234 len 42]].field_256
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_a48c99cc(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 > 0
    sub_b4b5b65f = arg1
    emit 0x598a0bce: arg1
}

function setContractEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    contractEnabled = uint8(arg1)
    emit 0x31b6f728: bool(contractEnabled)
}

function setDefaultFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= 5000
    defaultFee = arg1
    emit ChangedFee(defaultFee);
}

function setCommissionAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    commissionAddress = arg1
    emit 0xc089e288: commissionAddress
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

function setPairFee(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg3 > 0
    require arg3 <= 5000
    require arg1 != arg2
    pairFee[arg1, '||', arg2, 0 >> 80].field_0 = 1
    pairFee[arg1, '||', arg2, 0 >> 80].field_256 = arg3
    pairFee[arg1, Mask(176, 80, arg1, '||', arg2, 0) >> 80 >> 80].field_0 = 1
    pairFee[arg1, Mask(176, 80, arg1, '||', arg2, 0) >> 80 >> 80].field_256 = arg3
    emit 0x71aa5a5a: address(arg1), address(arg2), arg3
}

function rescueETH(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < arg2:
        revert with 0, 'Address: insufficient balance'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
    emit 0x77f67778: address(arg1), arg2
}

function sub_9a34cd1e(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if not stor6[arg1, '||', address(arg2) << 80 >> 176].field_768:
        mem[(32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + 854] = stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024
        if stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024:
            mem[(32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + 886] = stor6[arg1, '||', address(arg2) << 80 >> 176][4].field_0
            idx = (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + 886
            s = 0
            while (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 854 > idx:
                mem[idx + 32] = stor6[arg1, '||', address(arg2) << 80 >> 176][s + 4].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if stor6[arg1, '||', address(arg2) << 80 >> 176].field_1536 > 2:
                revert with 'NH{q', 33
            idx = 0
            s = 854
            t = (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1270
            while idx < stor6[arg1, '||', address(arg2) << 80 >> 176].field_768:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(64 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1270] = stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024
            mem[(64 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1302 len 32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024] = mem[(32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + 886 len 32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024]
            if stor6[arg1, '||', address(arg2) << 80 >> 176].field_1536 >= 3:
                revert with 'NH{q', 33
            return 32, bool(stor6[arg1, '||', address(arg2) << 80 >> 176].field_0), 
                   stor6[arg1, '||', address(arg2) << 80 >> 176].field_0,
                   stor6[arg1, '||', address(arg2) << 80 >> 176].field_256,
                   stor6[arg1, '||', address(arg2) << 80 >> 176].field_512,
                   320,
                   (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + 352,
                   stor6[arg1, '||', address(arg2) << 80 >> 176].field_1280,
                   stor6[arg1, '||', address(arg2) << 80 >> 176].field_1536,
                   stor6[arg1, '||', address(arg2) << 80 >> 176].field_1792,
                   stor6[arg1, '||', address(arg2) << 80 >> 176].field_2048,
                   stor6[arg1, '||', address(arg2) << 80 >> 176].field_768,
                   mem[(32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1270 len (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 32]
        if stor6[arg1, '||', address(arg2) << 80 >> 176].field_1536 > 2:
            revert with 'NH{q', 33
        mem[(32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 886] = 32
        mem[(32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 918] = bool(stor6[arg1, '||', address(arg2) << 80 >> 176].field_0)
        mem[(32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 950] = stor6[arg1, '||', address(arg2) << 80 >> 176].field_8
    else:
        mem[854] = stor6[arg1, '||', address(arg2) << 80 >> 176][3].field_0
        idx = 854
        s = 0
        while (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + 822 > idx:
            mem[idx + 32] = stor6[arg1, '||', address(arg2) << 80 >> 176][s + 3].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + 854] = stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024
        if not stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024:
            if stor6[arg1, '||', address(arg2) << 80 >> 176].field_1536 > 2:
                revert with 'NH{q', 33
            idx = 0
            s = 854
            t = (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1270
            while idx < stor6[arg1, '||', address(arg2) << 80 >> 176].field_768:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(64 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1270] = stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024
            mem[(64 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1302 len 32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024] = mem[(32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + 886 len 32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024]
            if stor6[arg1, '||', address(arg2) << 80 >> 176].field_1536 >= 3:
                revert with 'NH{q', 33
            return 32, bool(stor6[arg1, '||', address(arg2) << 80 >> 176].field_0), 
                   stor6[arg1, '||', address(arg2) << 80 >> 176].field_0,
                   stor6[arg1, '||', address(arg2) << 80 >> 176].field_256,
                   stor6[arg1, '||', address(arg2) << 80 >> 176].field_512,
                   320,
                   (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + 352,
                   stor6[arg1, '||', address(arg2) << 80 >> 176].field_1280,
                   stor6[arg1, '||', address(arg2) << 80 >> 176].field_1536,
                   stor6[arg1, '||', address(arg2) << 80 >> 176].field_1792,
                   stor6[arg1, '||', address(arg2) << 80 >> 176].field_2048,
                   stor6[arg1, '||', address(arg2) << 80 >> 176].field_768,
                   mem[(32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1270 len (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 32]
        mem[(32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + 886] = stor6[arg1, '||', address(arg2) << 80 >> 176][4].field_0
        idx = (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + 886
        s = 0
        while (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 854 > idx:
            mem[idx + 32] = stor6[arg1, '||', address(arg2) << 80 >> 176][s + 4].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor6[arg1, '||', address(arg2) << 80 >> 176].field_1536 > 2:
            revert with 'NH{q', 33
        mem[(32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 886] = 32
        mem[(32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 918] = bool(stor6[arg1, '||', address(arg2) << 80 >> 176].field_0)
        mem[(32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 950] = stor6[arg1, '||', address(arg2) << 80 >> 176].field_0
    mem[(32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 982] = stor6[arg1, '||', address(arg2) << 80 >> 176].field_256
    mem[(32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1014] = stor6[arg1, '||', address(arg2) << 80 >> 176].field_512
    mem[(32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1046] = 320
    mem[(32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1238] = stor6[arg1, '||', address(arg2) << 80 >> 176].field_768
    idx = 0
    s = 854
    t = (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1270
    while idx < stor6[arg1, '||', address(arg2) << 80 >> 176].field_768:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1078] = (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + 352
    mem[(64 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1270] = stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024
    mem[(64 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1302 len 32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024] = mem[(32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + 886 len 32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024]
    mem[(32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1110] = stor6[arg1, '||', address(arg2) << 80 >> 176].field_1280
    if stor6[arg1, '||', address(arg2) << 80 >> 176].field_1536 >= 3:
        revert with 'NH{q', 33
    mem[(32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1142] = stor6[arg1, '||', address(arg2) << 80 >> 176].field_1536
    mem[(32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1174] = stor6[arg1, '||', address(arg2) << 80 >> 176].field_1792
    mem[(32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1206] = stor6[arg1, '||', address(arg2) << 80 >> 176].field_2048
    return memory
      from (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 886
       len (96 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * stor6[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 416
}



}
