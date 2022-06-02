contract main {




// =====================  Runtime code  =====================


#
#  - sub_22d1fee6(?)
#  - sub_49b42c9e(?)
#  - _fallback()
#
const _DEADLINE_ = -1

const _ETH_ = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee


address owner;
address _FEE_WALLET_ADDR_;
address _DODO_APPROVE_ADDR_;
address _WETH_Address;
address _WETH_DFYN_Address;
address sub_a50f8286Address;

function _WETH_() {
    return _WETH_Address
}

function _WETH_DFYN_() {
    return _WETH_DFYN_Address
}

function _FEE_WALLET_ADDR_() {
    return _FEE_WALLET_ADDR_
}

function _DODO_APPROVE_ADDR_() {
    return _DODO_APPROVE_ADDR_
}

function owner() {
    return owner
}

function sub_a50f8286(?) {
    return sub_a50f8286Address
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function updateWETH(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'WETH zero address'
    _WETH_Address = arg1
    emit WETHUpdated(arg1);
}

function updateWETHDfyn(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'WETH dfyn zero address'
    _WETH_DFYN_Address = arg1
    emit WETHDfynUpdated(arg1);
}

function updateFeeWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'fee wallet zero address'
    _FEE_WALLET_ADDR_ = arg1
    emit FeeWalletUpdated(arg1);
}

function updateDODOApproveAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'dodo approve zero address'
    _DODO_APPROVE_ADDR_ = arg1
    emit DODOApproveUpdated(arg1);
}

function sub_8b2c8316(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'arken approve zero address'
    sub_a50f8286Address = address(arg1)
    emit 0xbf8272bb: address(arg1)
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

function uniswapV3SwapCallback(int256 arg1, int256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require arg3.length >= 64
    require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
    require cd[(arg3 + 68)] == address(cd[(arg3 + 68)])
    mem[128] = cd[(arg3 + 68)]
    if arg1 > 0:
        mem[196] = msg.sender
        mem[228] = arg1
        mem[160] = 68
        mem[196 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[192 len 4] = unknown_0xa9059cbb(?????)
        mem[260] = 32
        mem[292] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(cd[(arg3 + 36)])):
            revert with 0, 'Address: call to non-contract'
        mem[324 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
        mem[392] = 0
        call address(cd[(arg3 + 36)]) with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if cd[(arg3 + 36)]:
                    revert with memory
                      from 128
                       len cd[(arg3 + 36)]
                revert with 0, 'SafeERC20: low-level call failed'
            if cd[(arg3 + 36)]:
                require cd[(arg3 + 36)] >= 32
                require cd[(arg3 + 68)] == bool(cd[(arg3 + 68)])
                if not cd[(arg3 + 68)]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[356] == bool(mem[356])
                if not mem[356]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        if arg2 > 0:
            mem[196] = msg.sender
            mem[228] = arg2
            mem[160] = 68
            mem[196 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[192 len 4] = unknown_0xa9059cbb(?????)
            mem[260] = 32
            mem[292] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(cd[(arg3 + 68)])):
                revert with 0, 'Address: call to non-contract'
            mem[324 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 0
            mem[392] = 0
            call address(cd[(arg3 + 68)]) with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if cd[(arg3 + 36)]:
                        revert with memory
                          from 128
                           len cd[(arg3 + 36)]
                    revert with 0, 'SafeERC20: low-level call failed'
                if cd[(arg3 + 36)]:
                    require cd[(arg3 + 36)] >= 32
                    require cd[(arg3 + 68)] == bool(cd[(arg3 + 68)])
                    if not cd[(arg3 + 68)]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[356] == bool(mem[356])
                    if not mem[356]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
