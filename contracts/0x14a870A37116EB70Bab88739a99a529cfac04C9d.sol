contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address stor2;
array of uint256 sub_197e3d55;
uint256 stor4;

function sub_197e3d55(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_197e3d55[arg1]
}

function owner() payable {
    return owner
}

function isWhitelistAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    return bool(stor1[address(arg1)])
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

function updatePrice(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(stor2)
    staticcall stor2.0x5e068739 with:
            gas gas_remaining wei
           args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'UniftyMarketWrapper#updatePrice: Access denied.'
    require ext_code.size(stor2)
    call stor2.0xd15e2931 with:
         gas gas_remaining wei
        args msg.sender, arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_11c6ba4f(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == bool(arg2)
    require arg3 == arg3
    require arg4 == arg4
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniftyMarket#updateAmount: Invalid amount'
    require ext_code.size(stor2)
    staticcall stor2.0x5e068739 with:
            gas gas_remaining wei
           args msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'UniftyMarketWrapper#updateAmount: Access denied.'
    require ext_code.size(stor2)
    call stor2.0x75d0be1e with:
         gas gas_remaining wei
        args msg.sender, msg.sender, arg1, bool(arg2), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1628e0f5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
    _11 = mem[ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg1) >> 32 >= 384
    require bool((2 * ceil32(return_data.size)) + 864 <= test266151307())
    mem[64] = (2 * ceil32(return_data.size)) + 864
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg1) >> 32 + 480] == mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg1) >> 32 + 492 len 20]
    mem[(2 * ceil32(return_data.size)) + 480] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg1) >> 32 + 480]
    _14 = mem[ceil32(return_data.size) + _11 + 512]
    require mem[ceil32(return_data.size) + _11 + 512] <= test266151307()
    require ceil32(return_data.size) + _11 + mem[ceil32(return_data.size) + _11 + 512] + 511 < ceil32(return_data.size) + return_data.size + 480
    _15 = mem[ceil32(return_data.size) + _11 + mem[ceil32(return_data.size) + _11 + 512] + 480]
    require mem[ceil32(return_data.size) + _11 + mem[ceil32(return_data.size) + _11 + 512] + 480] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + _11 + mem[ceil32(return_data.size) + _11 + 512] + 480]) + 416 >= 384 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + _11 + mem[ceil32(return_data.size) + _11 + 512] + 480]) + 896 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + _11 + mem[ceil32(return_data.size) + _11 + 512] + 480]) + 896
    mem[(2 * ceil32(return_data.size)) + 864] = _15
    require _11 + _14 + (32 * _15) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _11 + _14 + 512
    t = (2 * ceil32(return_data.size)) + 896
    while idx < _15:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 512] = (2 * ceil32(return_data.size)) + 864
    _46 = mem[ceil32(return_data.size) + _11 + 544]
    require mem[ceil32(return_data.size) + _11 + 544] <= test266151307()
    require ceil32(return_data.size) + _11 + mem[ceil32(return_data.size) + _11 + 544] + 511 < ceil32(return_data.size) + return_data.size + 480
    _48 = mem[ceil32(return_data.size) + _11 + mem[ceil32(return_data.size) + _11 + 544] + 480]
    require mem[ceil32(return_data.size) + _11 + mem[ceil32(return_data.size) + _11 + 544] + 480] <= test266151307()
    _49 = mem[64]
    require mem[64] + (32 * mem[ceil32(return_data.size) + _11 + mem[ceil32(return_data.size) + _11 + 544] + 480]) + 32 >= mem[64] and mem[64] + (32 * mem[ceil32(return_data.size) + _11 + mem[ceil32(return_data.size) + _11 + 544] + 480]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[ceil32(return_data.size) + _11 + mem[ceil32(return_data.size) + _11 + 544] + 480]) + 32
    mem[_49] = mem[ceil32(return_data.size) + _11 + mem[ceil32(return_data.size) + _11 + 544] + 480]
    require _11 + _46 + (32 * _48) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _11 + _46 + 512
    t = _49 + 32
    while idx < _48:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 544] = _49
    _76 = mem[ceil32(return_data.size) + _11 + 576]
    require mem[ceil32(return_data.size) + _11 + 576] <= test266151307()
    require ceil32(return_data.size) + _11 + mem[ceil32(return_data.size) + _11 + 576] + 511 < ceil32(return_data.size) + return_data.size + 480
    _78 = mem[ceil32(return_data.size) + _11 + mem[ceil32(return_data.size) + _11 + 576] + 480]
    require mem[ceil32(return_data.size) + _11 + mem[ceil32(return_data.size) + _11 + 576] + 480] <= test266151307()
    _79 = mem[64]
    require mem[64] + (32 * mem[ceil32(return_data.size) + _11 + mem[ceil32(return_data.size) + _11 + 576] + 480]) + 32 >= mem[64] and mem[64] + (32 * mem[ceil32(return_data.size) + _11 + mem[ceil32(return_data.size) + _11 + 576] + 480]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[ceil32(return_data.size) + _11 + mem[ceil32(return_data.size) + _11 + 576] + 480]) + 32
    mem[_79] = mem[ceil32(return_data.size) + _11 + mem[ceil32(return_data.size) + _11 + 576] + 480]
    require _11 + _76 + (32 * _78) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _11 + _76 + 512
    t = _79 + 32
    while idx < _78:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 576] = _79
    require mem[ceil32(return_data.size) + _11 + 608] == mem[ceil32(return_data.size) + _11 + 620 len 20]
    mem[(2 * ceil32(return_data.size)) + 608] = mem[ceil32(return_data.size) + _11 + 608]
    _104 = mem[ceil32(return_data.size) + _11 + 640]
    require mem[ceil32(return_data.size) + _11 + 640] <= test266151307()
    require ceil32(return_data.size) + _11 + mem[ceil32(return_data.size) + _11 + 640] + 511 < ceil32(return_data.size) + return_data.size + 480
    _105 = mem[ceil32(return_data.size) + _11 + mem[ceil32(return_data.size) + _11 + 640] + 480]
    require mem[ceil32(return_data.size) + _11 + mem[ceil32(return_data.size) + _11 + 640] + 480] <= test266151307()
    _106 = mem[64]
    require mem[64] + (32 * mem[ceil32(return_data.size) + _11 + mem[ceil32(return_data.size) + _11 + 640] + 480]) + 32 >= mem[64] and mem[64] + (32 * mem[ceil32(return_data.size) + _11 + mem[ceil32(return_data.size) + _11 + 640] + 480]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[ceil32(return_data.size) + _11 + mem[ceil32(return_data.size) + _11 + 640] + 480]) + 32
    mem[_106] = _105
    require _11 + _104 + (32 * _105) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _11 + _104 + 512
    t = _106 + 32
    while idx < _105:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 640] = _106
    require mem[ceil32(return_data.size) + _11 + 672] == mem[ceil32(return_data.size) + _11 + 672]
    mem[(2 * ceil32(return_data.size)) + 672] = mem[ceil32(return_data.size) + _11 + 672]
    require mem[ceil32(return_data.size) + _11 + 704] == mem[ceil32(return_data.size) + _11 + 704]
    mem[(2 * ceil32(return_data.size)) + 704] = mem[ceil32(return_data.size) + _11 + 704]
    require mem[ceil32(return_data.size) + _11 + 736] == bool(mem[ceil32(return_data.size) + _11 + 736])
    mem[(2 * ceil32(return_data.size)) + 736] = mem[ceil32(return_data.size) + _11 + 736]
    require mem[ceil32(return_data.size) + _11 + 768] == mem[ceil32(return_data.size) + _11 + 768]
    mem[(2 * ceil32(return_data.size)) + 768] = mem[ceil32(return_data.size) + _11 + 768]
    require mem[ceil32(return_data.size) + _11 + 800] == mem[ceil32(return_data.size) + _11 + 800]
    mem[(2 * ceil32(return_data.size)) + 800] = mem[ceil32(return_data.size) + _11 + 800]
    _130 = mem[ceil32(return_data.size) + _11 + 832]
    require mem[ceil32(return_data.size) + _11 + 832] <= test266151307()
    require ceil32(return_data.size) + _11 + mem[ceil32(return_data.size) + _11 + 832] + 511 < ceil32(return_data.size) + return_data.size + 480
    _131 = mem[ceil32(return_data.size) + _11 + mem[ceil32(return_data.size) + _11 + 832] + 480]
    require mem[ceil32(return_data.size) + _11 + mem[ceil32(return_data.size) + _11 + 832] + 480] <= test266151307()
    _132 = mem[64]
    require mem[64] + (32 * mem[ceil32(return_data.size) + _11 + mem[ceil32(return_data.size) + _11 + 832] + 480]) + 32 >= mem[64] and mem[64] + (32 * mem[ceil32(return_data.size) + _11 + mem[ceil32(return_data.size) + _11 + 832] + 480]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[ceil32(return_data.size) + _11 + mem[ceil32(return_data.size) + _11 + 832] + 480]) + 32
    mem[_132] = _131
    require _11 + _130 + (32 * _131) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _11 + _130 + 512
    t = _132 + 32
    while idx < _131:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 832] = _132
    _150 = mem[mem[(2 * ceil32(return_data.size)) + 544]]
    idx = 0
    while idx < _150:
        require idx < mem[mem[(2 * ceil32(return_data.size)) + 640]]
        _153 = mem[(32 * idx) + mem[(2 * ceil32(return_data.size)) + 640] + 32]
        mem[mem[64]] = 0x75d0be1e00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = _153
        mem[mem[64] + 100] = 0
        mem[mem[64] + 132] = arg1
        mem[mem[64] + 164] = idx
        require ext_code.size(stor2)
        call stor2.0x75d0be1e with:
             gas gas_remaining wei
            args msg.sender, msg.sender, _153, 0, arg1, idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _150 = mem[mem[(2 * ceil32(return_data.size)) + 544]]
        idx = idx + 1
        continue 
}

function sub_3ab2fc84(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 192 >= 160 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 <= test266151307()
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == address(cd[100])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require (32 * ('cd', 132).length) + 224 >= 192 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 224 <= test266151307()
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
    while idx < ('cd', 132).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor4 != 1:
        revert with 0, 'UniftyMarketWrapper: LOCKED'
    stor4 = 0
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'UniftyMarketWrapper#sell: NFT imbalance.'
    if ('cd', 68).length != ('cd', 4).length:
        revert with 0, 'UniftyMarketWrapper#sell: NFT imbalance.'
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).0x313ce567 with:
            gas gas_remaining wei
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 132).length) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[31 len 1] >= 118:
        revert with 0, 'UniftyMarkeWrappert#sell: Given ERC20 got too many decimals.'
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).0x18160ddd with:
            gas gas_remaining wei
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'UniftyMarkeWrappert#sell: Invalid total supply for given ERC20.'
    require 0 < ('cd', 132).length
    if mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] < 1000:
        revert with 0, 'UniftyMarkeWrappert#sell: Invalid collection price.'
    idx = 0
    s = 0
    while idx < ('cd', 68).length:
        require idx < ('cd', 68).length
        _210 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
        if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + s < s:
            revert with 0, 'SafeMath#add: OVERFLOW'
        idx = idx + 1
        s = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + s
        continue 
    require 0 < ('cd', 132).length
    _209 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
    if not mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]:
        if _210 * ('cd', 68).length <= 0:
            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
        require _210 * ('cd', 68).length
        idx = 0
        t = 0
        u = 0
        while idx < ('cd', 4).length:
            if idx + 1 < idx:
                revert with 0, 'SafeMath#add: OVERFLOW'
            require idx < mem[96]
            if idx + 1 != mem[96]:
                _288 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 4).length) + 128]
                _295 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                _303 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                require 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                _314 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256]
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = address(_288)
                mem[mem[64] + 68] = _295
                mem[mem[64] + 100] = _303
                mem[mem[64] + 132] = address(cd[100])
                mem[mem[64] + 164] = 0 / s / 10^18
                mem[mem[64] + 196] = u
                mem[mem[64] + 228] = bool(t)
                mem[mem[64] + 260] = _314
                require ext_code.size(stor2)
                call stor2.0xd90715d0 with:
                     gas gas_remaining wei
                    args msg.sender, address(_288), _295, _303, address(cd[100]), 0 / s / 10^18, u, bool(t), _314
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _344 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_344] == mem[_344]
                idx = idx + 1
                t = t
                u = mem[_344]
                continue 
            _297 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 4).length) + 128]
            _305 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            _316 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            require 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            _321 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(_297)
            mem[mem[64] + 68] = _305
            mem[mem[64] + 100] = _316
            mem[mem[64] + 132] = address(cd[100])
            mem[mem[64] + 164] = 0 / s / 10^18
            mem[mem[64] + 196] = u
            mem[mem[64] + 228] = 1
            mem[mem[64] + 260] = _321
            require ext_code.size(stor2)
            call stor2.0xd90715d0 with:
                 gas gas_remaining wei
                args msg.sender, address(_297), _305, _316, address(cd[100]), 0 / s / 10^18, u, 1, _321
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _346 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_346] == mem[_346]
            idx = idx + 1
            t = 1
            u = mem[_346]
            continue 
        if u:
            require 2 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            _281 = mem[64]
            mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 288]
            _313 = mem[64]
            mem[mem[64]] = 32
            mem[64] = mem[64] + 64
            _324 = mem[_313]
            mem[_281 + 64 len ceil32(mem[_313])] = mem[_313 + 32 len ceil32(mem[_313])]
            mem[_324 + _281 + 64] = 3
            if ceil32(_324) <= _324:
                _357 = sha3(mem[mem[64] len _324 + _281 + -mem[64] + 96])
                stor[sha3(mem[mem[64] len _324 + _281 + -mem[64] + 96])]++
                mem[0] = sha3(mem[mem[64] len _324 + _281 + -mem[64] + 96])
                stor[sha3(mem[0]) + stor[_357]] = u
            else:
                _363 = sha3(mem[mem[64] len _324 + _281 + -mem[64] + 96])
                stor[sha3(mem[mem[64] len _324 + _281 + -mem[64] + 96])]++
                mem[0] = sha3(mem[mem[64] len _324 + _281 + -mem[64] + 96])
                stor[sha3(mem[0]) + stor[_363]] = u
    else:
        if 10^18 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] / mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] != 10^18:
            revert with 0, 'SafeMath#mul: OVERFLOW'
        if _210 * ('cd', 68).length <= 0:
            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
        require _210 * ('cd', 68).length
        idx = 0
        t = 0
        u = 0
        while idx < ('cd', 4).length:
            if idx + 1 < idx:
                revert with 0, 'SafeMath#add: OVERFLOW'
            require idx < mem[96]
            if idx + 1 != mem[96]:
                _285 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 4).length) + 128]
                _291 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                _299 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                require 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                _308 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256]
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = address(_285)
                mem[mem[64] + 68] = _291
                mem[mem[64] + 100] = _299
                mem[mem[64] + 132] = address(cd[100])
                mem[mem[64] + 164] = 10^18 * _209 / s / 10^18
                mem[mem[64] + 196] = u
                mem[mem[64] + 228] = bool(t)
                mem[mem[64] + 260] = _308
                require ext_code.size(stor2)
                call stor2.0xd90715d0 with:
                     gas gas_remaining wei
                    args msg.sender, address(_285), _291, _299, address(cd[100]), 10^18 * _209 / s / 10^18, u, bool(t), _308
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _343 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_343] == mem[_343]
                idx = idx + 1
                t = t
                u = mem[_343]
                continue 
            _293 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 4).length) + 128]
            _301 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            _310 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            require 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            _319 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(_293)
            mem[mem[64] + 68] = _301
            mem[mem[64] + 100] = _310
            mem[mem[64] + 132] = address(cd[100])
            mem[mem[64] + 164] = 10^18 * _209 / s / 10^18
            mem[mem[64] + 196] = u
            mem[mem[64] + 228] = 1
            mem[mem[64] + 260] = _319
            require ext_code.size(stor2)
            call stor2.0xd90715d0 with:
                 gas gas_remaining wei
                args msg.sender, address(_293), _301, _310, address(cd[100]), 10^18 * _209 / s / 10^18, u, 1, _319
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _345 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_345] == mem[_345]
            idx = idx + 1
            t = 1
            u = mem[_345]
            continue 
        if u:
            require 2 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            _278 = mem[64]
            mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 288]
            _307 = mem[64]
            mem[mem[64]] = 32
            mem[64] = mem[64] + 64
            _323 = mem[_307]
            mem[_278 + 64 len ceil32(mem[_307])] = mem[_307 + 32 len ceil32(mem[_307])]
            mem[_323 + _278 + 64] = 3
            if ceil32(_323) <= _323:
                _354 = sha3(mem[mem[64] len _323 + _278 + -mem[64] + 96])
                stor[sha3(mem[mem[64] len _323 + _278 + -mem[64] + 96])]++
                mem[0] = sha3(mem[mem[64] len _323 + _278 + -mem[64] + 96])
                stor[sha3(mem[0]) + stor[_354]] = u
            else:
                _360 = sha3(mem[mem[64] len _323 + _278 + -mem[64] + 96])
                stor[sha3(mem[mem[64] len _323 + _278 + -mem[64] + 96])]++
                mem[0] = sha3(mem[mem[64] len _323 + _278 + -mem[64] + 96])
                stor[sha3(mem[0]) + stor[_360]] = u
    stor4 = 1
}



}
