contract main {




// =====================  Runtime code  =====================


#
#  - revokeAllowance(address arg1, address arg2)
#  - recoverERC20(address arg1, uint256 arg2)
#  - swap(uint256 arg1, uint256 arg2, address arg3, address arg4, address arg5)
#
const indentifier = '0x43757276656c696b65'


address owner;
uint256 swapGasEstimate;
array of uint256 name;
mapping of uint8 stor3;
address poolAddress;

function name() {
    return name[0 len name.length]
}

function pool() {
    return poolAddress
}

function swapGasEstimate() {
    return swapGasEstimate
}

function owner() {
    return owner
}

function TOKENS_MAP(address arg1) {
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
    emit Recovered(address rg1, uint256 rg2):
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
    if arg2 == arg3:
        return 0
    require ext_code.size(poolAddress)
    staticcall poolAddress.paused() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        return 0
    if not arg1:
        return 0
    if not stor3[address(arg2)]:
        return 0
    if not stor3[address(arg3)]:
        return 0
    require ext_code.size(poolAddress)
    staticcall poolAddress.getTokenIndex(address rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(poolAddress)
    staticcall poolAddress.getTokenIndex(address rg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(poolAddress)
    staticcall poolAddress.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
