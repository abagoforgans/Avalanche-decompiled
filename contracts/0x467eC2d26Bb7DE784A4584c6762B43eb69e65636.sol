contract main {




// =====================  Runtime code  =====================


#
#  - sub_796ecb0d(?)
#  - withdrawToken(address arg1, uint256 arg2)
#
const getBalance = eth.balance(this.address)


uint32 stor0;
address owner;
uint256 stor0;
address pendingOwner;
mapping of address sub_cd4497f4;
uint256 feePercentage;

function getFeePercentage() {
    return feePercentage
}

function owner() {
    return address(owner)
}

function sub_cd4497f4(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_cd4497f4[arg1]
}

function pendingOwner() {
    return pendingOwner
}

function _fallback() {
    revert with 0, 'ce01'
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'ce30'
    pendingOwner = arg1
}

function claimOwnership() {
    if pendingOwner != msg.sender:
        revert with 0, 'ce31'
    address(owner) = pendingOwner
    pendingOwner = 0
    emit OwnershipTransferred(address(owner), address(owner));
}

function setFeePercentage(int256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'ce30'
    if arg1 < 0:
        revert with 0, 'ce05'
    feePercentage = arg1
}

function withdrawAllBaseToken() {
    if address(owner) != msg.sender:
        revert with 0, 'ce30'
    call address(owner) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit WithdrawBaseTokenSucceedEvent(address(owner), eth.balance(this.address));
}

function withdrawBaseToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'ce30'
    call address(owner) with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit WithdrawBaseTokenSucceedEvent(address(owner), arg1);
}

function sub_a002363d(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 == address(arg2)
    if address(owner) != msg.sender:
        revert with 0, 'ce30'
    if not address(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The given dexchange address is not valid'
    if uint8(arg1) > 255:
        revert with 0, 'The given dex flag is not valid'
    sub_cd4497f4[arg1 << 248] = address(arg2)
}

function withdrawAllToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'ce30'
    mem[100] = this.address
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if address(owner) != msg.sender:
        revert with 0, 'ce30'
    mem[ceil32(return_data.size) + 132] = address(owner)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit 0x28bdc0e5: address(arg1), address(owner), ext_call.return_data[0]
}



}
