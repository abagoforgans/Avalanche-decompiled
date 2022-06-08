contract main {




// =====================  Runtime code  =====================


#
#  - revokeAllowance(address arg1, address arg2)
#  - recoverERC20(address arg1, uint256 arg2)
#  - swap(uint256 arg1, uint256 arg2, address arg3, address arg4, address arg5)
#  - query(uint256 arg1, address arg2, address arg3)
#
const sub_57ae3a9f(?) = 0xc0253c3cc6aa5ab407b5795a04c28fb063273894

const sub_870d917c(?) = 18

const id = 0x4d060be51d092539068102175593f02416ab6cbf2d2fb243d45f28d414c7da90

const BASIS_POINTS_DIVISOR = 10000

const PRICE_PRECISION = 1000000000000 * 10^18


address owner;
uint256 swapGasEstimate;
array of uint256 name;
address vaultAddress;
mapping of struct tokenDecimals;
mapping of uint8 stor5;

function name() {
    return name[0 len name.length]
}

function swapGasEstimate() {
    return swapGasEstimate
}

function owner() {
    return owner
}

function tokenDecimals(address arg1) {
    require calldata.size - 4 >= 32
    return tokenDecimals[arg1].field_0
}

function isPoolToken(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function vault() {
    return vaultAddress
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

function sub_114e4ce4(?) {
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.allWhitelistedTokensLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[100] = idx
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.0xe468baf0 with:
                gas gas_remaining wei
               args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[0] = address(ext_call.return_data[0])
        tokenDecimals[address(ext_call.return_data[0])].field_0 = uint8(ext_call.return_data[0])
        tokenDecimals[address(ext_call.return_data[0])].field_8 = 0
        mem[32] = 5
        stor5[address(ext_call.return_data[0])] = 1
        idx = idx + 1
        continue 
}



}
