contract main {




// =====================  Runtime code  =====================


#
#  - sub_19cfbcd4(?)
#  - sub_e9fca960(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
address sub_4d1c3621Address;
address sub_2cfbfde4Address;
uint8 sub_ed5792d7;
uint8 sub_b8863115; offset 8
uint256 stor302; offset 1
uint256 sub_1d4f3d4f;
array of address fee;
array of uint256 stor304;
uint256 sub_fac4fcc8;
address routerAddress;
address pairAddress;
address leftSideAddress;
address rightSideAddress;
uint256 MAX_UINT256;
uint8 stor51;

function feeAddresses(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < fee.length
    return address(fee[arg1].field_0)
}

function sub_15151c4b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor304.length
    return sub_15151c4b[uint8(arg1)]
}

function sub_1d4f3d4f(?) payable {
    return sub_1d4f3d4f
}

function sub_2cfbfde4(?) payable {
    return sub_2cfbfde4Address
}

function MAX_UINT256() payable {
    return MAX_UINT256
}

function sub_4d1c3621(?) payable {
    return sub_4d1c3621Address
}

function paused() payable {
    return bool(stor51)
}

function getLeftSide() payable {
    return leftSideAddress
}

function owner() payable {
    return owner
}

function getRouter() payable {
    return routerAddress
}

function sub_b8863115(?) payable {
    return bool(sub_b8863115)
}

function getPair() payable {
    return pairAddress
}

function getRightSide() payable {
    return rightSideAddress
}

function sub_ed5792d7(?) payable {
    return bool(sub_ed5792d7)
}

function sub_fac4fcc8(?) payable {
    return sub_fac4fcc8
}

function _fallback() payable {
    revert
}

function isPair(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (pairAddress == arg1)
}

function isRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (routerAddress == arg1)
}

function sub_5a018816(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return (sub_2cfbfde4Address == address(arg1))
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_05cc9d6c(?) payable {
    staticcall pairAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (sub_fac4fcc8 > ext_call.return_data[0])
}

function sub_1e17ba39(?) payable {
    staticcall pairAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (sub_fac4fcc8 < ext_call.return_data[0])
}

function recoverLostAVAX() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b278110f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < fee.length:
        mem[0] = 303
        if address(fee[idx].field_0) == address(arg1):
            return 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0
}

function sub_2c5ecd4f(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'LiquidityPoolManager: Number of coins to swap to liquidity must be defined'
    sub_1d4f3d4f = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function recoverLostTokens(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_9ebf906a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ext_code.size(address(arg1)):
        if address(arg1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Army: You can only set 0x0 or a contract address as a new implementation'
    sub_4d1c3621Address = address(arg1)
    emit 0xa3e8afe8: sub_4d1c3621Address, address(arg1)
}

function sub_abb47cf0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ext_code.size(address(arg1)):
        if address(arg1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'TroopsManager: You can only set 0x0 or a contract address as a new implementation'
    sub_2cfbfde4Address = address(arg1)
    emit 0x2997fe9e: sub_2cfbfde4Address, address(arg1)
}

function sub_370b1bd5(?) payable {
    require calldata.size - 4 >= 128
    require arg3 == bool(arg3)
    require arg4 == address(arg4)
    if arg1 and arg2 > -1 / arg1:
        revert with 0, 17
    if bool(arg3) != 1:
        return arg1 * arg2 / 100, 0
    if arg1 <= arg1 * arg2 / 100:
        return arg1 * arg2 / 100, 0
    mem[128] = leftSideAddress
    mem[160] = rightSideAddress
    if arg1 < arg1 * arg2 / 100:
        revert with 0, 17
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1 - (arg1 * arg2 / 100)
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 128
    t = 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall address(arg4).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1 - (arg1 * arg2 / 100), Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _24 = mem[192 len 4], Mask(224, 32, arg1 - (arg1 * arg2 / 100)) >> 32
    require mem[192 len 4], Mask(224, 32, arg1 - (arg1 * arg2 / 100)) >> 32 <= test266151307()
    require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg1 - (arg1 * arg2 / 100)) >> 32 + 223
    _25 = mem[mem[192 len 4], Mask(224, 32, arg1 - (arg1 * arg2 / 100)) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg1 - (arg1 * arg2 / 100)) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1 - (arg1 * arg2 / 100)) >> 32 + 192]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1 - (arg1 * arg2 / 100)) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1 - (arg1 * arg2 / 100)) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1 - (arg1 * arg2 / 100)) >> 32 + 192]
    require _24 + (32 * _25) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224 len ceil32(32 * _25)] = mem[_24 + 224 len ceil32(32 * _25)]
    if 1 >= _25:
        revert with 0, 50
    return arg1 * arg2 / 100, mem[ceil32(return_data.size) + 256]
}

function initialize() payable {
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    stor51 = 0
    MAX_UINT256 = -1
    mem[128 len 128] = call.data[calldata.size len 128]
    fee.length = 4
    s = 0
    idx = 128
    while 256 > idx:
        address(fee[s].field_0) = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 4
    while fee.length > idx:
        fee[idx].field_0 = 0
        idx = idx + 1
        continue 
    if 0 >= fee.length:
        revert with 0, 50
    address(fee.field_0) = 0xf78add49af3d855f65501f5e7c903042e45f54cd
    if 1 >= fee.length:
        revert with 0, 50
    address(fee.field_256) = 0x7b99258e8a8fdfad087f73d3fe60c638108fdd2d
    if 2 >= fee.length:
        revert with 0, 50
    address(fee.field_512) = 0x19fedb387ec5211e76c4c31ef26b7bdf296aa2c7
    if 3 >= fee.length:
        revert with 0, 50
    address(fee.field_768) = 0x37d587f9b4c27740584e144a8d32670ecdb26961
    mem[288 len 96] = call.data[calldata.size len 96]
    stor304.length = 3
    s = 0
    idx = 288
    while 384 > idx:
        uint256(stor304.field_0) = mem[idx + 28 len 4] * 256^s or !(test266151307() * 256^s) and uint256(stor304.field_0)
        s = s + (4 * -s + 7 / 32) + (-1 * s * s + 7 / 32) + 4
        idx = idx + 32
        continue 
    idx = 0
    s = sha3(304)
    while idx:
        stor[s] = !(test266151307() * 256^idx) and stor[s]
        idx = idx + (4 * -idx + 7 / 32) + (-1 * idx * idx + 7 / 32) + 4
        s = (idx + 7 / 32) + s
        continue 
    idx = Mask(252, 2, None + 5) + 7 / 32 * Mask(254, 0, None + 5) >> 2
    while stor304.length + 7 / 8 > idx:
        stor304[idx].field_0 = 0
        idx = idx + 1
        continue 
    if 0 >= stor304.length:
        revert with 0, 50
    uint16(stor304.field_0) = 4000
    uint16(stor304.field_16) = 0
    if 1 >= stor304.length:
        revert with 0, 50
    uint16(stor304.field_32) = 3500
    uint16(stor304.field_48) = 0
    if 2 >= stor304.length:
        revert with 0, 50
    uint16(stor304.field_64) = 2000
    uint16(stor304.field_80) = 0
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_e2409218(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == uint32(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length <= 0:
        revert with 0, 'LiquidityPoolManager: Addresses array length must be greater than zero'
    if 1 > !('cd', 36).length:
        revert with 0, 17
    if ('cd', 4).length != ('cd', 36).length + 1:
        revert with 0, 'LiquidityPoolManager: Addresses arrays length mismatch. Remember last address receive the remains.'
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = ('cd', 4).length
    if ('cd', 4).length:
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    fee.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while fee.length > idx:
            fee[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
        while ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 4).length) + 130 > idx:
            address(fee[s].field_0) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while fee.length > idx:
            fee[idx].field_0 = 0
            idx = idx + 1
            continue 
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 4).length) + 130] = ('cd', 36).length
    if ('cd', 36).length:
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 4).length) + 162 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    stor304.length = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while stor304.length + 7 / 8 > idx:
            stor304[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 4).length) + 162
        while ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 162 > idx:
            uint256(stor304.field_0) = mem[idx + 28 len 4] * 256^s or !(test266151307() * 256^s) and uint256(stor304.field_0)
            s = s + (4 * -s + 7 / 32) + (-1 * s * s + 7 / 32) + 4
            idx = idx + 32
            continue 
        idx = floor32(('cd', 36).length) >> 3
        s = sha3(304)
        while idx:
            stor[s] = !(test266151307() * 256^idx) and stor[s]
            idx = idx + (4 * -idx + 7 / 32) + (-1 * idx * idx + 7 / 32) + 4
            s = (idx + 7 / 32) + s
            continue 
        idx = (floor32(('cd', 36).length) >> 3) + Mask(252, 2, None + -(floor32(('cd', 36).length) >> 3) + 5) + 7 / 32 * Mask(254, 0, None + -(floor32(('cd', 36).length) >> 3) + 5) >> 2
        while stor304.length + 7 / 8 > idx:
            stor304[idx].field_0 = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < fee.length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if idx >= fee.length:
            revert with 0, 50
        mem[0] = 303
        address(fee[idx].field_0) = mem[(32 * idx) + 140 len 20]
        if 1 > !idx:
            revert with 0, 17
        if idx + 1 < fee.length:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if idx >= stor304.length:
                revert with 0, 50
            mem[0] = 304
            stor304[0.125 / idx].field_0 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 157 len 4] * 256^(4 * idx % 8) or !(test266151307() * 256^(4 * idx % 8)) and stor304[0.125 / idx].field_0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_0f3988ce(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not sub_4d1c3621Address:
        revert with 0, 'Implementations: Army is not set'
    if sub_4d1c3621Address != msg.sender:
        revert with 0, 'Implementations: Not Army'
    mem[100] = this.address
    staticcall leftSideAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall pairAddress.0x18160ddd with:
            gas gas_remaining wei
    if ext_call.return_data[0] < sub_1d4f3d4f:
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_fac4fcc8 = ext_call.return_data[0]
    else:
        if not sub_ed5792d7:
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_fac4fcc8 = ext_call.return_data[0]
        else:
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                staticcall pairAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_fac4fcc8 = ext_call.return_data[0]
            else:
                if sub_b8863115:
                    staticcall pairAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_fac4fcc8 = ext_call.return_data[0]
                else:
                    if pairAddress == address(arg1):
                        staticcall pairAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        sub_fac4fcc8 = ext_call.return_data[0]
                    else:
                        if routerAddress == address(arg1):
                            staticcall pairAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            sub_fac4fcc8 = ext_call.return_data[0]
                        else:
                            if sub_2cfbfde4Address == address(arg1):
                                staticcall pairAddress.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_fac4fcc8 = ext_call.return_data[0]
                            else:
                                sub_b8863115 = 1
                                mem[(2 * ceil32(return_data.size)) + 100] = this.address
                                staticcall rightSideAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(4 * ceil32(return_data.size)) + 96] = 2
                                mem[(4 * ceil32(return_data.size)) + 128] = leftSideAddress
                                mem[(4 * ceil32(return_data.size)) + 160] = rightSideAddress
                                mem[(4 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 196] = stor302
                                mem[(4 * ceil32(return_data.size)) + 228] = 0
                                mem[(4 * ceil32(return_data.size)) + 260] = 160
                                mem[(4 * ceil32(return_data.size)) + 356] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 128
                                t = (4 * ceil32(return_data.size)) + 388
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 292] = this.address
                                mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args 2 * Mask(256, -1, stor302), 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 196] = this.address
                                staticcall rightSideAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                mem[(6 * ceil32(return_data.size)) + 260] = stor302
                                mem[(6 * ceil32(return_data.size)) + 292] = 0
                                mem[(6 * ceil32(return_data.size)) + 324] = 0
                                mem[(6 * ceil32(return_data.size)) + 356] = 0
                                mem[(6 * ceil32(return_data.size)) + 388] = this.address
                                mem[(6 * ceil32(return_data.size)) + 420] = block.timestamp
                                call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args leftSideAddress, rightSideAddress, 2 * Mask(256, -1, stor302), 0, 0, 0, this.address, block.timestamp
                                mem[(6 * ceil32(return_data.size)) + 192 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit SwapAndLiquify(stor302, ext_call.return_data[0], 0);
                                mem[(7 * ceil32(return_data.size)) + 196] = this.address
                                staticcall pairAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(7 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                idx = 0
                                while idx < fee.length:
                                    if fee.length < 1:
                                        revert with 0, 17
                                    if fee.length - 1 == idx:
                                        if idx >= fee.length:
                                            revert with 0, 50
                                        mem[0] = 303
                                        mem[mem[64] + 4] = address(fee[idx].field_0)
                                        mem[mem[64] + 36] = ext_call.return_data[0]
                                        call pairAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(fee[idx].field_0), ext_call.return_data[0]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _148 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_148] == bool(mem[_148])
                                    else:
                                        if idx >= stor304.length:
                                            revert with 0, 50
                                        if ext_call.return_data[0] and stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor304', 304))[uint8(idx)] > -1 / ext_call.return_data[0]:
                                            revert with 0, 17
                                        if ext_call.return_data[0] < ext_call.return_data[0] * stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor304', 304))[uint8(idx)] / 10000:
                                            revert with 0, 17
                                        if idx >= fee.length:
                                            revert with 0, 50
                                        mem[0] = 303
                                        mem[mem[64] + 4] = address(fee[idx].field_0)
                                        mem[mem[64] + 36] = ext_call.return_data[0] * stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor304', 304))[uint8(idx)] / 10000
                                        call pairAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(fee[idx].field_0), ext_call.return_data[0] * stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor304', 304))[uint8(idx)] / 10000
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _155 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_155] == bool(mem[_155])
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                require ext_code.size(pairAddress)
                                call pairAddress.sync() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                sub_b8863115 = 0
                                staticcall pairAddress.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                _142 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                sub_fac4fcc8 = mem[_142]
    return 1
}

function sub_2f17b5f7(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require calldata.size > 67
    require 100 <= calldata.size
    idx = 36
    s = 96
    while idx < 100:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(cd[4]):
        revert with 0, 'LiquidityPoolManager: Router cannot be undefined'
    routerAddress = address(cd[4])
    staticcall routerAddress.factory() with:
            gas gas_remaining wei
    mem[160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 164] = mem[108 len 20]
    mem[ceil32(return_data.size) + 196] = mem[140 len 20]
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args mem[ceil32(return_data.size) + 164 len 64]
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20]:
        pairAddress = ext_call.return_data[12 len 20]
        leftSideAddress = mem[108 len 20]
        rightSideAddress = mem[140 len 20]
        staticcall ext_call.return_data[12 len 20].0x18160ddd with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_fac4fcc8 = ext_call.return_data[0]
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if cd[100] <= 0:
            revert with 0, 'LiquidityPoolManager: Number of coins to swap to liquidity must be defined'
        sub_1d4f3d4f = cd[100]
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if not ext_code.size(leftSideAddress):
            if leftSideAddress:
                revert with 0, 'Army: You can only set 0x0 or a contract address as a new implementation'
        sub_4d1c3621Address = leftSideAddress
        emit 0xa3e8afe8: sub_4d1c3621Address, leftSideAddress
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        sub_ed5792d7 = 1
        mem[(4 * ceil32(return_data.size)) + 164] = this.address
        mem[(4 * ceil32(return_data.size)) + 196] = routerAddress
        staticcall leftSideAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, routerAddress
        mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(6 * ceil32(return_data.size)) + 196] = routerAddress
        mem[(6 * ceil32(return_data.size)) + 228] = -1
        mem[(6 * ceil32(return_data.size)) + 160] = 68
        mem[(6 * ceil32(return_data.size)) + 192 len 4] = approve(address arg1, uint256 arg2)
        mem[(6 * ceil32(return_data.size)) + 260] = 32
        mem[(6 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(leftSideAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(6 * ceil32(return_data.size)) + 324 len 96] = 0, routerAddress, -1, 0
        mem[(6 * ceil32(return_data.size)) + 392] = 0
        call leftSideAddress with:
           funct Mask(32, 224, 0, routerAddress, -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, routerAddress, -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(6 * ceil32(return_data.size)) + 328] = this.address
            mem[(6 * ceil32(return_data.size)) + 360] = routerAddress
            staticcall rightSideAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, routerAddress
            mem[(6 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[(7 * ceil32(return_data.size)) + 360] = routerAddress
            mem[(7 * ceil32(return_data.size)) + 392] = -1
            mem[(7 * ceil32(return_data.size)) + 324] = 68
            mem[(7 * ceil32(return_data.size)) + 356 len 4] = approve(address arg1, uint256 arg2)
            mem[(7 * ceil32(return_data.size)) + 424] = 32
            mem[(7 * ceil32(return_data.size)) + 456] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(rightSideAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(7 * ceil32(return_data.size)) + 488 len 96] = 0, routerAddress, -1, 0
            mem[(7 * ceil32(return_data.size)) + 556] = 0
            call rightSideAddress with:
               funct Mask(32, 224, 0, routerAddress, -1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, routerAddress, -1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(7 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(7 * ceil32(return_data.size)) + 520] == bool(mem[(7 * ceil32(return_data.size)) + 520])
                    if not mem[(7 * ceil32(return_data.size)) + 520]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(6 * ceil32(return_data.size)) + 324] = return_data.size
            mem[(6 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(6 * ceil32(return_data.size)) + 356] == bool(mem[(6 * ceil32(return_data.size)) + 356])
                if not mem[(6 * ceil32(return_data.size)) + 356]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = this.address
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = routerAddress
            staticcall rightSideAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, routerAddress
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = routerAddress
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = -1
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 68
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4] = approve(address arg1, uint256 arg2)
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(rightSideAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 96] = 0, routerAddress, -1, 0
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
            call rightSideAddress with:
               funct Mask(32, 224, 0, routerAddress, -1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, routerAddress, -1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(10 * ceil32(return_data.size)) + 590 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                    if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                        revert with 0, 
                                    'SafeERC20: ERC20 operation did not succeed',
                                    mem[(10 * ceil32(return_data.size)) + 622 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    else:
        mem[(2 * ceil32(return_data.size)) + 164] = mem[108 len 20]
        mem[(2 * ceil32(return_data.size)) + 196] = mem[140 len 20]
        call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
             gas gas_remaining wei
            args mem[(2 * ceil32(return_data.size)) + 164 len 64]
        mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        pairAddress = ext_call.return_data[12 len 20]
        leftSideAddress = mem[108 len 20]
        rightSideAddress = mem[140 len 20]
        staticcall ext_call.return_data[12 len 20].0x18160ddd with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_fac4fcc8 = ext_call.return_data[0]
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if cd[100] <= 0:
            revert with 0, 'LiquidityPoolManager: Number of coins to swap to liquidity must be defined'
        sub_1d4f3d4f = cd[100]
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if not ext_code.size(leftSideAddress):
            if leftSideAddress:
                revert with 0, 'Army: You can only set 0x0 or a contract address as a new implementation'
        sub_4d1c3621Address = leftSideAddress
        emit 0xa3e8afe8: sub_4d1c3621Address, leftSideAddress
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        sub_ed5792d7 = 1
        mem[(6 * ceil32(return_data.size)) + 164] = this.address
        mem[(6 * ceil32(return_data.size)) + 196] = routerAddress
        staticcall leftSideAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, routerAddress
        mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(7 * ceil32(return_data.size)) + 196] = routerAddress
        mem[(7 * ceil32(return_data.size)) + 228] = -1
        mem[(7 * ceil32(return_data.size)) + 160] = 68
        mem[(7 * ceil32(return_data.size)) + 192 len 4] = approve(address arg1, uint256 arg2)
        mem[(7 * ceil32(return_data.size)) + 260] = 32
        mem[(7 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(leftSideAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(7 * ceil32(return_data.size)) + 324 len 96] = 0, routerAddress, -1, 0
        mem[(7 * ceil32(return_data.size)) + 392] = 0
        call leftSideAddress with:
           funct Mask(32, 224, 0, routerAddress, -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, routerAddress, -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(7 * ceil32(return_data.size)) + 328] = this.address
            mem[(7 * ceil32(return_data.size)) + 360] = routerAddress
            staticcall rightSideAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, routerAddress
            mem[(7 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                mem[(8 * ceil32(return_data.size)) + 324] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 328] = 32
                mem[(8 * ceil32(return_data.size)) + 360] = 54
                mem[(8 * ceil32(return_data.size)) + 392] = 'SafeERC20: approve from non-zero'
                mem[(8 * ceil32(return_data.size)) + 424] = ' to non-zero allowance' << 80
                revert with memory
                  from (8 * ceil32(return_data.size)) + 324
                   len ceil32(return_data.size) + 132
            mem[(8 * ceil32(return_data.size)) + 360] = routerAddress
            mem[(8 * ceil32(return_data.size)) + 392] = -1
            mem[(8 * ceil32(return_data.size)) + 324] = 68
            mem[(8 * ceil32(return_data.size)) + 356 len 4] = approve(address arg1, uint256 arg2)
            mem[(8 * ceil32(return_data.size)) + 424] = 32
            mem[(8 * ceil32(return_data.size)) + 456] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(rightSideAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(8 * ceil32(return_data.size)) + 488 len 96] = 0, routerAddress, -1, 0
            mem[(8 * ceil32(return_data.size)) + 556] = 0
            call rightSideAddress with:
               funct Mask(32, 224, 0, routerAddress, -1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, routerAddress, -1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(8 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(8 * ceil32(return_data.size)) + 520] == bool(mem[(8 * ceil32(return_data.size)) + 520])
                    if not mem[(8 * ceil32(return_data.size)) + 520]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(7 * ceil32(return_data.size)) + 324] = return_data.size
            mem[(7 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(7 * ceil32(return_data.size)) + 356] == bool(mem[(7 * ceil32(return_data.size)) + 356])
                if not mem[(7 * ceil32(return_data.size)) + 356]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = this.address
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = routerAddress
            staticcall rightSideAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, routerAddress
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 32
                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 54
                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: approve from non-zero'
                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ' to non-zero allowance' << 80
                revert with memory
                  from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                   len ceil32(return_data.size) + 132
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = routerAddress
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = -1
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 68
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4] = approve(address arg1, uint256 arg2)
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(rightSideAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 96] = 0, routerAddress, -1, 0
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
            call rightSideAddress with:
               funct Mask(32, 224, 0, routerAddress, -1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, routerAddress, -1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(12 * ceil32(return_data.size)) + 590 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                    if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                        revert with 0, 
                                    'SafeERC20: ERC20 operation did not succeed',
                                    mem[(12 * ceil32(return_data.size)) + 622 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}



}
