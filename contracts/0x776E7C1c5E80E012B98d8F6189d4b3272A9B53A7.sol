contract main {




// =====================  Runtime code  =====================


#
#  - sub_41d36894(?)
#  - sub_b0d03d2e(?)
#  - rescueTokens(address arg1, address arg2, uint256 arg3)
#
address owner;
address commissionAddress;
uint256 defaultFee;
uint256 sub_b4b5b65f;
uint8 stor4;
mapping of struct pairFee;
mapping of struct sub_47a04100;
mapping of struct sub_4dd8abdb;

function contractEnabled() {
    return bool(stor4)
}

function sub_47a04100(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if sub_47a04100[arg1[all]].field_1536 >= 3:
        revert with 'NH{q', 33
    return bool(sub_47a04100[arg1[all]].field_0), 
           sub_47a04100[arg1[all]].field_0,
           sub_47a04100[arg1[all]].field_256,
           sub_47a04100[arg1[all]].field_512,
           sub_47a04100[arg1[all]].field_1280,
           sub_47a04100[arg1[all]].field_1536,
           sub_47a04100[arg1[all]].field_1792,
           sub_47a04100[arg1[all]].field_2048
}

function sub_4dd8abdb(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    return bool(sub_4dd8abdb[arg1[all]].field_0), 
           sub_4dd8abdb[arg1[all]].field_0,
           sub_4dd8abdb[arg1[all]].field_256,
           sub_4dd8abdb[arg1[all]].field_512
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
    revert with 0, 'cannot renounce ownership'
}

function setContractEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = uint8(arg1)
    emit 0x31b6f728: bool(stor4)
}

function sub_a48c99cc(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Max cannot be 0'
    sub_b4b5b65f = arg1
    emit 0x598a0bce: arg1
}

function setDefaultFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 5000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Fee cannot be more than the maximum'
    defaultFee = arg1
    emit ChangedFee(defaultFee);
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

function setCommissionAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Commission cannot be zero address'
    commissionAddress = arg1
    emit 0xc089e288: commissionAddress
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

function setPairFee(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 <= 0:
        revert with 0, 'Fee must be more than 0'
    if arg3 > 5000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Fee cannot be more than the maximum'
    if arg1 == arg2:
        revert with 0, 'Tokens cannot be equal'
    pairFee[arg1, '||', arg2, 0 >> 80].field_0 = 1
    pairFee[arg1, '||', arg2, 0 >> 80].field_256 = arg3
    pairFee[arg1, Mask(176, 80, arg1, '||', arg2, 0) >> 80 >> 80].field_0 = 1
    pairFee[arg1, Mask(176, 80, arg1, '||', arg2, 0) >> 80 >> 80].field_256 = arg3
    emit 0x71aa5a5a: address(arg1), address(arg2), arg3
}

function sub_3581441f(?) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    if sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_512 < sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_2048:
        revert with 'NH{q', 17
    mem[374 len 64] = arg1, '||', address(arg2), Mask(80, 176, sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_512 - sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_2048) >> 176
    mem[428] = 6
    if sub_47a04100['||', address(arg2), Mask(80, 176, sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_512 - sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_2048) >> 176 >> 176].field_768:
        mem[406] = sub_47a04100['||', address(arg2), Mask(80, 176, sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_512 - sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_2048) >> 176 >> 176][3].field_0
        idx = 406
        s = 0
        while (32 * sub_47a04100['||', address(arg2), Mask(80, 176, sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_512 - sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_2048) >> 176 >> 176].field_768) + 374 > idx:
            mem[idx + 32] = sub_47a04100['||', address(arg2), Mask(80, 176, sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_512 - sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_2048) >> 176 >> 176][s + 3].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * sub_47a04100['||', address(arg2), Mask(80, 176, sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_512 - sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_2048) >> 176 >> 176].field_768) + 406 len 64] = arg1, '||', address(arg2), Mask(80, 176, sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_512 - sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_2048) >> 176
    mem[(32 * sub_47a04100['||', address(arg2), Mask(80, 176, sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_512 - sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_2048) >> 176 >> 176].field_768) + 460] = 6
    mem[(32 * sub_47a04100['||', address(arg2), Mask(80, 176, sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_512 - sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_2048) >> 176 >> 176].field_768) + 406] = sub_47a04100['||', address(arg2), Mask(80, 176, sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_512 - sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_2048) >> 176 >> 176].field_1024
    if sub_47a04100['||', address(arg2), Mask(80, 176, sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_512 - sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_2048) >> 176 >> 176].field_1024:
        mem[(32 * sub_47a04100['||', address(arg2), Mask(80, 176, sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_512 - sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_2048) >> 176 >> 176].field_768) + 438] = sub_47a04100['||', address(arg2), Mask(80, 176, sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_512 - sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_2048) >> 176 >> 176][4].field_0
        idx = (32 * sub_47a04100['||', address(arg2), Mask(80, 176, sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_512 - sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_2048) >> 176 >> 176].field_768) + 438
        s = 0
        while (32 * sub_47a04100['||', address(arg2), Mask(80, 176, sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_512 - sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_2048) >> 176 >> 176].field_768) + (32 * sub_47a04100['||', address(arg2), Mask(80, 176, sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_512 - sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_2048) >> 176 >> 176].field_1024) + 406 > idx:
            mem[idx + 32] = sub_47a04100['||', address(arg2), Mask(80, 176, sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_512 - sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_2048) >> 176 >> 176][s + 4].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < sub_47a04100['||', address(arg2), Mask(80, 176, sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_512 - sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_2048) >> 176 >> 176].field_768:
        if idx >= sub_47a04100['||', address(arg2), Mask(80, 176, sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_512 - sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_2048) >> 176 >> 176].field_768:
            revert with 'NH{q', 50
        if mem[(32 * idx) + 418 len 20] != address(arg3):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= sub_47a04100['||', address(arg2), Mask(80, 176, sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_512 - sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_2048) >> 176 >> 176].field_1024:
            revert with 'NH{q', 50
        if mem[(32 * idx) + (32 * sub_47a04100['||', address(arg2), Mask(80, 176, sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_512 - sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_2048) >> 176 >> 176].field_768) + 438] and arg4 > -1 / mem[(32 * idx) + (32 * sub_47a04100['||', address(arg2), Mask(80, 176, sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_512 - sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_2048) >> 176 >> 176].field_768) + 438]:
            revert with 'NH{q', 17
        return sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_512 - sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_2048, 
               mem[(32 * idx) + (32 * sub_47a04100['||', address(arg2), Mask(80, 176, sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_512 - sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_2048) >> 176 >> 176].field_768) + 438],
               mem[(32 * idx) + (32 * sub_47a04100['||', address(arg2), Mask(80, 176, sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_512 - sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_2048) >> 176 >> 176].field_768) + 438] * arg4 / 10^18
    if 0 and arg4 > -1 / 0:
        revert with 'NH{q', 17
    return sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_512 - sub_47a04100[arg1, '||', address(arg2), 0 >> 176].field_2048, 
           0,
           0
}

function sub_9a34cd1e(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 96
    mem[256] = 96
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[448] = arg1
    mem[480] = '||'
    mem[482] = address(arg2)
    mem[416] = 54
    mem[502] = bool(sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_0)
    mem[534] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_8
    mem[566] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_256
    mem[598] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_512
    mem[822] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768
    if not sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768:
        mem[630] = 822
        mem[64] = (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 886
        mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + 854] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024
        if not sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024:
            if sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1536 > 2:
                revert with 'NH{q', 33
            mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 886] = 32
            mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 918] = bool(sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_0)
            mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 950] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_8
            mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 982] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_256
            mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1014] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_512
            mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1046] = 320
            mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1238] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768
            idx = 0
            s = 854
            t = (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1270
            while idx < sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1078] = (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + 352
            mem[(64 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1270] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024
            mem[(64 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1302 len 32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024] = mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + 886 len 32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024]
            mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1110] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1280
            if sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1536 >= 3:
                revert with 'NH{q', 33
            mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1142] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1536
            mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1174] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1792
            mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1206] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_2048
            return memory
              from (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 886
               len (96 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 416
        mem[0] = sha3(arg1, '||', address(arg2) << 80 >> 176, 6) + 4
        mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + 886] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176][4].field_0
        idx = (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + 886
        s = 0
        while (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 854 > idx:
            mem[idx + 32] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176][s + 4].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[662] = (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + 854
        mem[694] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1280
        if sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1536 > 2:
            revert with 'NH{q', 33
        mem[726] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1536
        mem[758] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1792
        mem[790] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_2048
        mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 886] = 32
        mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 918] = bool(sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_0)
        mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 950] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_0
        mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 982] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_256
        mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1014] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_512
        mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1046] = 320
        mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1238] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768
        idx = 0
        s = 854
        t = mem[64] + 384
        while idx < sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1078] = (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + 352
        _208 = mem[mem[662]]
        mem[(64 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1270] = mem[mem[662]]
        mem[(64 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1302 len 32 * _208] = mem[mem[662] + 32 len 32 * _208]
        mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1110] = mem[694]
        if mem[726] >= 3:
            revert with 'NH{q', 33
        mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1142] = mem[726]
        mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1174] = mem[758]
        mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1206] = mem[790]
        return memory
          from mem[64]
           len (64 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + (32 * _208) + -mem[64] + 1302
    mem[0] = sha3(arg1, '||', address(arg2) << 80 >> 176, 6) + 3
    mem[854] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176][3].field_0
    idx = 854
    s = 0
    while (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + 822 > idx:
        mem[idx + 32] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[630] = 822
    mem[64] = (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 886
    mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + 854] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024
    if not sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024:
        mem[662] = (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + 854
        mem[694] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1280
        if sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1536 > 2:
            revert with 'NH{q', 33
        mem[726] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1536
        mem[758] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1792
        mem[790] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_2048
        mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 886] = 32
        mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 918] = bool(sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_0)
        mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 950] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_0
        mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 982] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_256
        mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1014] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_512
        mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1046] = 320
        mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1238] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768
        idx = 0
        s = 854
        t = mem[64] + 384
        while idx < sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1078] = (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + 352
        _209 = mem[mem[662]]
        mem[(64 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1270] = mem[mem[662]]
        mem[(64 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1302 len 32 * _209] = mem[mem[662] + 32 len 32 * _209]
        mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1110] = mem[694]
        if mem[726] >= 3:
            revert with 'NH{q', 33
        mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1142] = mem[726]
        mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1174] = mem[758]
        mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1206] = mem[790]
        return memory
          from mem[64]
           len (64 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + (32 * _209) + -mem[64] + 1302
    mem[0] = sha3(arg1, '||', address(arg2) << 80 >> 176, 6) + 4
    mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + 886] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176][4].field_0
    idx = (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + 886
    s = 0
    while (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 854 > idx:
        mem[idx + 32] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[662] = (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + 854
    mem[694] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1280
    if sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1536 > 2:
        revert with 'NH{q', 33
    mem[726] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1536
    mem[758] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1792
    mem[790] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_2048
    mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 886] = 32
    mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 918] = bool(sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_0)
    mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 950] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_0
    mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 982] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_256
    mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1014] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_512
    mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1046] = 320
    mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1238] = sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768
    idx = 0
    s = 854
    t = mem[64] + 384
    while idx < sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1078] = (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + 352
    _295 = mem[mem[662]]
    mem[(64 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1270] = mem[mem[662]]
    mem[(64 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1302 len 32 * _295] = mem[mem[662] + 32 len 32 * _295]
    mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1110] = mem[694]
    if mem[726] >= 3:
        revert with 'NH{q', 33
    mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1142] = mem[726]
    mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1174] = mem[758]
    mem[(32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + 1206] = mem[790]
    return memory
      from mem[64]
       len (64 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_768) + (32 * sub_47a04100[arg1, '||', address(arg2) << 80 >> 176].field_1024) + (32 * _295) + -mem[64] + 1302
}



}
