contract main {




// =====================  Runtime code  =====================


#
#  - sub_3ab2fc84(?)
#
address owner;
mapping of uint8 stor1;
address stor2;
array of uint256 sub_197e3d55;
mapping of uint256 stor4;
mapping of uint256 sub_97d7a490;
array of address sub_7e225771;
mapping of uint256 stor7;
array of uint256 sub_635eace3;
mapping of uint256 sub_77c26915;
array of address sub_0bd03d93;
mapping of uint8 stor11;
mapping of uint8 stor12;
mapping of uint8 stor13;
uint8 constructed;
uint256 stor15;
address genesisAddress;
array of uint256 sub_2a0491d2;

function sub_0bd03d93(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_0bd03d93.length
    return address(sub_0bd03d93[arg1])
}

function sub_13bc1096(?) payable {
    return sub_635eace3.length
}

function sub_197e3d55(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_197e3d55[arg1]
}

function sub_29dd7995(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor11[arg1])
}

function sub_2a0491d2(?) payable {
    return sub_2a0491d2[0 len sub_2a0491d2.length]
}

function constructed() payable {
    return bool(constructed)
}

function sub_56359baa(?) payable {
    return sub_7e225771.length
}

function sub_635eace3(?) payable {
    return uint256(sub_635eace3[arg1][0 len sub_635eace3[arg1].length].field_0)
}

function sub_77c26915(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_77c26915[arg1]
}

function sub_7e225771(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_7e225771.length
    return address(sub_7e225771[arg1])
}

function owner() payable {
    return owner
}

function sub_97d7a490(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_97d7a490[arg1]
}

function sub_a5e02039(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor13[arg1])
}

function genesis() payable {
    return genesisAddress
}

function isWhitelistAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    return bool(stor1[address(arg1)])
}

function sub_fb157711(?) payable {
    return sub_0bd03d93.length
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function renounceWhitelistAdmin() payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor1[address(msg.sender)] = 0
    emit WhitelistAdminRemoved(msg.sender);
}

function sub_22fbf767(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = stor4[arg1[all]]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_df5e6509(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = stor7[arg1[all]]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_6ac7e18a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = bool(stor12[arg1[all]])
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_f6025b10(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    require arg2 < sub_197e3d55[arg1[all]]
    mem[ceil32(arg1.length) + 128] = sub_197e3d55[arg1[all]][arg2]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_16c9bffc(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if stor15 != 1:
        revert with 0, 'UniftyMarketWrapper: LOCKED'
    stor15 = 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin role'
    stor11[address(arg1)] = uint8(bool(arg2))
    stor15 = 1
}

function sub_5226ad2f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if stor15 != 1:
        revert with 0, 'UniftyMarketWrapper: LOCKED'
    stor15 = 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin role'
    stor13[address(arg1)] = uint8(bool(arg2))
    stor15 = 1
}

function init(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if constructed:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniftyMarketWrapper: must not be constructed yet'
    constructed = 1
    stor15 = 1
    stor2 = arg1
    owner = msg.sender
    emit OwnershipTransferred(0, msg.sender);
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if stor1[address(msg.sender)]:
        revert with 0, 'Roles: account already has role'
    stor1[address(msg.sender)] = 1
    emit WhitelistAdminAdded(msg.sender);
}

function addWhitelistAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin role'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if stor1[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor1[address(arg1)] = 1
    emit WhitelistAdminAdded(arg1);
}

function sub_ffe0425d(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == bool(arg3)
    if stor15 != 1:
        revert with 0, 'UniftyMarketWrapper: LOCKED'
    stor15 = 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin role'
    uint8(stor[sha3(address(arg1), 96, arg2, 1, 0x2d00000000000000000000000000000000000000000000000000000000000000, 12)]) = uint8(bool(arg3))
    stor15 = 1
}

function setGenesis(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor15 != 1:
        revert with 0, 'UniftyMarketWrapper: LOCKED'
    stor15 = 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin role'
    if genesisAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'UniftyMarketWrapper#setGenesis: Genesis set already'
    genesisAddress = arg1
    stor15 = 1
}

function sub_98e770bb(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    if stor15 != 1:
        revert with 0, 'UniftyMarketWrapper: LOCKED'
    stor15 = 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin role'
    sub_2a0491d2.length = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        sub_2a0491d2[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while sub_2a0491d2.length + 31 / 32 > idx:
        sub_2a0491d2[idx] = 0
        idx = idx + 1
        continue 
    emit 0x897da667: Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), this.address
    stor15 = 1
}

function sub_24e5bedd(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if stor15 != 1:
        revert with 0, 'UniftyMarketWrapper: LOCKED'
    stor15 = 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin role'
    if arg2:
        if sub_77c26915[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'UniftyMarketWrapper#setAllowedWallets: no valid allowed wallet state selected'
        sub_0bd03d93.length++
        if not sub_0bd03d93.length:
            address(sub_0bd03d93[sub_0bd03d93.length]) = 0
        address(sub_0bd03d93[sub_0bd03d93.length]) = address(arg1)
        if 1 > sub_0bd03d93.length:
            revert with 0, 'SafeMath#sub: UNDERFLOW'
        sub_77c26915[address(arg1)] = sub_0bd03d93.length - 1
    else:
        if not sub_77c26915[address(arg1)]:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'UniftyMarketWrapper#setAllowedWallets: no valid allowed wallet state selected'
            if sub_77c26915[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'UniftyMarketWrapper#setAllowedWallets: no valid allowed wallet state selected'
            sub_0bd03d93.length++
            if not sub_0bd03d93.length:
                address(sub_0bd03d93[sub_0bd03d93.length]) = 0
            address(sub_0bd03d93[sub_0bd03d93.length]) = address(arg1)
            if 1 > sub_0bd03d93.length:
                revert with 0, 'SafeMath#sub: UNDERFLOW'
            sub_77c26915[address(arg1)] = sub_0bd03d93.length - 1
        else:
            if 1 > sub_0bd03d93.length:
                revert with 0, 'SafeMath#sub: UNDERFLOW'
            require sub_0bd03d93.length - 1 < sub_0bd03d93.length
            require sub_77c26915[address(arg1)] < sub_0bd03d93.length
            address(sub_0bd03d93[stor9[address(arg1)]]) = address(sub_0bd03d93[sub_0bd03d93.length])
            sub_77c26915[address(stor10[stor10.length])] = 0
            require sub_0bd03d93.length - 1 < sub_0bd03d93.length
            address(sub_0bd03d93[sub_0bd03d93.length]) = 0
            sub_0bd03d93.length--
            if sub_0bd03d93.length > sub_0bd03d93.length - 1:
                idx = sub_0bd03d93.length - 1
                while sub_0bd03d93.length > idx:
                    uint256(sub_0bd03d93[idx]) = 0
                    idx = idx + 1
                    continue 
    stor15 = 1
}

function sub_db489512(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if stor15 != 1:
        revert with 0, 'UniftyMarketWrapper: LOCKED'
    stor15 = 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin role'
    if arg2:
        if sub_97d7a490[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'UniftyMarketWrapper#setAllowedCollection: no valid allowed collection state selected'
        sub_7e225771.length++
        if not sub_7e225771.length:
            address(sub_7e225771[sub_7e225771.length]) = 0
        address(sub_7e225771[sub_7e225771.length]) = address(arg1)
        if 1 > sub_7e225771.length:
            revert with 0, 'SafeMath#sub: UNDERFLOW'
        sub_97d7a490[address(arg1)] = sub_7e225771.length - 1
    else:
        if not sub_97d7a490[address(arg1)]:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'UniftyMarketWrapper#setAllowedCollection: no valid allowed collection state selected'
            if sub_97d7a490[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'UniftyMarketWrapper#setAllowedCollection: no valid allowed collection state selected'
            sub_7e225771.length++
            if not sub_7e225771.length:
                address(sub_7e225771[sub_7e225771.length]) = 0
            address(sub_7e225771[sub_7e225771.length]) = address(arg1)
            if 1 > sub_7e225771.length:
                revert with 0, 'SafeMath#sub: UNDERFLOW'
            sub_97d7a490[address(arg1)] = sub_7e225771.length - 1
        else:
            if 1 > sub_7e225771.length:
                revert with 0, 'SafeMath#sub: UNDERFLOW'
            require sub_7e225771.length - 1 < sub_7e225771.length
            require sub_97d7a490[address(arg1)] < sub_7e225771.length
            address(sub_7e225771[stor5[address(arg1)]]) = address(sub_7e225771[sub_7e225771.length])
            sub_97d7a490[address(stor6[stor6.length])] = 0
            require sub_7e225771.length - 1 < sub_7e225771.length
            address(sub_7e225771[sub_7e225771.length]) = 0
            sub_7e225771.length--
            if sub_7e225771.length > sub_7e225771.length - 1:
                idx = sub_7e225771.length - 1
                while sub_7e225771.length > idx:
                    uint256(sub_7e225771[idx]) = 0
                    idx = idx + 1
                    continue 
    stor15 = 1
}

function sub_684e5d13(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor15 != 1:
        revert with 0, 'UniftyMarketWrapper: LOCKED'
    stor15 = 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin role'
    mem[96] = 0
    mem[128] = 96
    mem[160] = 96
    mem[192] = 96
    mem[224] = 0
    mem[256] = 96
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 96
    mem[480] = 0x6b42fbaf00000000000000000000000000000000000000000000000000000000
    mem[484] = arg1
    require ext_code.size(stor2)
    staticcall stor2.0x6b42fbaf with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[480 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _12 = mem[480 len 4], Mask(224, 32, arg1) >> 32
    require mem[480 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[480 len 4], Mask(224, 32, arg1) >> 32 >= 384
    require bool(ceil32(return_data.size) + 864 <= test266151307())
    mem[64] = ceil32(return_data.size) + 864
    require mem[mem[480 len 4], Mask(224, 32, arg1) >> 32 + 480] == mem[mem[480 len 4], Mask(224, 32, arg1) >> 32 + 492 len 20]
    mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], Mask(224, 32, arg1) >> 32 + 480]
    _15 = mem[_12 + 512]
    require mem[_12 + 512] <= test266151307()
    require _12 + mem[_12 + 512] + 511 < return_data.size + 480
    _16 = mem[_12 + mem[_12 + 512] + 480]
    require mem[_12 + mem[_12 + 512] + 480] <= test266151307()
    require (32 * mem[_12 + mem[_12 + 512] + 480]) + 416 >= 384 and ceil32(return_data.size) + (32 * mem[_12 + mem[_12 + 512] + 480]) + 896 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[_12 + mem[_12 + 512] + 480]) + 896
    mem[ceil32(return_data.size) + 864] = _16
    require _12 + _15 + (32 * _16) + 32 <= return_data.size
    idx = 0
    s = _12 + _15 + 512
    t = ceil32(return_data.size) + 896
    while idx < _16:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 512] = ceil32(return_data.size) + 864
    _49 = mem[_12 + 544]
    require mem[_12 + 544] <= test266151307()
    require _12 + mem[_12 + 544] + 511 < return_data.size + 480
    _51 = mem[_12 + mem[_12 + 544] + 480]
    require mem[_12 + mem[_12 + 544] + 480] <= test266151307()
    _52 = mem[64]
    require mem[64] + (32 * mem[_12 + mem[_12 + 544] + 480]) + 32 >= mem[64] and mem[64] + (32 * mem[_12 + mem[_12 + 544] + 480]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[_12 + mem[_12 + 544] + 480]) + 32
    mem[_52] = mem[_12 + mem[_12 + 544] + 480]
    require _12 + _49 + (32 * _51) + 32 <= return_data.size
    idx = 0
    s = _12 + _49 + 512
    t = _52 + 32
    while idx < _51:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 544] = _52
    _80 = mem[_12 + 576]
    require mem[_12 + 576] <= test266151307()
    require _12 + mem[_12 + 576] + 511 < return_data.size + 480
    _82 = mem[_12 + mem[_12 + 576] + 480]
    require mem[_12 + mem[_12 + 576] + 480] <= test266151307()
    _83 = mem[64]
    require mem[64] + (32 * mem[_12 + mem[_12 + 576] + 480]) + 32 >= mem[64] and mem[64] + (32 * mem[_12 + mem[_12 + 576] + 480]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[_12 + mem[_12 + 576] + 480]) + 32
    mem[_83] = mem[_12 + mem[_12 + 576] + 480]
    require _12 + _80 + (32 * _82) + 32 <= return_data.size
    idx = 0
    s = _12 + _80 + 512
    t = _83 + 32
    while idx < _82:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 576] = _83
    require mem[_12 + 608] == mem[_12 + 620 len 20]
    mem[ceil32(return_data.size) + 608] = mem[_12 + 608]
    _109 = mem[_12 + 640]
    require mem[_12 + 640] <= test266151307()
    require _12 + mem[_12 + 640] + 511 < return_data.size + 480
    _110 = mem[_12 + mem[_12 + 640] + 480]
    require mem[_12 + mem[_12 + 640] + 480] <= test266151307()
    _111 = mem[64]
    require mem[64] + (32 * mem[_12 + mem[_12 + 640] + 480]) + 32 >= mem[64] and mem[64] + (32 * mem[_12 + mem[_12 + 640] + 480]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[_12 + mem[_12 + 640] + 480]) + 32
    mem[_111] = mem[_12 + mem[_12 + 640] + 480]
    require _12 + _109 + (32 * _110) + 32 <= return_data.size
    idx = 0
    s = _12 + _109 + 512
    t = _111 + 32
    while idx < _110:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 640] = _111
    require mem[_12 + 672] == mem[_12 + 672]
    mem[ceil32(return_data.size) + 672] = mem[_12 + 672]
    require mem[_12 + 704] == mem[_12 + 704]
    mem[ceil32(return_data.size) + 704] = mem[_12 + 704]
    require mem[_12 + 736] == bool(mem[_12 + 736])
    mem[ceil32(return_data.size) + 736] = mem[_12 + 736]
    require mem[_12 + 768] == mem[_12 + 768]
    mem[ceil32(return_data.size) + 768] = mem[_12 + 768]
    require mem[_12 + 800] == mem[_12 + 800]
    mem[ceil32(return_data.size) + 800] = mem[_12 + 800]
    _136 = mem[_12 + 832]
    require mem[_12 + 832] <= test266151307()
    require _12 + mem[_12 + 832] + 511 < return_data.size + 480
    _137 = mem[_12 + mem[_12 + 832] + 480]
    require mem[_12 + mem[_12 + 832] + 480] <= test266151307()
    _138 = mem[64]
    require mem[64] + (32 * mem[_12 + mem[_12 + 832] + 480]) + 32 >= mem[64] and mem[64] + (32 * mem[_12 + mem[_12 + 832] + 480]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[_12 + mem[_12 + 832] + 480]) + 32
    mem[_138] = mem[_12 + mem[_12 + 832] + 480]
    require _12 + _136 + (32 * _137) + 32 <= return_data.size
    idx = 0
    s = _12 + _136 + 512
    t = _138 + 32
    while idx < _137:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 832] = _138
    _158 = mem[mem[ceil32(return_data.size) + 544]]
    idx = 0
    while idx < _158:
        _159 = mem[ceil32(return_data.size) + 480]
        require idx < mem[mem[ceil32(return_data.size) + 640]]
        _162 = mem[(32 * idx) + mem[ceil32(return_data.size) + 640] + 32]
        mem[mem[64]] = 0x75d0be1e00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_159)
        mem[mem[64] + 36] = address(_159)
        mem[mem[64] + 68] = _162
        mem[mem[64] + 100] = 0
        mem[mem[64] + 132] = arg1
        mem[mem[64] + 164] = idx
        require ext_code.size(stor2)
        call stor2.0x75d0be1e with:
             gas gas_remaining wei
            args address(_159), address(_159), _162, 0, arg1, idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _158 = mem[mem[ceil32(return_data.size) + 544]]
        idx = idx + 1
        continue 
    stor15 = 1
}

function sub_374dbdf1(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == bool(arg3)
    if stor15 != 1:
        revert with 0, 'UniftyMarketWrapper: LOCKED'
    stor15 = 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin role'
    mem[128] = address(arg1)
    mem[160] = 96
    mem[224] = 1
    mem[256] = 0x2d00000000000000000000000000000000000000000000000000000000000000
    mem[192] = arg2
    mem[288 len 160] = address(arg1), 96, arg2, 1, 0x2d00000000000000000000000000000000000000000000000000000000000000
    if arg3:
        if uint256(stor[sha3(address(arg1), 96, arg2, 1, 0x2d00000000000000000000000000000000000000000000000000000000000000, 7)]) != 0:
            revert with 0, 'UniftyMarketWrapper#setAllowedNfts: no valid allowed NFT state selected'
        if not sub_635eace3.length:
            mem[320] = 0
            mem[352] = 96
            mem[416] = 1
            mem[448] = 0x2d00000000000000000000000000000000000000000000000000000000000000
            mem[384] = 0
            mem[288] = 160
            sub_635eace3.length++
            uint256(sub_635eace3[sub_635eace3.length].field_0) = 321
            s = 0
            idx = 320
            while 480 > idx:
                uint256(sub_635eace3[sub_635eace3.length + s].field_0) = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 5
            while sub_635eace3[sub_635eace3.length].length + 31 / 32 > idx:
                uint256(sub_635eace3[sub_635eace3.length + idx].field_0) = 0
                idx = idx + 1
                continue 
        sub_635eace3.length++
        uint256(sub_635eace3[sub_635eace3.length].field_0) = 321
        s = 0
        idx = 128
        while 288 > idx:
            uint256(sub_635eace3[sub_635eace3.length + s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 5
        while sub_635eace3[sub_635eace3.length].length + 31 / 32 > idx:
            uint256(sub_635eace3[sub_635eace3.length + idx].field_0) = 0
            idx = idx + 1
            continue 
        if 1 > sub_635eace3.length:
            revert with 0, 'SafeMath#sub: UNDERFLOW'
        uint256(stor[sha3(address(arg1), 96, arg2, 1, 0x2d00000000000000000000000000000000000000000000000000000000000000, 7)]) = sub_635eace3.length - 1
    else:
        mem[448] = 7
        if 0 == uint256(stor[sha3(address(arg1), 96, arg2, 1, 0x2d00000000000000000000000000000000000000000000000000000000000000, 7)]):
            if not arg3:
                revert with 0, 'UniftyMarketWrapper#setAllowedNfts: no valid allowed NFT state selected'
            mem[288 len 160] = address(arg1), 96, arg2, 1, 0x2d00000000000000000000000000000000000000000000000000000000000000
            if stor7[address(arg1), 96, arg2, 1, 0x2d00000000000000000000000000000000000000000000000000000000000000 >> 1024] != 0:
                revert with 0, 'UniftyMarketWrapper#setAllowedNfts: no valid allowed NFT state selected'
            if not sub_635eace3.length:
                mem[320] = 0
                mem[352] = 96
                mem[416] = 1
                mem[448] = 0x2d00000000000000000000000000000000000000000000000000000000000000
                mem[384] = 0
                mem[288] = 160
                sub_635eace3.length++
                uint256(sub_635eace3[sub_635eace3.length].field_0) = 321
                s = 0
                idx = 320
                while 480 > idx:
                    uint256(sub_635eace3[sub_635eace3.length + s].field_0) = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 5
                while sub_635eace3[sub_635eace3.length].length + 31 / 32 > idx:
                    uint256(sub_635eace3[sub_635eace3.length + idx].field_0) = 0
                    idx = idx + 1
                    continue 
            sub_635eace3.length++
            uint256(sub_635eace3[sub_635eace3.length].field_0) = 321
            s = 0
            idx = 128
            while 288 > idx:
                uint256(sub_635eace3[sub_635eace3.length + s].field_0) = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 5
            while sub_635eace3[sub_635eace3.length].length + 31 / 32 > idx:
                uint256(sub_635eace3[sub_635eace3.length + idx].field_0) = 0
                idx = idx + 1
                continue 
            if 1 > sub_635eace3.length:
                revert with 0, 'SafeMath#sub: UNDERFLOW'
            uint256(stor[sha3(address(arg1), 96, arg2, 1, 0x2d00000000000000000000000000000000000000000000000000000000000000, 7)]) = sub_635eace3.length - 1
        else:
            if 1 > sub_635eace3.length:
                revert with 0, 'SafeMath#sub: UNDERFLOW'
            require sub_635eace3.length - 1 < sub_635eace3.length
            mem[320] = uint256(stor[sha3(('name', 'sub_635eace3', 8) + sub_635eace3.length - 1)].field_0)
            idx = 320
            s = 0
            while stor[('name', 'sub_635eace3', 8) + sub_635eace3.length - 1].length + 288 > idx:
                mem[idx + 32] = uint256(stor[s + sha3(('name', 'sub_635eace3', 8) + sub_635eace3.length - 1)].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(stor[('name', 'sub_635eace3', 8) + sub_635eace3.length - 1].length) + 320 len 160] = address(arg1), 96, arg2, 1, 0x2d00000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor[('name', 'sub_635eace3', 8) + sub_635eace3.length - 1].length) + 480] = 7
            require stor7[address(arg1), 96, arg2, 1, 0x2d00000000000000000000000000000000000000000000000000000000000000 >> 1024] < sub_635eace3.length
            uint256(sub_635eace3[stor7[address(arg1), 96, arg2, 1, 0x2d00000000000000000000000000000000000000000000000000000000000000 >> 1024]][].field_0) = Array(len=stor[('name', 'sub_635eace3', 8) + sub_635eace3.length - 1].length, data=mem[320 len stor[('name', 'sub_635eace3', 8) + sub_635eace3.length - 1].length])
            mem[ceil32(stor[('name', 'sub_635eace3', 8) + sub_635eace3.length - 1].length) + 320 len ceil32(stor[('name', 'sub_635eace3', 8) + sub_635eace3.length - 1].length)] = mem[320 len ceil32(stor[('name', 'sub_635eace3', 8) + sub_635eace3.length - 1].length)]
            mem[stor[('name', 'sub_635eace3', 8) + sub_635eace3.length - 1].length + ceil32(stor[('name', 'sub_635eace3', 8) + sub_635eace3.length - 1].length) + 320] = 7
            uint256(stor[sha3(mem[ceil32(stor[('name', 'stor8', 8) + stor8.length - 1].length) + 320 len stor[('name', 'stor8', 8) + stor8.length - 1].length + 32])]) = 0
            require sub_635eace3.length - 1 < sub_635eace3.length
            uint256(sub_635eace3[sub_635eace3.length].field_0) = 0
            if 31 < stor[('name', 'sub_635eace3', 8) + sub_635eace3.length - 1].length:
                idx = 0
                while stor[('name', 'sub_635eace3', 8) + sub_635eace3.length - 1].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3(('name', 'sub_635eace3', 8) + sub_635eace3.length - 1)].field_0) = 0
                    idx = idx + 1
                    continue 
            sub_635eace3.length--
            if sub_635eace3.length > sub_635eace3.length - 1:
                mem[0] = 8
                idx = sub_635eace3.length - 1
                while sha3(8) + sub_635eace3.length > idx + sha3(mem[0]):
                    uint256(stor[idx + sha3(mem[0])]) = 0
                    if 31 < stor[idx + sha3(mem[0])].length:
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                    idx = idx + 1
                    continue 
    stor15 = 1
}

function sub_1628e0f5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor15 != 1:
        revert with 0, 'UniftyMarketWrapper: LOCKED'
    stor15 = 0
    mem[100] = msg.sender
    mem[132] = arg1
    require ext_code.size(stor2)
    staticcall stor2.0x5e068739 with:
            gas gas_remaining wei
           args msg.sender, arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'UniftyMarketWrapper#cancelAsk: Access denied.'
    mem[ceil32(return_data.size) + 96] = 0
    mem[ceil32(return_data.size) + 128] = 96
    mem[ceil32(return_data.size) + 160] = 96
    mem[ceil32(return_data.size) + 192] = 96
    mem[ceil32(return_data.size) + 224] = 0
    mem[ceil32(return_data.size) + 256] = 96
    mem[ceil32(return_data.size) + 288] = 0
    mem[ceil32(return_data.size) + 320] = 0
    mem[ceil32(return_data.size) + 352] = 0
    mem[ceil32(return_data.size) + 384] = 0
    mem[ceil32(return_data.size) + 416] = 0
    mem[ceil32(return_data.size) + 448] = 96
    mem[ceil32(return_data.size) + 480] = 0x6b42fbaf00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 484] = arg1
    require ext_code.size(stor2)
    staticcall stor2.0x6b42fbaf with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _13 = mem[ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg1) >> 32 >= 384
    require bool((2 * ceil32(return_data.size)) + 864 <= test266151307())
    mem[64] = (2 * ceil32(return_data.size)) + 864
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg1) >> 32 + 480] == mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg1) >> 32 + 492 len 20]
    mem[(2 * ceil32(return_data.size)) + 480] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg1) >> 32 + 480]
    _16 = mem[ceil32(return_data.size) + _13 + 512]
    require mem[ceil32(return_data.size) + _13 + 512] <= test266151307()
    require ceil32(return_data.size) + _13 + mem[ceil32(return_data.size) + _13 + 512] + 511 < ceil32(return_data.size) + return_data.size + 480
    _17 = mem[ceil32(return_data.size) + _13 + mem[ceil32(return_data.size) + _13 + 512] + 480]
    require mem[ceil32(return_data.size) + _13 + mem[ceil32(return_data.size) + _13 + 512] + 480] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + _13 + mem[ceil32(return_data.size) + _13 + 512] + 480]) + 416 >= 384 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + _13 + mem[ceil32(return_data.size) + _13 + 512] + 480]) + 896 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + _13 + mem[ceil32(return_data.size) + _13 + 512] + 480]) + 896
    mem[(2 * ceil32(return_data.size)) + 864] = mem[ceil32(return_data.size) + _13 + mem[ceil32(return_data.size) + _13 + 512] + 480]
    require _13 + _16 + (32 * _17) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _13 + _16 + 512
    t = (2 * ceil32(return_data.size)) + 896
    while idx < _17:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 512] = (2 * ceil32(return_data.size)) + 864
    _48 = mem[ceil32(return_data.size) + _13 + 544]
    require mem[ceil32(return_data.size) + _13 + 544] <= test266151307()
    require ceil32(return_data.size) + _13 + mem[ceil32(return_data.size) + _13 + 544] + 511 < ceil32(return_data.size) + return_data.size + 480
    _50 = mem[ceil32(return_data.size) + _13 + mem[ceil32(return_data.size) + _13 + 544] + 480]
    require mem[ceil32(return_data.size) + _13 + mem[ceil32(return_data.size) + _13 + 544] + 480] <= test266151307()
    _51 = mem[64]
    require mem[64] + (32 * mem[ceil32(return_data.size) + _13 + mem[ceil32(return_data.size) + _13 + 544] + 480]) + 32 >= mem[64] and mem[64] + (32 * mem[ceil32(return_data.size) + _13 + mem[ceil32(return_data.size) + _13 + 544] + 480]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[ceil32(return_data.size) + _13 + mem[ceil32(return_data.size) + _13 + 544] + 480]) + 32
    mem[_51] = _50
    require _13 + _48 + (32 * _50) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _13 + _48 + 512
    t = _51 + 32
    while idx < _50:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 544] = _51
    _78 = mem[ceil32(return_data.size) + _13 + 576]
    require mem[ceil32(return_data.size) + _13 + 576] <= test266151307()
    require ceil32(return_data.size) + _13 + mem[ceil32(return_data.size) + _13 + 576] + 511 < ceil32(return_data.size) + return_data.size + 480
    _80 = mem[ceil32(return_data.size) + _13 + mem[ceil32(return_data.size) + _13 + 576] + 480]
    require mem[ceil32(return_data.size) + _13 + mem[ceil32(return_data.size) + _13 + 576] + 480] <= test266151307()
    _81 = mem[64]
    require mem[64] + (32 * mem[ceil32(return_data.size) + _13 + mem[ceil32(return_data.size) + _13 + 576] + 480]) + 32 >= mem[64] and mem[64] + (32 * mem[ceil32(return_data.size) + _13 + mem[ceil32(return_data.size) + _13 + 576] + 480]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[ceil32(return_data.size) + _13 + mem[ceil32(return_data.size) + _13 + 576] + 480]) + 32
    mem[_81] = _80
    require _13 + _78 + (32 * _80) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _13 + _78 + 512
    t = _81 + 32
    while idx < _80:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 576] = _81
    require mem[ceil32(return_data.size) + _13 + 608] == mem[ceil32(return_data.size) + _13 + 620 len 20]
    mem[(2 * ceil32(return_data.size)) + 608] = mem[ceil32(return_data.size) + _13 + 608]
    _106 = mem[ceil32(return_data.size) + _13 + 640]
    require mem[ceil32(return_data.size) + _13 + 640] <= test266151307()
    require ceil32(return_data.size) + _13 + mem[ceil32(return_data.size) + _13 + 640] + 511 < ceil32(return_data.size) + return_data.size + 480
    _107 = mem[ceil32(return_data.size) + _13 + mem[ceil32(return_data.size) + _13 + 640] + 480]
    require mem[ceil32(return_data.size) + _13 + mem[ceil32(return_data.size) + _13 + 640] + 480] <= test266151307()
    _108 = mem[64]
    require mem[64] + (32 * mem[ceil32(return_data.size) + _13 + mem[ceil32(return_data.size) + _13 + 640] + 480]) + 32 >= mem[64] and mem[64] + (32 * mem[ceil32(return_data.size) + _13 + mem[ceil32(return_data.size) + _13 + 640] + 480]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[ceil32(return_data.size) + _13 + mem[ceil32(return_data.size) + _13 + 640] + 480]) + 32
    mem[_108] = mem[ceil32(return_data.size) + _13 + mem[ceil32(return_data.size) + _13 + 640] + 480]
    require _13 + _106 + (32 * _107) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _13 + _106 + 512
    t = _108 + 32
    while idx < _107:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 640] = _108
    require mem[ceil32(return_data.size) + _13 + 672] == mem[ceil32(return_data.size) + _13 + 672]
    mem[(2 * ceil32(return_data.size)) + 672] = mem[ceil32(return_data.size) + _13 + 672]
    require mem[ceil32(return_data.size) + _13 + 704] == mem[ceil32(return_data.size) + _13 + 704]
    mem[(2 * ceil32(return_data.size)) + 704] = mem[ceil32(return_data.size) + _13 + 704]
    require mem[ceil32(return_data.size) + _13 + 736] == bool(mem[ceil32(return_data.size) + _13 + 736])
    mem[(2 * ceil32(return_data.size)) + 736] = mem[ceil32(return_data.size) + _13 + 736]
    require mem[ceil32(return_data.size) + _13 + 768] == mem[ceil32(return_data.size) + _13 + 768]
    mem[(2 * ceil32(return_data.size)) + 768] = mem[ceil32(return_data.size) + _13 + 768]
    require mem[ceil32(return_data.size) + _13 + 800] == mem[ceil32(return_data.size) + _13 + 800]
    mem[(2 * ceil32(return_data.size)) + 800] = mem[ceil32(return_data.size) + _13 + 800]
    _132 = mem[ceil32(return_data.size) + _13 + 832]
    require mem[ceil32(return_data.size) + _13 + 832] <= test266151307()
    require ceil32(return_data.size) + _13 + mem[ceil32(return_data.size) + _13 + 832] + 511 < ceil32(return_data.size) + return_data.size + 480
    _133 = mem[ceil32(return_data.size) + _13 + mem[ceil32(return_data.size) + _13 + 832] + 480]
    require mem[ceil32(return_data.size) + _13 + mem[ceil32(return_data.size) + _13 + 832] + 480] <= test266151307()
    _134 = mem[64]
    require mem[64] + (32 * mem[ceil32(return_data.size) + _13 + mem[ceil32(return_data.size) + _13 + 832] + 480]) + 32 >= mem[64] and mem[64] + (32 * mem[ceil32(return_data.size) + _13 + mem[ceil32(return_data.size) + _13 + 832] + 480]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[ceil32(return_data.size) + _13 + mem[ceil32(return_data.size) + _13 + 832] + 480]) + 32
    mem[_134] = _133
    require _13 + _132 + (32 * _133) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _13 + _132 + 512
    t = _134 + 32
    while idx < _133:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 832] = _134
    _152 = mem[mem[(2 * ceil32(return_data.size)) + 544]]
    idx = 0
    while idx < _152:
        require idx < mem[mem[(2 * ceil32(return_data.size)) + 640]]
        _155 = mem[(32 * idx) + mem[(2 * ceil32(return_data.size)) + 640] + 32]
        mem[mem[64]] = 0x75d0be1e00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = _155
        mem[mem[64] + 100] = 0
        mem[mem[64] + 132] = arg1
        mem[mem[64] + 164] = idx
        require ext_code.size(stor2)
        call stor2.0x75d0be1e with:
             gas gas_remaining wei
            args msg.sender, msg.sender, _155, 0, arg1, idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _152 = mem[mem[(2 * ceil32(return_data.size)) + 544]]
        idx = idx + 1
        continue 
    stor15 = 1
}



}
