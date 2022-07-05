contract main {




// =====================  Runtime code  =====================


#
#  - mint(address arg1, uint256 arg2)
#
const sub_916b4120(?) = 0x9e15f045e44ea5a80e7fbc193a35287712cc5569

const sub_a76ebd27(?) = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const sub_bec1057c(?) = 0xe71f20c67e6ddd03e1191481274e8bc9484726c6

const sub_e026a64d(?) = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664

const sub_ebabcce7(?) = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7


address owner;
address nodeAddress;
address joeRouterAddress;
address usdAddress;
address bullAddress;

function bull() payable {
    return bullAddress
}

function joeRouter() payable {
    return joeRouterAddress
}

function owner() payable {
    return owner
}

function usd() payable {
    return usdAddress
}

function node() payable {
    return nodeAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function withdrawNative() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send'
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

function withdrawERC20(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = arg2
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_9ff784a9(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 3
    mem[128] = 0x9e15f045e44ea5a80e7fbc193a35287712cc5569
    mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[192] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    mem[228] = arg1
    require ext_code.size(nodeAddress)
    staticcall nodeAddress.mintPrice(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 228] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 260] = 64
    mem[ceil32(return_data.size) + 292] = 3
    idx = 0
    s = ceil32(return_data.size) + 324
    t = 128
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(joeRouterAddress)
    staticcall joeRouterAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _25 = mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
    require mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 255 < ceil32(return_data.size) + return_data.size + 224
    _26 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
    mem[(2 * ceil32(return_data.size)) + 224] = _26
    require return_data.size >= _25 + (32 * _26) + 32
    mem[(2 * ceil32(return_data.size)) + 256 len 32 * _26] = mem[ceil32(return_data.size) + _25 + 256 len 32 * _26]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _26
    mem[mem[64] + 64 len 32 * _26] = mem[(2 * ceil32(return_data.size)) + 256 len 32 * _26]
    return Array(len=_26, data=mem[mem[64] + 64 len 32 * _26])
}



}
