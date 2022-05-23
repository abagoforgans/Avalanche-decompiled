contract main {




// =====================  Runtime code  =====================


#
#  - revokeAllowance(address arg1, address arg2)
#  - recoverERC20(address arg1, uint256 arg2)
#
const indentifier = 0xa58605943571627895e9199c4b9bee82981358c9253a80848fa54eae46a75fb4


address owner;
uint256 swapGasEstimate;
array of uint256 name;
mapping of uint8 stor3;
uint32 stor4;
address poolAddress;
uint256 stor4;

function name() {
    return name[0 len name.length]
}

function pool() {
    return address(poolAddress)
}

function swapGasEstimate() {
    return swapGasEstimate
}

function owner() {
    return owner
}

function isPoolToken(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function _fallback() payable {
    revert
}

function setAllowances() {
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setSwapGasEstimate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    swapGasEstimate = arg1
    emit 0xf43f23b7: arg1, this.address
}

function recoverAVAX(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'YakAdapter: Nothing to recover'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Recovered(address arg1, uint256 arg2):
                   arg1,
    emit 0x0: arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a204e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function query(uint256 arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    if not stor3[address(arg2)]:
        return 0
    if not stor3[address(arg3)]:
        return 0
    if arg2 == arg3:
        return 0
    if not arg1:
        return 0
    require ext_code.size(address(poolAddress))
    staticcall address(poolAddress).0x5c975abb with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        return 0
    require ext_code.size(address(poolAddress))
    staticcall address(poolAddress).quotePotentialSwap(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args address(arg2), address(arg3), arg1
    if not ext_call.success:
        return 0
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function swap(uint256 arg1, uint256 arg2, address arg3, address arg4, address arg5) {
    require calldata.size - 4 >= 160
    require ext_code.size(arg3)
    staticcall arg3.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(poolAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        require ext_code.size(address(poolAddress))
        call address(poolAddress).swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args 0, 0, address(arg4), arg1, arg2, address(arg5), block.timestamp
    else:
        require ext_code.size(arg3)
        staticcall arg3.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(poolAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[ceil32(return_data.size) + 196 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), -1, mem[ceil32(return_data.size) + 196 len 28]
        call arg3.mem[ceil32(return_data.size) + 196 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 200 len 64]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, Mask(224, 0, stor4) == bool(0, Mask(224, 0, stor4))
                if not 0, Mask(224, 0, stor4):
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                if not mem[ceil32(return_data.size) + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(address(poolAddress))
        call address(poolAddress).swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args address(arg3), address(arg4), arg1, arg2, address(arg5), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xe2bdbc6b: arg1, arg2, arg3, arg4
}



}
